<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userSignUp.aspx.cs" Inherits="eLibraryManagement.userSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
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
                                    <h4>User Registration</h4>
                                 <center>
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
                                    <asp:TextBox class="form-control" ID="TextBox2" placeholder="Date Of Birth" runat="server" ></asp:TextBox>
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
                                    <asp:TextBox class="form-control" ID="TextBox6" placeholder="City" runat="server" ></asp:TextBox>
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
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" placeholder="User ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>

                                
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homePage.aspx"><< Back to Home</a><br><br>
            </div>
        </div>
    </div>
</asp:Content>
