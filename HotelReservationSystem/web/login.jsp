<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/styleHRS.css" type="text/css" rel="stylesheet">
        <script language="JavaScript" type="text/javascript">
            function checkinformation()
            {
                if(document.login.username.value=="")
                {
                    alert("please input your username!");
                    login.username.focus();
                    return false;
                }
                if(document.login.password.value=="")
                {
                    alert("please input your password!");
                    login.password.focus();
                    return false;
                }
                document.login.submit();
            }
        </script>
    </head>
    <body>
        <div align="center">
            <div id="widthdiv">
                <fieldset><legend>Login your account</legend>
                    <table width="200" border="0">
                        <form  name="login" action="loginserv" method="post">
                            <tr>
                                <td id="label">username:</td>
                                <td><label>
                                        <input type="text" name="username" id="username">
                                    </label></td>
                            </tr>
                            <tr>
                                <td id="label">password:</td>
                                <td><label>
                                        <input type="password" name="password" id="password">
                                    </label></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><label>
                                        <input type="hidden" name="action" value="login">
                                        <input type="submit" name="submit" id="submit" value="submit" onclick="return checkinformation()">
                                    </label>
                                    <input type="button" name="back" id="back" value="back" onclick="window.location.href='index.jsp'"></td>
                            </tr>
                        </form>
                    </table></fieldset></div>
        </div>

    </body>
</html>
