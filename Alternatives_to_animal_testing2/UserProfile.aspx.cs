using Alternatives_to_animal_testing2.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alternatives_to_animal_testing2
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AuthenticatedUser"] != null)
            {
                UserAccount account = (UserAccount)Session["AuthenticatedUser"];
                pnlUserProfile.Visible = true;
                pnlNotAuth.Visible = false;

                lblWelcome.Text = account.FirstName + " " + account.LastName;
                lblUserName.Text = account.UserName;
            }
            else
            {
                pnlUserProfile.Visible = false;
                pnlNotAuth.Visible = true;
            }
        }
    }
}