<?php
require 'vendor/autoload.php';  // Make sure path to autoload is correct
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

if(isset($_POST['export'])) {
    include("../connection.php");

    $spreadsheet = new Spreadsheet();
    $sheetIndex = 0;

    $tables = [
        "guarantee" => "gstatus",
        "medical" => "mstatus",
        "burial" => "bstatus",
        "financial" => "fstatus",
        "educational" => "estatus"
    ];

    // Define styles
    $headerStyle = [
        'font' => ['bold' => true, 'color' => ['argb' => 'FFFFFFFF']],
        'fill' => [
            'fillType' => Fill::FILL_SOLID,
            'startColor' => ['argb' => 'FF4F81BD']
        ],
        'alignment' => [
            'horizontal' => Alignment::HORIZONTAL_CENTER,
            'vertical' => Alignment::VERTICAL_CENTER,
        ],
        'borders' => [
            'allBorders' => [
                'borderStyle' => Border::BORDER_THIN,
                'color' => ['argb' => 'FF000000'],
            ],
        ],
    ];

    $dataStyle = [
        'borders' => [
            'allBorders' => [
                'borderStyle' => Border::BORDER_THIN,
                'color' => ['argb' => 'FF000000'],
            ],
        ],
        'alignment' => [
            'horizontal' => Alignment::HORIZONTAL_CENTER,
            'vertical' => Alignment::VERTICAL_CENTER,
        ],
    ];

    foreach ($tables as $table => $status_column) {
        $sql = "SELECT id, amount, datecreated FROM $table WHERE $status_column = 'Approved'";
        $result = $con->query($sql);

        // Calculate the sum of the amounts
        $sum_sql = "SELECT SUM(amount) as total_amount FROM $table WHERE $status_column = 'Approved'";
        $sum_result = $con->query($sum_sql);
        $total_amount = ($sum_result->num_rows > 0) ? $sum_result->fetch_assoc()['total_amount'] : 0;

        // Create a new sheet for each service
        if ($sheetIndex > 0) {
            $spreadsheet->createSheet();
        }
        $spreadsheet->setActiveSheetIndex($sheetIndex);
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle(ucfirst($table));

        // Write table headers
        $sheet->setCellValue('A1', ucfirst($table));
        $sheet->mergeCells('A1:C1');
        $sheet->setCellValue('A2', 'ID');
        $sheet->setCellValue('B2', 'Amount');

        // Set column widths
        $sheet->getColumnDimension('A')->setWidth(13);
        $sheet->getColumnDimension('B')->setWidth(13);
        $sheet->getColumnDimension('C')->setWidth(13);

        // Apply header styles
        $sheet->getStyle('A1:C1')->applyFromArray($headerStyle);
        $sheet->getStyle('A2:C2')->applyFromArray($headerStyle);

        // Write table data
        if ($result->num_rows > 0) {
            $rowIndex = 3;
            while ($row = $result->fetch_assoc()) {
                $sheet->setCellValue('A' . $rowIndex, $row['id']);
                $sheet->setCellValue('B' . $rowIndex, $row['amount']);
                $rowIndex++;
            }
        } else {
            $sheet->setCellValue('A3', 'No data available');
            $sheet->mergeCells('A3:C3');
            $sheet->getStyle('A3')->applyFromArray($dataStyle);
        }

        // Add total amount row
        $sheet->setCellValue('A' . ($rowIndex + 1), 'Total Amount');
        $sheet->setCellValue('B' . ($rowIndex + 1), $total_amount);

        // Apply data styles
        $sheet->getStyle('A3:C' . ($rowIndex))->applyFromArray($dataStyle);
        $sheet->getStyle('A' . ($rowIndex + 1) . ':C' . ($rowIndex + 1))->applyFromArray($dataStyle);
        $sheet->getStyle('B' . ($rowIndex + 1))->getFont()->setBold(true);
        $sheet->getStyle('C' . ($rowIndex + 1))->getFont()->setBold(true);

        $sheetIndex++;
    }

    $con->close();

    // Export the spreadsheet
    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment;filename="OfficeHeadReport.xls"');
    header('Cache-Control: max-age=0');

    $writer = new Xls($spreadsheet);
    $writer->save('php://output');
    exit;
}
?>
