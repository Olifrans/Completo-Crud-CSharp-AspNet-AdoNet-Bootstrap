<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="OlifransWeb.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cnsultar Cliente</title>

    <link href="Pages/Content/bootstrap.css" rel="stylesheet" />
    <link href="Pages/Content/bootstrap.min.css" rel="stylesheet" />
</head>
    <script src="../Pages/Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Pages/Scripts/bootstrap.min.js"></script>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h3 class="well"> Cnsultar Clientes </h3>
                <br />



                <p> <asp:Label ID="lblMensagen"  runat="server"/> </p>
                 <a href="/Default.aspx" class="btn btn-default btn-lg"> Voltar</a>
            </div>
        </div>
    </form>
</body>
</html>
