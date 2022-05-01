<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebApplicationCrud.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>Rollno:</td>
                    <td><asp:TextBox ID="txtrollno" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>City:</td>
                    <td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td>Age:</td>
                    <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
                </tr>
                    <tr>
                    <td></td>
                    <td><asp:Button ID="btninsert" runat="server" Text="Submit" OnClick="btninsert_Click" ></asp:Button></td>
                 </tr>
                <tr>
                    <td></td>
                    <td><asp:GridView ID="grd" runat="server"></asp:GridView></td>
                    

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
