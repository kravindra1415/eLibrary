<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="eLibraryManagement.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="100" src="images/user.png" />
                                 <center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status-</span>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                                 </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" placeholder="Full Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" placeholder="Date Of Birth" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                           <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" placeholder="Contact Number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" placeholder="Email ID" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                        <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                 <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" placeholder="City" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                 <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" placeholder="Pincode" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                   <asp:TextBox class="form-control" ID="TextBox5" placeholder="Full Address" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div><br>

                        <div class="row text-center">
                                  <div class="col">
                                <span class="badge badge-pill badge-info">Login Crentials</span>
                                </div>
                            </div><br>

                          <div class="row">
                            <div class="col-md-4">
                                <label>USer ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" placeholder="User ID" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                 <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" placeholder="Password" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                 <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                        <center>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Update" />
                                    </div>
                                    </center>
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
                                <img width="95"  src="images/books%20(2).jpg" />
                                 <center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your Books Info"></asp:Label>
                                 </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>    
                            </div>
                        </div>

                        
                        

                        
                        </div>
                </div>
                    </div>

          

                
                <a href="homePage.aspx"><< Back to Home</a><br><br>
            </div>
      </div>

</asp:Content>
