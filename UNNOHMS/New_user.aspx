<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_user.aspx.cs" Inherits="UNNOHMS.New_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
            color: #0000FF;
            position: absolute;
            top: 89px;
            left: 312px;
            z-index: 1;
            width: 238px;
            height: 24px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            position: absolute;
            top: 244px;
            left: 311px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 208px;
            left: 311px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 173px;
            left: 312px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 138px;
            left: 312px;
            z-index: 1;
            width: 70px;
        }
        .auto-style8 {
            position: absolute;
            top: 207px;
            left: 408px;
            z-index: 1;
            width: 159px;
        }
        .auto-style9 {
            position: absolute;
            top: 169px;
            left: 407px;
            z-index: 1;
            width: 160px;
        }
        .auto-style10 {
            position: absolute;
            top: 136px;
            left: 405px;
            z-index: 1;
            width: 162px;
        }
        .auto-style11 {
            width: 120px;
            height: 127px;
            position: absolute;
            top: 247px;
            left: 406px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 396px;
            left: 532px;
            z-index: 1;
            width: 130px;
            height: 43px;
        }
        .auto-style13 {
            position: absolute;
            top: 397px;
            left: 316px;
            z-index: 1;
            width: 130px;
            height: 44px;
            right: 659px;
        }
        .auto-style14 {
            position: absolute;
            top: 207px;
            left: 611px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 481px;
            left: 232px;
            z-index: 1;
            width: 222px;
        }
        #body{
            background-color:#33CCFF;
                        
        }
        </style>
</head>
<body runat="server" id="body">
    <form id="form1" runat="server">
       
        <div class="auto-style2">
            <strong><span class="auto-style1">CREATE NEW USER</span></strong></div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Left="120" Text="Username"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Password"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Designation"></asp:Label>
        
            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Confirm Pass"></asp:Label>
         <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="TxtPass"
                ControlToValidate="TxtPass1" runat="server" CssClass="auto-style14" />
        
        <asp:TextBox ID="TxtUsername" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:TextBox ID="TxtPass" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:Button ID="nusavebtn" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="SAVE" />
        
            <asp:TextBox ID="TxtPass1" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:Button ID="nulgbtn" runat="server" CssClass="auto-style12" Text="LOG OUT" OnClick="nulgbtn_Click" />
        
        <asp:RadioButtonList ID="Rbndes" runat="server" CssClass="auto-style11">
            <asp:ListItem Value="Doctor">Doctor</asp:ListItem>
            <asp:ListItem>Nurse</asp:ListItem>
            <asp:ListItem>Lab Tech</asp:ListItem>
            <asp:ListItem>Pharm Tech</asp:ListItem>
            <asp:ListItem>Receptionist</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style15" ForeColor="Red" ></asp:Label>
    </form>

</body>
</html>
