<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="Student_Registration1.Change_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function validate() {
            var Old_Password = document.getElementById("TextBox1").value;
            var New_Password = document.getElementById("TextBox2").value;
            var Confirm_Password = document.getElementById("TextBox3").value;
            if (Old_Password == '') {
                confirm("enter Old_Password");
                return false;
            }
            if (New_Password =='')
            {
                confirm("enter New_Password");
                return false;
            }
            if (Confirm_Password == '') {
                confirm("enter Confirm_Password");
                return false;
            }
        }

    </script>
    <style type="text/css">
        .change{
            padding:2px;
            text-align:center;
            background-color:#00ff90;
            
        }
        .auto-style1 {
            width: 285px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="change" style="color:#0c05a8">
            <b>Change Password</b>
        </div>

        <table align="center" class="auto-style1">
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#006600" Text="Old Password"></asp:Label>
                </td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" ForeColor="#006600"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="New Password"></asp:Label>
                </td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" ForeColor="#000066"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#00CC99" Text="Confirm Password"></asp:Label>
                </td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" ForeColor="#00FF99"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#FF0066"  Text="UPDATE"  OnClientClick="return validate();" OnClick="Button1_Click" />
                    <br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="Button2" runat="server"  Text="Go To Log In Page" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
