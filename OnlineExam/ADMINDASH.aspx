<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMINDASH.aspx.cs" Inherits="OnlineExam.ADMINDASH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        .logout{
            margin-left:auto;
            text-align:end;
        }
    </style>
</head>
<body style="height: 778px">
    <form id="form1" runat="server">
       <div style="margin-right:auto;margin-left:auto;text-align:center;background-color:aqua;">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Examination System "></asp:Label>
            <br />
            <br />
        </div>
        <p>

            &nbsp;</p>
        <p class="logout">

            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" OnClick="LinkButton1_Click">LOG OUT</asp:LinkButton>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="black" Text="ADMIN DASHBOARD"></asp:Label>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button1" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="Add Student" Width="263px" OnClick="Button1_Click" />
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button2" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="View Students" Width="263px" OnClick="Button2_Click" />
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button5" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="Set Exam" Width="263px" OnClick="Button5_Click" />
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button6" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="View Questions" Width="263px" OnClick="Button6_Click" />
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button7" runat="server" BackColor="red" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="Log Out" Width="263px" OnClick="Button7_Click" />
        </p>
    </form>
    <p>

            &nbsp;</p>
    <p>

            &nbsp;</p>
    <p>

            &nbsp;</p>
   
</body>
</html>
