<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="siniflistesi.aspx.cs" Inherits="webbilirprojesi.sinif.siniflistesi" %>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simple Sidebar - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/sidebar/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/sidebar/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="/sidebar/js/scripts.js"></script>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenciekle.aspx">Ogrenci Kayit</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/sinif/siniflistesi.aspx">Ogrenci Listesi</a>
                    <
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">Menu</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!">Home</a><asp:SqlDataSource runat="server"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="#!">Link</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Action</a>
                                        <a class="dropdown-item" href="#!">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Something else here</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container ">
                    <div class =" container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                        <form id="form1" runat="server">
                            <h3>Öğrenci Listesi</h3>
                             
                                 
                            <table class="table table-bordered table-hover table-condensed">
                                
                           
                               
                                <thead>
                                    <tr>
                                        <th>     </th>
                                        <th>Name</th>
                                        <th>Id</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                     </tr>  

                                </thead>
                                <tbody>

                                    <asp:Repeater ID="kayitliliste" runat="server" >
                                      
                                        <ItemTemplate> 

                                            <tr>
                                                <td><%#Eval("studentid") %></td>
                                                <td><%#Eval("student_name") %> </td>
                                                <td><%#Eval("studentclassid") %> </td>
                                               <td>
                                                   <asp:HyperLink NavigateUrl='<%#"sinifsil.aspx?id=" + Eval("studentid") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                               </td>
                                                <td>
                                                    <asp:HyperLink NavigateUrl='<%#"sinifduzenle.aspx?id=" + Eval("studentid") %>' runat="server" CssClass="btn btn-success">Düzenle</asp:HyperLink></td>
                                                
                                            </tr>
                                         </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                               
                              
                                      </div>







                                

  


      

                                    
                                         

                                      </table>
                               


                                









                   
                            
                             </div>
                                
                            

                        </form>
                        </div>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="sidebar/js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </body>
</html>