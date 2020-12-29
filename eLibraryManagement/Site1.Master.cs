﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true;//user login link button
                    LinkButton2.Visible = true;//sign up link button

                    LinkButton3.Visible = false;//log out link button
                    LinkButton7.Visible = false;//hello user link button

                    LinkButton6.Visible = true;//admin login link button
                    LinkButton11.Visible = false;//author mgmt link button
                    LinkButton12.Visible = false;//publisher mgmt link button
                    LinkButton8.Visible = false;//book inventory link button
                    LinkButton9.Visible = false;//book issuing link button
                    LinkButton10.Visible = false;//member mgmt link button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//sign up link button

                    LinkButton3.Visible = true;//log out link button
                    LinkButton7.Visible = true;//hello user link button
                    LinkButton7.Text = "Hello " +Session["username"].ToString();

                    LinkButton6.Visible = true;//admin login link button
                    LinkButton11.Visible = false;//author mgmt link button
                    LinkButton12.Visible = false;//publisher mgmt link button
                    LinkButton8.Visible = false;//book inventory link button
                    LinkButton9.Visible = false;//book issuing link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//sign up link button

                    LinkButton3.Visible = true;//log out link button
                    LinkButton7.Visible = true;//hello user link button
                    LinkButton7.Text = "Hello Admin ";

                    LinkButton6.Visible = false;//admin login link button
                    LinkButton11.Visible = true;//author mgmt link button
                    LinkButton12.Visible = true;//publisher mgmt link button
                    LinkButton8.Visible = true;//book inventory link button
                    LinkButton9.Visible = true;//book issuing link button
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagement.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBooks.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignUp.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)//log out
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] ="";

            LinkButton1.Visible = true;//user login link button
            LinkButton2.Visible = true;//sign up link button

            LinkButton3.Visible = false;//log out link button
            LinkButton7.Visible = false;//hello user link button

            LinkButton6.Visible = true;//admin login link button
            LinkButton11.Visible = false;//author mgmt link button
            LinkButton12.Visible = false;//publisher mgmt link button
            LinkButton8.Visible = false;//book inventory link button
            LinkButton9.Visible = false;//book issuing link button
            LinkButton10.Visible = false;//member mgmt link button

            Response.Write("<script>alert('You logged out');</script>");
        }
    }
}