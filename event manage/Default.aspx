<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="event_manage._Default" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SDM Hall</title>
    <style>
        * {
            padding: 0px;
            margin: 0px;
            box-sizing: border-box;
            color: azure;
        }

        body {
            background-color: rgb(26, 25, 25);
        }

        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100vw;
            height: 100vh;
        }

        .contain {
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            align-items: center;
            border: 2px solid white;
            height: 60%;
            width: 30%;
            border-radius: 25px;
            padding: 20px;
            transition: all 0.3s ease;
        }

        .head {
            font-size: 40px;
            font-family: monospace;
            font-weight: 500;
            text-align: center;
            margin-bottom: 30px;
        }

        .field {
            display: flex;
            flex-direction: column;
            gap: 20px;
            align-items: center;
            width: 100%;
        }

        input[type="date"] {
            border-radius: 25px;
            border: none;
            height: 40px;
            width: 80%;
            text-align: center;
            border: 1px solid rgb(46, 40, 40);
        }

        .butt{
            height: 40px;
            width: 100px;
            border-radius: 25px;
            border: 1px solid rgb(46, 40, 40);
            background-color: rgb(83, 144, 202);
            transition: all 0.3s ease;
        }

        .button {
            display: flex;
            gap: 20px;
            margin-top: 20px;
        }

        .contain:hover {
            box-shadow: 10px 10px 15px rgba(143, 236, 243, 0.842), -10px -10px 15px rgb(9, 248, 88);
        }

        .butt:hover {
            background-image: linear-gradient(rgb(52, 166, 241), rgb(130, 212, 245));
            height: 45px;
        }

        input[type="date"]:hover {
            height: 45px;
        }

        .text {
            display: flex;
            font-family: monospace;
            font-size: x-large;
        }

        a {
            text-decoration: none;
        }

        .inn {
            color: black;
        }

        @media (max-width: 768px) {
            .contain {
                width: 80%;
                height: auto;
                padding: 10px;
            }

            .head {
                font-size: 30px;
            }

            button {
                width: 80px;
            }

            input[type="date"] {
                width: 90%;
            }
        }

        @media (max-width: 480px) {
            .contain {
                width: 90%;
                padding: 10px;
            }

            .head {
                font-size: 25px;
            }

            input[type="date"] {
                width: 100%;
            }

            button {
                width: 70px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="contain">
                <div class="head">Check Availability</div>
                <div class="field">
                    <asp:TextBox ID="txtDate" runat="server" CssClass="inn" TextMode="Date"></asp:TextBox>
                </div>
                <div class="button">
                    <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" class="butt"/>
                </div>
            </div>
        </div>
    </form>
</body>

</html>
