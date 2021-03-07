<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/About.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
        <link href="css/contact.css" rel="stylesheet" />

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <header>
    <div class="p-1" id="topHeader">
      <div class="container">
        <div class="row">
          <div class="col-12 text-right">
            <a class="p-1" href="tel:+919090909090"> <i class="fas fa-phone"></i> +(91) 86524088841 </a>
            <a class="p-1" href="mailto:neerajg8624@gmail.com  "> <i class="fas fa-envelope"></i>
              neerajg8624@gmail.com </a>
          </div>
        </div>
      </div>
    </div>
        </header>


    <section class="breadcrumbs-section">
    <div class="container p-1 p-sm-3">
      <div class="row">
        <div class="col-12">
          <h2>About Us</h2>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
            <li class="breadcrumb-item active">Contact Us</li>
          </ol>
        </div>
      </div>
    </div>

  </section>




    <div class="container contact-form">
            <div class="contact-image">
                <img src="img2/rocket.png" alt="rocket_contact"/>
            </div>&nbsp
        <br />
        <br />
        <br />
        <br />
        <form>
            <div>
                <h3>Drop Us a Message</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                           
                       <asp:TextBox ID="txt_name" class="form-control"  placeholder="Your Name *" runat="server"></asp:TextBox>
                            </div>
                        <div class="form-group">
                           
                       <asp:TextBox ID="txt_subject" class="form-control"  placeholder="Your Subject *" runat="server"></asp:TextBox>
                            </div>



                        <div class="form-group">
                            
                        <asp:TextBox ID="txt_email" class="form-control" placeholder="Your Email *" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            
                        <asp:TextBox ID="txt_phone" class="form-control" placeholder="Your Phone Number *" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            
                           
                       <asp:Button ID="btn_send" Text="Send Message" class="btn btn-danger" runat="server" OnClick="btn_send_Click" />
                            </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                           
                        <asp:TextBox ID="txt_message" class="form-control" TextMode="MultiLine" Rows="5" placeholder="Your Message *" style="width: 100%; height: 150px;" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                </div>
            </form>
         
</div>
</asp:Content>
