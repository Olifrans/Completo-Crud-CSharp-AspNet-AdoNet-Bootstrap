using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;


namespace OlifransWeb.Pages
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PessoaDAL d = new PessoaDAL();

                gridClientes.DataSource = d.Listar(); //Popular a grid
                gridClientes.DataBind(); //Exibi o conteódo da grid

            }
            catch (Exception ex)
            {
                lblMensagen.Text = ex.Message;
            }

        }
    }
}