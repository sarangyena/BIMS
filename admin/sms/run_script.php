<?php
exec('node run_script.js', $output, $return_var);
if ($return_var == 0) {
    echo json_encode(["message" => "Node script executed successfully."]);
} else {
    echo json_encode(["message" => "Failed to execute Node script."]);
}
?>
