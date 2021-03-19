<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="OlifransWeb.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consultar Cliente</title>

    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />

    <%-- <link href="Content/bootstrap.css" rel="stylesheet" />--%>
</head>
    
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/jquery-3.0.0.min.js"></script>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h3 class="well"> Consultar Clientes </h3>

                <asp:GridView ID="gridClientes" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#ccffcc">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Código" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                        <asp:BoundField DataField="Email" HeaderText="E-Mail" />
                    </Columns>
                     <RowStyle CssClass="cursor-Pointer" />                   
                </asp:GridView>


                <p> <asp:Label ID="lblMensagen"  runat="server"/> </p>
                 <a href="/Default.aspx" class="btn btn-default btn-lg"> Voltar</a>
            </div>
        </div>
    </form>
</body>
</html>
