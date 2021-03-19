using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OlifransWeb
{
    public partial class Default : System.Web.UI.Page
    {
        private const string V0 = "0";
        private const string V1 = "1";
        private const string V2 = "2";
        private const string V3 = "3";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAcessar(object sender, EventArgs e)
        {
            //Chamar os links ou valores da Drop Dow List:
            string opcao = ddlMenu.SelectedValue;

            switch (opcao)
            {
                case V0:
                    lblMensagen.Text = "Selecione uma opção válida";
                    break;


                case V1:
                    Response.Redirect("/Pages/Cadastro.aspx");
                    break;

                case V2:
                    Response.Redirect("/Pages/Consulta.aspx");
                    break;

                case V3:
                    Response.Redirect("/Pages/Detalhes.aspx");
                    break;
            }
        }
    }
}