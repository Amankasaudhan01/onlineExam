<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="STUDENTSIGNUP.aspx.cs" Inherits="OnlineExam.STUDENTSIGNUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Page</title>
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
<body style="height: 926px">
    <form id="form1" runat="server">
        <div style="margin-right:auto;margin-left:auto;text-align:center;background-color:aqua;">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Examination System"></asp:Label>
            <br />
            <br />
        </div>
        <p>

            &nbsp;</p>
        <p class="logout">

            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" OnClick="LinkButton1_Click">LOG OUT</asp:LinkButton>
        </p>
        <p>

            &nbsp;</p>
                <div style="background-color:mediumaquamarine;border:0.2px solid black; height: 731px; width:809px; margin-left:auto;margin-right:auto;text-align:center">

            <br />
            <br />
            <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" Text="SIGN UP"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="     USERNAME : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="PASSWORD : "></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="EMAIL : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="CLASS : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="ADDRESS : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="PHONE : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="BLOOD GRP : "></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="FATHER NAME : "></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="268px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Have a ID?"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Black" PostBackUrl="~/LOGIN.aspx">Log In</asp:LinkButton>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="blue" Font-Bold="True" Font-Size="Large" Height="40px" Text="Sign Up" Width="289px" OnClick="Button1_Click" />
                </div>
    </form>
    <p></p>
    <p></p>
    
</body>
</html>
