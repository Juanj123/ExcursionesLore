<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ExcursionesLorePantoja.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="content/Boostrap/bootstrap.min.css" rel="stylesheet" />
    <link href="scripts/bootstrap/bootstrap.js" rel="stylesheet" type="text/css" />
    <title>Login</title>

    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-image: url(img/Niña.png);
            background-size: cover;
            background-attachment: fixed;
            font-family: 'Times New Roman' 'Times New Roman';
        }

        ul {
            margin-bottom:50px;
        }
        ul li a {
            font-size: 29px;
            color: white;
        }
        ul li a {
            text-decoration:none;
            color: gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8"></div>
                <div class="row" style="margin-top: 120px; box-shadow: -1px 1px 50px 10px black;">
                    <div class="col-md-6">
                        <ul>
                            <li><a href="#">Sing in</a></li>
                            <li><a href="#">/Sing up</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6"></div> 
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </form>
</body>
</html>

