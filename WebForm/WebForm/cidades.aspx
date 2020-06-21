<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cidades.aspx.cs" Inherits="WebForm.cidades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div style="text-align: center; width: 30%;">
            <h1>Cadastro de Cidades</h1>
            <br />
            <div style="text-align: right;">
                <a href="estados.aspx">Estado</a><br />
&nbsp;</div>
            <div style="text-align: center; align-content: center; align-items: center; align-self: center;">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cidades" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="365px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="cidades" HeaderText="cidades" InsertVisible="False" ReadOnly="True" SortExpression="cidades" />
                        <asp:BoundField DataField="desccidades" HeaderText="Nome da Cidade" SortExpression="desccidades" />
                        <asp:TemplateField HeaderText="Estado" SortExpression="estado">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("estado") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="estados1" DataTextField="descestado" DataValueField="estado" SelectedValue='<%# Bind("estado") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="estados1" runat="server" ConnectionString="<%$ ConnectionStrings:Estado %>" SelectCommand="SELECT * FROM [estados] ORDER BY [descestado]"></asp:SqlDataSource>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <br /> 
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cidades" DataSourceID="SqlDataSource1" EmptyDataText="Não há registros de dados a serem exibidos." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="cidades" HeaderText="Cidades" InsertVisible="False" ReadOnly="True" SortExpression="cidades" />
                        <asp:BoundField DataField="desccidades" HeaderText="Nome" SortExpression="desccidades" />
                        <asp:TemplateField HeaderText="Descrição" SortExpression="descestado">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="estados2" DataTextField="descestado" DataValueField="estado" SelectedValue='<%# Bind("estado") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="estados2" runat="server" ConnectionString="<%$ ConnectionStrings:Estado %>" SelectCommand="SELECT * FROM [estados] ORDER BY [descestado]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("descestado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Estado %>" DeleteCommand="DELETE FROM [cidades] WHERE [cidades] = @cidades" InsertCommand="INSERT INTO [cidades] ([desccidades], [estado]) VALUES (@desccidades, @estado)" SelectCommand="SELECT cidades.cidades, cidades.desccidades, cidades.estado, estados.descestado FROM cidades INNER JOIN estados ON cidades.estado = estados.estado" UpdateCommand="UPDATE [cidades] SET [desccidades] = @desccidades, [estado] = @estado WHERE [cidades] = @cidades">
                    <DeleteParameters>
                        <asp:Parameter Name="cidades" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="desccidades" Type="String" />
                        <asp:Parameter Name="estado" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="desccidades" Type="String" />
                        <asp:Parameter Name="estado" Type="String" />
                        <asp:Parameter Name="cidades" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <br /> <br /> 
            <div style="text-align: right;">
                <a href="default.aspx">&lt;&lt; voltar</a>
            </div>
            <br />
        </div>
        </center>
    </form>
</body>
</html>
