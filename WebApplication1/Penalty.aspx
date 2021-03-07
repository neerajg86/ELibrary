<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Penalty.aspx.cs" Inherits="WebApplication1.Penalty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-4">
        
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Add Penalty</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <label>MEMBER NAME</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox3" placeholder="Member Name" runat="server"  ></asp:TextBox>
                        </div>
                        <label>MEMBER ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox1" placeholder="Member ID" runat="server"  ></asp:TextBox>
                        </div>
                         




                        <label>ADD PENALTY</label>&nbsp&nbsp<i style="font-size:24px" class="fa fa-inr">&#xf156;</i>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox2" placeholder="Penalty" runat="server" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-lg btn-info btn-block " ID="b1" runat="server" Text="ADD PENALTY" OnClick="b1_Click"  /><br />
                        </div>
                         
                     </div>
                  </div>
               </div>
            </div>
            <a href="homemain.aspx"><< Back to Home</a><br><br>
         </div>
          
          <div class="col-8">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Penalty List</h4><i style="font-size:24px" class="fa fa-inr">&#xf156;</i>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                     </div>
                  </div>
                   <div class="row">
                      
                   <div class="col">
                       <asp:GridView ID="GridView1" runat="server"  class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:BoundField DataField="user_name" HeaderText="Member_Name" SortExpression="user_name" />
                               <asp:BoundField DataField="user_id" HeaderText="Member_ID" ReadOnly="True" SortExpression="user_id" />
                               <asp:BoundField DataField="penalty" DataFormatString="{0:c}"    HeaderText ="Penalty" SortExpression="penalty"  />    
                           </Columns>
                       </asp:GridView>
                       </div>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [pen_tbl]"></asp:SqlDataSource>
                       </div>
                   
              </div>
        
          


        </div>

      </div>


                        
          


      </div>
   
    
</asp:Content>
