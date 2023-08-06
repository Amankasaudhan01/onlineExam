<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PROFILE.aspx.cs" Inherits="OnlineExam.PROFILE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Profile</title>
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Examination System"></asp:Label>
            <br />
            <br />
        </div>
        <p>

            &nbsp;</p>
        <p class="logout">

            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" OnClick="LinkButton1_Click">LOG OUT</asp:LinkButton>
        </p>
         <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#336600" Text="YOUR PROFILE"></asp:Label>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="     USER ID : "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="     USERNAME : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="PASSWORD : "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="EMAIL : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="CLASS : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="ADDRESS : "></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="PHONE : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
                    <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="BLOOD GRP : "></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="268px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Button ID="Button5" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="Select" Width="263px" OnClick="Button5_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="aqua" BorderColor="Black" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Height="41px" Text="Update" Width="263px" OnClick="Button3_Click" />
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="* Data Updated Successfully" Visible="False"></asp:Label>
        </p>
    </form>
     <p></p>
    <p></p>

</body>
</html>
