<%-- 
    Document   : PRIMERJSP
    Created on : Mar 25, 2023, 6:42:06 PM
    Author     : joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Avance 1</title>
  
</head>
<body>
  <div class="wrapper">
    <header>Inicia sesion</header>
    <form class="form-signin" id="loginForm" action="NewServlet" method="post">
     
      <div class="field email">
        <div class="input-area">
            <input type="text" placeholder="email" name="email">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Correo no valido</div>
      </div>
      <div class="field password">
        <div class="input-area" <a href="index.jsp"></a>
            <input type="password" placeholder="password" name="password">
          <i class="icon fas fa-lock"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Contraseña no valida</div>
      </div>
      <div class="pass-txt"><a href="#"> Olvidaste tu contraseña?</a></div>
      <input type="submit" value="Iniciar Sesion" >
    </form>
    <div class="sign-txt">No tienes cuenta? <a href="registro.jsp">Inicia ahora!</a></div>
  </div>

  <script src="script.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
    <link rel="stylesheet" href="style.css">
</body>
</html>
