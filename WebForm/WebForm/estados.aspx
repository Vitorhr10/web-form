<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estados.aspx.cs" Inherits="WebForm.estados" %>

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
            <h1>Cadastro de Estados</h1>
            <br />
            <div style="text-align: right;">
                <a href="cidades.aspx">Cidade</a>
            </div>
            <br />
            <div style="text-align: center; align-content: center; align-items: center; align-self: center;">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="estado" DataSourceID="conexao" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="estado" HeaderText="estado" ReadOnly="True" SortExpression="estado" />
                    <asp:BoundField DataField="descestado" HeaderText="descestado" SortExpression="descestado" />
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Inserir" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br /> <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="estado" DataSourceID="conexao" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="estado" HeaderText="Estado" ReadOnly="True" SortExpression="estado" />
                        <asp:BoundField DataField="descestado" HeaderText="Descrição" SortExpression="descestado" />
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
                <asp:SqlDataSource ID="conexao" runat="server" ConnectionString="<%$ ConnectionStrings:Estado %>" DeleteCommand="DELETE FROM [estados] WHERE [estado] = @estado" InsertCommand="INSERT INTO [estados] ([estado], [descestado]) VALUES (@estado, @descestado)" SelectCommand="SELECT * FROM [estados]" UpdateCommand="UPDATE [estados] SET [descestado] = @descestado WHERE [estado] = @estado">
                    <DeleteParameters>
                        <asp:Parameter Name="estado" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="estado" Type="String" />
                        <asp:Parameter Name="descestado" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="descestado" Type="String" />
                        <asp:Parameter Name="estado" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
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
