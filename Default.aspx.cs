using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeckerSteps
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void computePoints(String UserId, DateTime StepDate, int Steps)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("SP_InsertRecord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", UserId);
            cmd.Parameters.AddWithValue("@StepDate", StepDate);
            cmd.Parameters.AddWithValue("@Steps", Steps);
            con.Open();
            int i = cmd.ExecuteNonQuery();

            con.Close();

            if (i > 0)
            {
               //Means data saved
            }
        }
    }
}