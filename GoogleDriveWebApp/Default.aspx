<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GoogleDriveWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .ContentDiv {
            width: 100%;
            margin: auto 0;
        }

        .innerdiv {
            width: 80%;
            margin: auto 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="ContentDiv">
                    <div class="innerdiv">
                        <asp:GridView ID="gridService" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false" ShowFooter="true" OnRowCommand="gridService_RowCommand">
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="30px" HeaderText="SR.NO">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server"
                                            Text='<%#Eval("Id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="600px" HeaderText="Service">
                                    <ItemTemplate>
                                        <asp:Label ID="lblService222" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="600px" HeaderText="Service">
                                    <ItemTemplate>
                                        <asp:Label ID="lblService22" runat="server" Text='<%#Eval("Size")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="600px" HeaderText="Service">
                                    <ItemTemplate>
                                        <asp:Label ID="lblService2" runat="server" Text='<%#Eval("CreatedTime")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkRemove" CommandName="DownloadFile" runat="server" CommandArgument='<%#  
                                         Eval("Id")%>'
                                            OnClientClick="return confirm('Do you want to delete?')"
                                            Text="Download"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
