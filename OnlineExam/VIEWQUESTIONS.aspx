<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIEWQUESTIONS.aspx.cs" Inherits="OnlineExam.VIEWQUESTIONS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Questions
    </title>
    <style>
     *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        #form1 {
            height: 800px;
        }
        .logout{
            margin-left:auto;
            text-align:end;
        }
        </style>
</head>
<body style="height: 824px">
    <form id="form1" runat="server">
        <div style="margin-right:auto;margin-left:auto;text-align:center;background-color:lightblue;">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Examination System Management"></asp:Label>
            <br />
            <br />
        </div>
        <p>

            &nbsp;</p>
        <p class="logout">

            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" OnClick="LinkButton1_Click">LOG OUT</asp:LinkButton>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#336600" Text="CHECK YOUR QUESTIONS"></asp:Label>
        </p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        
            <div style="height: 385px; position:absolute;left:20%;width:60%;padding:0;margin:0";>
            <asp:GridView ID="GridView1" runat="server" Height="370px" Width="96%" HorizontalAlign="Center" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                </div>
          <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
        <p style="margin-right:auto;margin-left:auto;text-align:center">
            &nbsp;</p>
    </form>
     <footer>
        <p style="margin-left:auto;margin-right:auto;text-align:center;background-color:aquamarine">
            <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Black" Text="@Created By Himanshu Sharma😎"></asp:Label>
        </p>
    </footer>
</body>
</html>
