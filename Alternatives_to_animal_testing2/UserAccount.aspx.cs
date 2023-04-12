using Alternatives_to_animal_testing2.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alternatives_to_animal_testing2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // TODO Check Username for uniqueness
            Boolean isUniqueName = true;

            DataSourceSelectArguments arguments = new DataSourceSelectArguments();

            foreach(DataRowView view in UserAccountTable.Select(arguments))
            {
                if(view.Row["Username"].Equals(txtUserName.Text.Trim()))
                {
                    isUniqueName = false;
                }
            }

            if(isUniqueName)
            {
            // Create and populate a UserAccount object
            UserAccount account = new UserAccount();

            account.FirstName = txtFirstName.Text;
            account.LastName = txtLastName.Text;
            account.UserName = txtUserName.Text.Trim();

            byte[] data = System.Text.Encoding.ASCII.GetBytes(txtPassword.Text.Trim());
            data = new System.Security.Cryptography.SHA256Managed().ComputeHash(data);
            String hashedPassword = System.Text.Encoding.ASCII.GetString(data);

            account.Password = hashedPassword;

            account.Phone = txtPhone.Text;
            account.Email = txtEmail.Text;


                // TODO add the new user account to the database
                UserAccountTable.InsertParameters["FirstName"].DefaultValue = account.FirstName;
                UserAccountTable.InsertParameters["LastName"].DefaultValue = account.LastName;
                UserAccountTable.InsertParameters["UserName"].DefaultValue = account.UserName;
                UserAccountTable.InsertParameters["Password"].DefaultValue = account.Password;
                UserAccountTable.InsertParameters["Phone"].DefaultValue = account.Phone;
                UserAccountTable.InsertParameters["Email"].DefaultValue = account.Email;

                UserAccountTable.Insert();

                // add the account to session
                Session.Add("AuthenticatedUser", account);
            // redirect the authenticated to a user profile page
            Response.Redirect("UserProfile.aspx");
            }
            else 
            {
                // username is not unique
                Response.Redirect("UserAccount.aspx");
            }
        }
    }
}