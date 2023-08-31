<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenciekle.aspx.cs" Inherits="webbilirprojesi.ogrenci.ogrenciekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="/sidebar/css/styles.css" rel="stylesheet" />
    <script src="/sidebar/js/scripts.js"></script>
</head>
<body>
     <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                
                <div class="sidebar-heading border-bottom bg-light">Webbilir</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/ogrenci/ogrenciekle.aspx">Öğrenci Kayıt</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/sinif/siniflistesi.aspx">Öğrenci Listele</a>
                    
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
                                <li class="nav-item active"><a class="nav-link" href="#!">Home</a></li>
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
                <div class="container-fluid">
                    <h1 class="mt-4">Simple Sidebar</h1>
                     <form id="form1" runat="server">
                          <div class="form-group">
                            <h3>Öğrenci Kayıt</h3>
                         <label for="txtName">Name:</label>
        
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Name..." Width="360px" />
                                </div> 
                        
                          <div class="form-group">

                            <label for="txtStudentId">Student ID:</label>
        
                            <asp:TextBox runat="server" ID="txtStudentId" CssClass="form-control" placeholder="ID..." Width="360px" />
                            </div> 

                          <div class="form-group">
     
                            <label for="txtClass">Class:</label>
        
                        <asp:TextBox runat="server" ID="txtClass" CssClass="form-control" placeholder="Write A or B ..." Width="360px" />
                        </div> 
                        
                         <br />
                        
                         
                         <br />

                           <asp:Button Text="Submit" ID="btnKaydet" runat="server" CssClass="btn btn-success" OnClick="btnKaydet_Click"/>
                        


                     </form>
                    
                        Make sure to keep all page content within the
                        <code>#page-content-wrapper</code>
                        . The top navbar is optional, and just for demonstration. Just create an element with the
                        <code>#sidebarToggle</code>
                        ID which will toggle the menu when clicked.
                    </p>
                </div>
            </div>
        </div>
</body>
</html>