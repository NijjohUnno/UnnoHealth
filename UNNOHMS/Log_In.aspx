<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log_In.aspx.cs" Inherits="UNNOHMS.Log_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 251px;
            left: 422px;
            z-index: 1;
            width: 149px;
        }
        .auto-style3 {
            position: absolute;
            top: 282px;
            left: 510px;
            z-index: 1;
            width: 114px;
            height: 36px;
            font-weight: bold;
        }
        .auto-style4 {
            position: absolute;
            top: 205px;
            left: 422px;
            z-index: 1;
            width: 195px;
            height: 25px;
        }
        .auto-style5 {
            position: absolute;
            top: 162px;
            left: 423px;
            z-index: 1;
            width: 195px;
            height: 25px;
        }
        .auto-style6 {
            position: absolute;
            top: 208px;
            left: 337px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 169px;
            left: 338px;
            z-index: 1;
            height: 14px;
            width: 59px;
        } 
        #body{
            background-color:#33CCFF;
                        
        }  
           
      
        .auto-style9 {
            position: absolute;
            top: 164px;
            left: 146px;
            z-index: 1;
            width: 178px;
            height: 156px;
        }
        .auto-style10 {
            position: absolute;
            top: 65px;
            left: 162px;
            z-index: 1;
            font-size: xx-large;
            height: 75px;
            width: 463px;
        }
        .auto-style11 {
            text-align: center;
            
        }
       
        .auto-style12 {
            position: absolute;
            top: 208px;
            left: 635px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 168px;
            left: 636px;
            z-index: 1;
        }
       
        .auto-style14 {
            position: absolute;
            top: 359px;
            left: 417px;
            z-index: 1;
            width: 321px;
        }
       
        </style>
</head>
<body runat="server" id="body">   
  
    <form id="form1" runat="server" >

        
       
        <div class="auto-style11">
       
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" EnableViewState="False" Text="Invalid Credentials"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Username"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Password"></asp:Label>
        <asp:TextBox ID="Txtuser1" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:TextBox ID="TxtPass" runat="server" CssClass="auto-style4" TextMode="Password" ></asp:TextBox>
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="LOG_IN" />
       
        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/computer-desk-laptop-stethoscope-48604.jpg" />
       
            <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text="UNNOH HEALTH MANAGEMENT SYSTEM" ForeColor="#0000CC"></asp:Label>
       
        </strong>
       
        </div>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtuser1" CssClass="auto-style13" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPass" CssClass="auto-style12" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
       
        <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="CANNOT CONNECT TO DATABASE" ></asp:Label>
       
    </form>
</body>
</html>
