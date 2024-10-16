<?php 
session_start();
if(isset($_SESSION['unique_id'])){
    include_once "php/config.php";
    $room_id = mysqli_real_escape_string($conn, $_GET['room_id']);
} else {
    header("location: login.php");
}
?>
<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="chat-area">
      <header>
        <?php 
          $sql = mysqli_query($conn, "SELECT * FROM chatrooms WHERE room_id = {$room_id}");
          if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
          } else {
            header("location: users.php");
          }
        ?>
        <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <img src="php/images/group-icon.png" alt="">
        <div class="details">
          <span><?php echo $row['room_name']; ?></span>
        </div>
      </header>
      <div class="chat-box"></div>
      <form action="#" method="POST" class="typing-area" enctype="multipart/form-data">
        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $room_id; ?>" hidden>
        <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off">
        <input type="file" name="attachment" id="attachment" hidden>
        <label for="attachment" class="attachment-label"><i class="fas fa-paperclip"></i></label>
        <button type="button" class="send-message-btn"><i class="fab fa-telegram-plane"></i></button>
      </form>
    </section>
  </div>

  <script src="javascript/group_chat.js"></script>

</body>
</html>
