using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient; //ADO NET --> SQL SERVER


namespace DAL.Persistence
{
    public class Conexao
    {
        //Atibutos
        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        //Metodo - Abrir Conexão
        protected void AbrirConexao()
        {
            try
            {
                //Connection string
                Con = new SqlConnection("Data Source=desktop-sbpgi7n;Initial Catalog=CrudAsp-Ado-Net-Bootstrap;Integrated Security=True;Pooling=False");
                Con.Open();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        //Metodo - Fechar Conexão
        protected void FecharConexao()
        {
            try
            {
                Con.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
