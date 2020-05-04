<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient_Reg.aspx.cs" Inherits="UNNOHMS.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 261px;
            left: 391px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 214px;
            left: 391px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 176px;
            left: 391px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 305px;
            left: 296px;
            z-index: 1;
            width: 52px;
        }
        .auto-style5 {
            position: absolute;
            top: 262px;
            left: 296px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 217px;
            left: 296px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 176px;
            left: 296px;
            z-index: 1;
            bottom: 343px;
        }
        .auto-style10 {
            position: absolute;
            top: 106px;
            left: 279px;
            z-index: 1;
            font-size: xx-large;
            height: 43px;
            width: 409px;
            color: #0033CC;
        }
         #body{
            background-color:#33CCFF;
                        
        }
        .auto-style12 {
            position: absolute;
            top: 168px;
            left: 116px;
            z-index: 1;
            width: 103px;
            height: 23px;
        }
        .auto-style13 {
            position: absolute;
            top: 195px;
            left: 99px;
            z-index: 1;
            height: 23px;
        }
        .auto-style14 {
            position: absolute;
            top: 413px;
            left: 210px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 367px;
            left: 540px;
            z-index: 1;
            height: 36px;
            width: 89px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            position: absolute;
            top: 366px;
            left: 367px;
            z-index: 1;
            width: 89px;
            height: 36px;
            font-weight: bold;
            font-size: large;
        }
    </style>
    <script language="javascript" type="text/javascript" src="Pat_reg.js"></script> 
</head>
<body runat="server" id="body">
    <form id="form1" runat="server">
        <div>
        </div>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="PATIENT   REGISTRATION"></asp:Label>
        </strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="NAME"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="AGE"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="LOCATION"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
        <asp:TextBox ID="Txtname" runat="server" CssClass="auto-style3"></asp:TextBox>
        <asp:TextBox ID="Txtloc" runat="server" CssClass="auto-style1"></asp:TextBox>
        <p>
            <asp:TextBox ID="Txtage" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <strong>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="PATIENT ID"></asp:Label>
        </strong>
        <asp:TextBox ID="TxtPatID" runat="server" CssClass="auto-style13"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style14" ></asp:Label>
        <strong>
        <asp:Button ID="btnSave" runat="server" CssClass="auto-style16" OnClick="btnSave_Click" Text="SAVE" />
        <asp:Button ID="Btnexit" runat="server" CssClass="auto-style15" OnClick="Btnexit_Click" Text="EXIT" />
        </strong>
    </form>
</body>
</html>
