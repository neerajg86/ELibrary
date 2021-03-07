using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton14.Visible = true; // user login link button
                    LinkButton15.Visible = true; // sign up link button

                    LinkButton16.Visible = false; // logout link button
                    LinkButton17.Visible = false; // hello user link button


                    LinkButton18.Visible = true; // admin login link button
                    LinkButton19.Visible = false; // author management link button
                    LinkButton20.Visible = false; // publisher management link button
                    LinkButton21.Visible = false; // book inventory link button
                    LinkButton22.Visible = false; // book issuing link button
                    LinkButton23.Visible = false; // member management link button
                    LinkButton24.Visible = false;//add penalty


                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton14.Visible = false; // user login link button
                    LinkButton15.Visible = false; // sign up link button

                    LinkButton16.Visible = true; // logout link button
                    LinkButton17.Visible = true; // hello user link button
                    LinkButton17.Text = "Hello " + Session["username"].ToString();


                    LinkButton18.Visible = true; // admin login link button
                    LinkButton19.Visible = false; // author management link button
                    LinkButton20.Visible = false; // publisher management link button
                    LinkButton21.Visible = false; // book inventory link button
                    LinkButton22.Visible = false; // book issuing link button
                    LinkButton23.Visible = false; // member management link button
                    LinkButton24.Visible = false;//penalty link button

                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton14.Visible = false; // user login link button
                    LinkButton15.Visible = false; // sign up link button

                    LinkButton16.Visible = true; // logout link button
                    LinkButton17.Visible = true; // hello user link button
                    LinkButton17.Text = "Hello Admin";


                    LinkButton18.Visible = false; // admin login link button
                    LinkButton19.Visible = true; // author management link button
                    LinkButton20.Visible = true; // publisher management link button
                    LinkButton21.Visible = true; // book inventory link button
                    LinkButton22.Visible = true; // book issuing link button
                    LinkButton23.Visible = true;// member management link button
                    LinkButton24.Visible = true;// penalty link button
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_login.aspx");

        }

        protected void LinkButton19_Click(object sender, EventArgs e)
        {
            Response.Redirect("Author.aspx");
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            Response.Redirect("Publisher.aspx");
        }

        protected void LinkButton21_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_book.aspx");
        }

        protected void LinkButton22_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book_issue.aspx");
        }

        protected void LinkButton23_Click(object sender, EventArgs e)
        {
            Response.Redirect("Member_manage.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewbook.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_login.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_sign.aspx");
        }

        //logout button
        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton14.Visible = true; // user login link button
            LinkButton15.Visible = true; // sign up link button

            LinkButton16.Visible = false; // logout link button
            LinkButton17.Visible = false; // hello user link button


            LinkButton18.Visible = true; // admin login link button
            LinkButton19.Visible = false; // author management link button
            LinkButton20.Visible = false; // publisher management link button
            LinkButton21.Visible = false; // book inventory link button
            LinkButton22.Visible = false; // book issuing link button
            LinkButton23.Visible = false; // member management link button
            LinkButton24.Visible = false;//Penalty link button

            Response.Redirect("Home.aspx");
        }

        // view profile
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");

        }
        //Add penalty
        protected void LinkButton24_Click(object sender, EventArgs e)
        {
            Response.Redirect("Penalty.aspx");
        }

        
    }
}