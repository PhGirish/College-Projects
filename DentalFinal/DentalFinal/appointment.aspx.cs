using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace DentalFinal
{
    public partial class appointment : System.Web.UI.Page
    {
        string username;
        int n = 0;
        int orderID;
        String con = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\giriz\\source\\repos\\DentalFinal\\DentalFinal\\App_Data\\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            auto();
            usernametxt.Text = (string)Session["username"];
            
        
            txtid.Text = orderID.ToString();
        }

        
        public void auto()
        {

            String con = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\giriz\\source\\repos\\DentalFinal\\DentalFinal\\App_Data\\Database1.mdf;Integrated Security=True";

            string query = "SELECT MAX(patientID) FROM appointment";
           


            using (SqlConnection conn = new SqlConnection(con))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        object result = cmd.ExecuteScalar();
                        if (result == DBNull.Value)
                        {
                            orderID = 1;
                        }
                        else
                        {
                            orderID = Convert.ToInt32(result) + 1;
                        }
                        txtid.Text=orderID.ToString();
                    }


                    // Use the orderID variable to generate your order



                }
                catch (Exception ex)
                {
                    Response.Write("" + ex.Message);
                }
                finally
                {
                    conn.Close();

                }

                
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(con);
            conn.Open();
            try
            {

                String q = "insert into appointment(fname,lname,username,patientType,patientID,type) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + usernametxt.Text + "','" + DropDownList1.Text + "','" + txtid.Text + "','" + RadioButtonList1.Text + "')";
                SqlCommand cmd = new SqlCommand(q, conn);
                cmd.ExecuteReader();

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Successfull";
                auto();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
            finally
            {
                conn.Close();
                conn.Dispose();

            }
            Response.Redirect("Payment.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtid_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}