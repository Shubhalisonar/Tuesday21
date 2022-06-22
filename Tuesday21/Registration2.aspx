﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration2.aspx.cs" Inherits="Tuesday21.Registration2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>User Sign Up</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Enter First Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="First name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Last Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Last name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Email Id</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email id is required " ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email id is not proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Contact Number</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Text not allowed in phone no" ForeColor="Red" ClientValidationFunction="check">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Address</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="38px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Age</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Age should be between 18-60" ForeColor="Red" MaximumValue="60" MinimumValue="18">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Password</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Confrom Password</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Password does not match" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </form>
    <script type ="text/javascript">
        function check(sender, data) {
            if (isNaN(data.Value)) {
                data.IsValid = false;
            }
            else {
                data.IsValid = true;
            }
        }

    </script>
</body>
</html>
