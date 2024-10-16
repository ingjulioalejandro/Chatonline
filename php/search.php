<?php
session_start();
include_once "config.php";
$outgoing_id = $_SESSION['unique_id'];
$searchTerm = mysqli_real_escape_string($conn, $_POST['searchTerm']);

// Buscar tanto usuarios como grupos
$sql = "SELECT * FROM users WHERE NOT unique_id = {$outgoing_id} AND (fname LIKE '%{$searchTerm}%' OR lname LIKE '%{$searchTerm}%')
        UNION
        SELECT * FROM chatrooms WHERE room_name LIKE '%{$searchTerm}%'";

$output = "";
$query = mysqli_query($conn, $sql);

if (mysqli_num_rows($query) > 0) {
    while ($row = mysqli_fetch_assoc($query)) {
        if (isset($row['fname'])) { // Usuarios
            $output .= '<a href="chat.php?user_id='. $row['unique_id'] .'">
                            <div class="content">
                                <img src="php/images/'. $row['img'] .'" alt="">
                                <div class="details">
                                    <span>'. $row['fname'] . " " . $row['lname'] .'</span>
                                </div>
                            </div>
                        </a>';
        } elseif (isset($row['room_name'])) { // Grupos
            $output .= '<a href="group_chat.php?room_id='. $row['room_id'] .'">
                            <div class="content">
                                <img src="php/images/group-icon.png" alt="">
                                <div class="details">
                                    <span>'. $row['room_name'] .'</span>
                                </div>
                            </div>
                        </a>';
        }
    }
} else {
    $output .= 'No users or groups found';
}

echo $output;
?>
