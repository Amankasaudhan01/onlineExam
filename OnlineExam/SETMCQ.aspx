<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SETMCQ.aspx.cs" Inherits="OnlineExam.SETMCQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Exam</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        .parent{
            height: 388px;
        }
        .child{
            width: 48%;
            float: left;
            padding: 20px;
            height: 343px;
        }
        .logout{
            margin-left:auto;
            text-align:end;
        }
        
    </style>
</head>
<body style="height: 720px">
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
        <p>

            &nbsp;</p>
       
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="black" Text="ADD QUESTION"></asp:Label>
        </p>
        <p>

            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <div class="parent">
        <div class="child">

            <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Question "></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Option 1"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Option 2"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Option 3"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Option 4"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="aqua" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="40px" Text="Add Question" Width="150px" OnClick="Button1_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="aqua" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="40px" Text="Select" Width="150px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="aqua" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="40px" Text="Update" Width="150px" OnClick="Button3_Click" />
&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="aqua" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="40px" Text="Clear" Width="150px" OnClick="Button4_Click" />

        </div>

        <div class="child">

            <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Question Tag"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Question Number"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" Width="370px"></asp:TextBox>
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button5" runat="server" BackColor="aqua" Font-Bold="True" Font-Names="Arial" Font-Size="Small" Height="40px" Text="Set Exam" Width="150px" OnClick="Button5_Click" />
            <br />

        </div>
        </div>
        <p>

            &nbsp;</p>
        <p>

            &nbsp;</p>
        <p>

            &nbsp;</p>
    </form>

   
</body>
</html>
