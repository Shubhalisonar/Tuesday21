<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="Tuesday21.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div style="width: 807px">
            <asp:Image ID="Image1" runat="server" Height="65px" ImageUrl="~/images/alogo.png" Width="577px" />
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" ValidateRequestMode="Enabled">Home</asp:HyperLink>
        &nbsp; |&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
        <table class="auto-style1">
            <tr>
                <td rowspan="4">Mobile<br />
                    Laptop<br />
                    Camera<br />
                    Samart Watch<br />
                    <br />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" style="width: 14px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
