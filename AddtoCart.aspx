<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddtoCart.aspx.cs" Inherits="AddtoCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     
    <form id="form1" runat="server">
    <div runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <table>
                    
                     <tr>
                         <td><asp:Label ID="Label1" runat="server" Text="Category"></asp:Label></td>
                         <td><asp:DropDownList ID="ddlCategory" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList></td>

                     </tr>
                     <caption>
                         <br>
                         <tr>
                             <td>
                                 <asp:Label ID="Label2" runat="server" Text="Product"></asp:Label>
                             </td>
                             <td>
                                 <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                                 </asp:DropDownList>
                             </td>
                             <td><asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></td>
                             <td><asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label></td>
                             <td>
                                  
                                 <asp:Label ID="Quantity" runat="server" Text=""></asp:Label>
                             </td>
                             <td><asp:TextBox ID="txtQunatity" runat="server" OnTextChanged="txtQunatity_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                             <td><asp:Label ID="Label4" runat="server" Text="SubTotal"></asp:Label></td>
                              <td>
                                 <asp:Label ID="lblSubTotal" runat="server" Text=""></asp:Label>
                             </td>
                             <td><asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" /></td>
                              <td>
                                 <asp:Label ID="Label5" runat="server" Text="Total"></asp:Label>

                             </td>
                             <td>
                                 <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>

                             </td>
                         </tr>
                     </caption>
                 </table>
                </ContentTemplate>
                </asp:UpdatePanel>
         <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
    </div>
    </form>
</body>
</html>
