<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="./css/profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
  </head>
  <body>
    <div class="profile-card">
      <div class="top-section">
        <i class="message fas fa-envelope"></i>
        <i class="notif fas fa-bell"></i>
        <div class="pic">
          <img src="./image/index/defaultAvatar.jpg" alt=""/>
        </div>
        <div class="name">${user.userName}</div>
        <div class="tag">${user.email}</div>
      </div>

      <div class="bottom-section">
        <div class="social-media">
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fas fa-link"></i></a>
        </div>
        <form action="home" method ="post">
            <input type="submit" value="Back to home page"/>
        </form>
      </div>
    </div>
  </body>
</html>