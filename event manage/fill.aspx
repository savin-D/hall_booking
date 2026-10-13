<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fill.aspx.vb" Inherits="event_manage.fill" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Your Hall</title>
    <style>
        /* Global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: rgb(26, 25, 25);
            color: rgb(255, 255, 255);
            font-family: Arial, sans-serif;
        }

        .main {
            height: 100vh;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .contain {
            width: 90%;
            max-width: 500px;
            background-color: rgb(40, 40, 40);
            border: 2px solid rgb(255, 255, 255);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            border-radius: 25px;
            padding: 30px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
            transition: box-shadow 0.3s ease;
        }

        .contain:hover {
            box-shadow: 0px 10px 30px rgba(226, 75, 64, 0.8), 0px -10px 30px rgba(218, 169, 34, 0.8);
        }

        .title {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
        }

        .t1 {
            border-radius: 25px;
            border: none;
            height: 40px;
            width: 100%;
            max-width: 300px;
            text-align: center;
            border: 1px solid rgb(46, 40, 40);
            font-size: 1rem;
            padding: 5px 10px;
            transition: height 0.3s ease, box-shadow 0.3s ease;
        }

        .t1:hover {
            height: 45px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.5);
        }

        .rad {
            display: flex;
            justify-content: space-around;
            width: 100%;
            max-width: 300px;
        }

        .rad label {
            font-size: 1rem;
        }

        #btnSubmit {
            height: 50px;
            width: 150px;
            border-radius: 25px;
            border: 1px solid rgb(46, 40, 40);
            background-color: rgb(83, 144, 202);
            color: white;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        #btnSubmit:hover {
            background-image: linear-gradient(rgb(52, 166, 241), rgb(130, 212, 245));
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="contain">
                <div class="top">
                    <p class="title">SDM Degree College Hall Booking</p>
                </div>
                <div>
                    <asp:TextBox ID="txtName" CssClass="t1" runat="server" Placeholder="Enter your name"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtProgramName" CssClass="t1" runat="server" Placeholder="Enter program name"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtDepartment" CssClass="t1" runat="server" Placeholder="Enter your department"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtDate" CssClass="t1" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="rad">
                    <div>
                        <asp:RadioButton ID="rbMorning" runat="server" GroupName="TimeSlot" Text="Morning" Checked="true" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rbEvening" runat="server" GroupName="TimeSlot" Text="Evening" />
                    </div>
                    <div>
                        <asp:RadioButton ID="rbFullDay" runat="server" GroupName="TimeSlot" Text="Full Day" />
                    </div>
                </div>
                <div>
                    <asp:Button ID="btnSubmit" CssClass="t1" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [event]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>

