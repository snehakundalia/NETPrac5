<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="practical_5a.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;
            Leave Application Form
            <br /> <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Employee Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Leave Date"></asp:Label>
&nbsp;:
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Leave Type"></asp:Label>
&nbsp;:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select Leave Type</asp:ListItem>
                <asp:ListItem>Casual Leave</asp:ListItem>
                <asp:ListItem>Sick Leave</asp:ListItem>
                <asp:ListItem>Personal Leave</asp:ListItem>
                <asp:ListItem>Emergency Leave</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Reason"></asp:Label>
&nbsp;:
            <asp:TextBox ID="TextBox4" runat="server" Rows="4" Columns="30" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Remember Me"></asp:Label>
&nbsp;:
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit Leave Application" Width="248px" OnClick="Button1_Click" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" ForeColor="#ffcc99" style="color: #333333"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
