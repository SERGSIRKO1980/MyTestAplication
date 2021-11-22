using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace MyTestAplication
{
    public partial class Page1 : System.Web.UI.Page
    {

        private SqlConnection sqlConnection  = null;
        protected async void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            sqlConnection = new SqlConnection(connectionString);
            await sqlConnection.OpenAsync();
        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
            OrderFoDB orderDB = new OrderFoDB();
            orderDB.FirstName = FirstNameText.Text;
            orderDB.SecondName = SecondNameText.Text;
            orderDB.AdressOrder = AdressOrderText.SelectedItem.Text;
            orderDB.WeightOrder = Convert.ToInt32(WeightOrderText.Text);
            orderDB.MessageUser = MessageUserText.Text;
            orderDB.TypeOrder = TypeOrderText.SelectedItem.Text;
            int AdressCost = 0;

            switch (orderDB.AdressOrder)
            {
                case "Полтава":
                    AdressCost = 20;
                    break;
                case "Харків":
                    AdressCost = 40;
                    break;
                case "Київ":
                    AdressCost = 60;
                    break;
            }
            orderDB.CostValue = AdressCost + orderDB.WeightOrder * 30;

            SqlCommand sqlCommand = new SqlCommand("INSERT INTO [dbo].[Orders] (frist_name, second_name, adress, weight, comment, type, cost_value)VALUES(@frist_name, @second_name, @adress, @weight, @comment, @type, @cost_value)", sqlConnection);
            sqlCommand.Parameters.AddWithValue("frist_name", orderDB.FirstName);
            sqlCommand.Parameters.AddWithValue("second_name", orderDB.SecondName);
            sqlCommand.Parameters.AddWithValue("adress", orderDB.AdressOrder);
            sqlCommand.Parameters.AddWithValue("weight", orderDB.WeightOrder);
            sqlCommand.Parameters.AddWithValue("comment", orderDB.MessageUser);
            sqlCommand.Parameters.AddWithValue("type", orderDB.TypeOrder);
            sqlCommand.Parameters.AddWithValue("cost_value", orderDB.CostValue);

            await sqlCommand.ExecuteNonQueryAsync();
        }
    }
}