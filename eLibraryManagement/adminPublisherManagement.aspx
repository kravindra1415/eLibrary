<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="eLibraryManagement.adminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready( function () {
            //  $('#myTable').DataTable();
            //} );

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                 </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120" src="images/pub.png" />
                                 <center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" placeholder="ID" runat="server"></asp:TextBox>
                                     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                 <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" placeholder="Publisher Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                           

                        <div class="row">
                            <div class="col-4">
                                    <asp:Button ID="Button2" class="btn btn-primary btn-lg btn-block" runat="server" Text="Add" OnClick="Button2_Click" />
                                    </div>
                            <div class="col-4">
                                    <asp:Button ID="Button3" class="btn btn-success btn-lg btn-block" runat="server" Text="Update" OnClick="Button3_Click" />
                                    </div>
                            <div class="col-4">
                                    <asp:Button ID="Button4" class="btn btn-danger btn-lg btn-block" runat="server" Text="Delete" OnClick="Button4_Click" />
                                    </div>
                                </div>
                        </div>
                </div>
                    </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                       

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher List</h4>
                                 </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                </asp:GridView>    
                            </div>
                        </div>

                        
                        

                        
                        </div>
                </div>
                    </div>

          

                
                <a href="homePage.aspx"><< Back to Home</a><br><br>
            </div>
      </div>

</asp:Content>
