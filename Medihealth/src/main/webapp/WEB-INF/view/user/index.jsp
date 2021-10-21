<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ai in Medihealth</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<%=request.getContextPath() %>/adminResources/images/favicon.png" />
</head>
<body class="sidebar-light">
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    
<!--  ##############################################################################
      ################################  HEADER  ####################################
      ############################################################################## -->
         
        <jsp:include page="header1.jsp"></jsp:include>
    
<!--  ############################################################################## -->
    
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close mdi mdi-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options selected" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles primary"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      
<!-- 
		############################################################################## 
        ###################################  MENU  ################################### 
     	############################################################################## -->      
      
	 		<jsp:include page="menu.jsp"></jsp:include>     
    
<!--    ############################################################################## -->
      
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper p-0">
          <div class="welcome-message">
            <div class="d-lg-flex justify-content-between align-items-center">
              <div class="pr-5 image-border"><img src="<%=request.getContextPath() %>/adminResources/images/welcome.png" alt="welcome"></div>
              <div class="pl-4">
                <h2 class="text-white font-weight-bold mb-3">Welcome User</h2>
                <p class="pb-0 mb-1">Congratulations! Your account has been setup and you are ready to configure your dashboard now.</p>
                <p>Configuration only take a couple of seconds.</p>
              </div>
              <div class="pl-4">
                <button type="button" class="btn btn-primary" id="skip-mesages">Skip</button>
                <button type="button" class="btn btn-success ml-lg-0 ml-xl-2 ml-2 ml-l mt-lg-2 mt-xl-0">Setup Manually</button>
              </div>
            </div>
          </div>
          <div class="d-sm-flex justify-content-between align-items-center border-bottom">
            <div class="d-flex align-items-center">
              <ul class="nav nav-tabs home-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="Dashboards-tab" data-toggle="tab" href="#Dashboards-1" role="tab" aria-controls="Dashboards-1" aria-selected="true">Dashboard</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="Apps-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">Users</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="Pages-tab" data-toggle="tab" href="#" role="tab"  aria-selected="false">Pages</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="Features-tab" data-toggle="tab" href="#" role="tab" aria-selected="false">Features</a>
                  </li>
                </ul>
                <div class="dropdown arrow-none d-lg-block d-none">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" id="profileDropdown5" aria-expanded="false">
                        <i class="mdi mdi-dots-horizontal"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-left custom-drop-down" aria-labelledby="profileDropdown5">
                      <a class="dropdown-item">
                        <i class="mdi mdi-calendar-blank"></i> Customers
                      </a>
                      <a class="dropdown-item">
                        <i class="mdi mdi-calendar-blank"></i> Reports
                      </a>
                    </div>
                  </div>

            </div>
            <div class="mr-3 pr-1 ml-3 pl-1 mb-3 mb-lg-0">
              <div class="dropdown">
                  <button type="button" class="btn btn-outline-light btn-icon-text dropdown-toggle" data-toggle="dropdown" id="profileDropdown3" aria-expanded="false">
                    <i class="mdi mdi-calendar-blank btn-icon-prepend"></i> 
                    Last 30 days
                  </button>
                  <div class="dropdown-menu dropdown-menu-left custom-drop-down" aria-labelledby="profileDropdown3">
                    <a class="dropdown-item">
                      <i class="mdi mdi-calendar-blank"></i> Last 2 weeks
                    </a>
                    <a class="dropdown-item">
                      <i class="mdi mdi-calendar-blank"></i> Last 7 days
                    </a>
                  </div>
                </div>
            </div>

          </div>
          <div class="tab-content home-tab-content">
            <div class="tab-pane fade show active" id="Dashboards-1" role="tabpanel" aria-labelledby="Dashboards-tab">
              <div class="d-sm-flex justify-content-between align-items-center my-3">
                <h3 class="text-dark font-weight-medium">Sales dashboard overview</h3> 
                <div class="link-btn-group d-flex justify-content-start align-items-start">
                  <button type="button" class="btn btn-link text-dark py-0 pl-0">Add info</button>
                  <button type="button" class="btn btn-link text-dark py-0">Get updated by email</button>
                  <button type="button" class="btn btn-link text-dark py-0">See more</button>
                </div>
              </div>
              <div class="row"> 
                <div class="col-md-12 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-sm-flex justify-content-between align-items-center">
                        <h4 class="card-title">Revenue Statistics</h4>
                        <div class="dropdown">
                          <button type="button" class="btn btn-outline-light dropdown-toggle my-2 my-lg-0" data-toggle="dropdown" id="profileDropdown2">
                            <i class="mdi mdi-calendar-blank text-extra-small"></i> Jan 12,2019 - Mar 12,2019    
                          </button>
                          <div class="dropdown-menu dropdown-menu-left custom-drop-down" aria-labelledby="profileDropdown2">
                            <a class="dropdown-item">
                              <i class="mdi mdi-calendar-blank"></i> Sep 12,2018 - Dec 12,2018 
                            </a>
                            <a class="dropdown-item">
                              <i class="mdi mdi-calendar-blank"></i> Jun 12,2018 - Aug 12,2018
                            </a>
                          </div>
                          <button type="button" class="btn btn-warning ml-sm-3 my-2 my-lg-0">Download Report</button>
                        </div> 
                      </div>
                      <div class="mb-4">
                        <span class="pr-2">Sales</span><span class="pr-2"><i class="mdi mdi-chevron-right"></i></span><span>Revenue statistics</span>
                      </div>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="row chart-legends-revenue-statistics">
                            <div class="col-sm-6 mb-4 mb-sm-0">
                              <div class="legend-label d-flex align-items-center">
                                <span class="bg-secondary"></span>
                                <h5 class="mb-0 font-weight-normal">Gross Earnings</h5>
                              </div>
                              <h3 class="text-dark font-weight-medium mt-2">$14,000.00</h3>
                            </div>
                            <div class="col-sm-6 mb-4 mb-sm-0">
                                <div class="legend-label d-flex align-items-center">
                                  <span class="bg-info"></span>
                                  <h5 class="mb-0 font-weight-normal">Gross Earnings</h5>
                                </div>
                                <h3 class="text-dark font-weight-medium mt-2">$23,000.00</h3>
                              </div>
                          </div>
                        </div>
                        <div class="col-lg-6">
                            <h5 class="text-dark font-weight-normal" >Summary</h5>
                            <p>A comparison of people who mark themeselves of their interest based from
                                the date range given above. <a href="#" class="text-success">Learn More</a></p>
                          </div>
                      </div>
                      <div class="row mt-3">
                        <div class="col-sm-12">
                          <canvas id="revenue-statistics"></canvas>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-xl-4 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center">
                          <h4 class="card-title mb-0">Account Retention</h4>
                          <button type="button" class="btn btn-link btn-md text-light p-0">14 Jan 2019</button>
                      </div>
                      <h2 class="text-dark font-weight-bold my-3">$23,769</h2>
                      <canvas id="account-retension"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="custom-fieldset mb-4">
                        <div class="clearfix">
                          <label>Product Sold</label>
                        </div>
                        <div class="d-lg-flex align-items-center text-dark">
                          <i class="mdi mdi-inbox-arrow-up mr-3 mdi-36px animate-icon"></i>
                            <div>
                              <h2 class="mb-0">$45300</h2>
                              <div class="text-light d-flex align-items-center"><span class="text-success mr-2 font-weight-medium d-flex align-items-center"><i class="mdi mdi-menu-up mdi-18px"></i>+4531</span>avg. sales per day</div>
                            </div>
                        </div>
                      </div>
                      <div class="custom-fieldset mt-3">
                        <div class="clearfix">
                          <label>Product Orders</label>
                        </div>
                        <div class="d-lg-flex align-items-center text-dark">
                          <i class="mdi mdi-cart-outline mr-3 mdi-36px animate-icon"></i>
                            <div>
                              <h2 class="mb-0">$61404</h2>
                              <div class="text-light d-flex align-items-center"><span class="text-danger mr-2 font-weight-medium d-flex align-items-center"><i class="mdi mdi-menu-down mdi-18px"></i>-231.33</span>avg. sales per day</div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-xl-4 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-6">
                          <p class="text-dark font-weight-medium">Today Earnings</p>
                          <h1 class="text-dark  mt-3">$2850</h1>
                          <p class="text-dark text-small"><span class="circle-arrow"><i class="mdi mdi-arrow-top-right"></i></span>Avg. Sales per Day</p> 
                        </div>
                        <div class="col-md-6">
                            <canvas id="earnings" class=" mt-3"></canvas> 
                        </div>
                      </div>
                      <div class="row mt-4">
                          <div class="col-md-6 mb-4 mb-sm-0">
                            <p class="text-dark">Total Income</p>
                            <h2 class="text-dark  mt-2">$2850</h2>
                            <div class="text-light d-flex align-items-center text-extra-small"><span class="text-success mr-2 font-weight-medium d-flex align-items-center"><i class="mdi mdi-menu-up  mdi-18px"></i>+43.54%</span>Last week</div>
                          </div>
                          <div class="col-md-6">
                            <p class="text-dark">Total Expenses</p>
                            <h2 class="text-dark  mt-2">$54345</h2>
                            <div class="text-light d-flex align-items-center text-extra-small"><span class="text-success mr-2 font-weight-medium d-flex align-items-center"><i class="mdi mdi-menu-up  mdi-18px"></i>0.7% </span>Last month</div>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row"> 
                <div class="col-md-12 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-sm-flex justify-content-between align-items-center">
                        <h4 class="card-title">Purchase History</h4>
                        <div class="d-flex">
                            <button type="button" class="btn btn-outline-primary btn-icon-text my-2 my-lg-0">
                              <i class="mdi mdi-printer text-extra-small btn-icon-prepend"></i>
                              Print
                            </button>
                          <button type="button" class="btn btn-outline-primary btn-icon-text ml-3  my-2 my-lg-0">
                            <i class="mdi mdi-email-outline text-extra-small btn-icon-prepend"></i>
                            Email
                          </button>
                          <button type="button" class="btn btn-primary ml-3  my-2 my-lg-0">Generate Report</button>
                        </div>
                      </div>
                      <div class="mb-4">
                        <span class="pr-2">Sales</span><span class="pr-2"><i class="mdi mdi-chevron-right"></i></span><span>Purchase history</span>
                      </div>
                      <div class="row">
                        <div class="col-sm-12">
                            <div class="table-responsive">
                                <table class="table">
                                  <thead>
                                    <tr>
                                      <th>
                                          Product
                                      </th>
                                      <th>
                                          Order ID
                                      </th>
                                      <th>
                                          Date
                                      </th>
                                      <th>
                                          Price
                                      </th>
                                      <th>
                                          Status
                                      </th>
                                      <th>
                                          Action
                                      </th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td class="py-1">
                                        <div class="d-flex align-items-center"><img src="<%=request.getContextPath() %>/adminResources/images/1.jpg" class="product-icon" alt="image">
                                        <div> Reebok Running Shoes</div></div>
                                      </td>
                                      <td>
                                          #4200
                                      </td>
                                      <td>
                                          28 Dec 2019
                                      </td>
                                      <td>
                                        $342.00
                                      </td>

                                      <td>
                                          <span class="text-danger">Pending</span>
                                      </td>
                                      <td>
                                        <button class="btn btn-outline-primary btn-rounded">Details</button>
                                          
                                      </td>
                                    </tr>
                                    <tr>
                                      <td class="py-1">
                                        <div class="d-flex align-items-center"><img src="<%=request.getContextPath() %>/adminResources/images/2.jpg" class="product-icon" alt="image"> 
                                        <div>Puma Women's Shoes</div></div>
                                      </td>
                                      <td>
                                        #4202
                                      </td>
                                      <td>
                                        04 Jan 2019
                                      </td>
                                      <td>
                                        $244.00
                                      </td>

                                      <td>
                                          <span class="text-success">Completed</span>
                                      </td>
                                      <td>
                                        <button class="btn btn-outline-primary btn-rounded">Details</button>
                                          
                                      </td>
                                    </tr>
                                    <tr>
                                      <td class="py-1">
                                        <div class="d-flex align-items-center"><img src="<%=request.getContextPath() %>/adminResources/images/3.jpg" class="product-icon" alt="image"> <div>Acteo Men's Loafers</div></div>
                                      </td>
                                      <td>
                                        #4210
                                      </td>
                                      <td>
                                        09 Jul 2019
                                      </td>
                                      <td>
                                        $575.00
                                      </td>

                                      <td>
                                          <span class="text-warning">Shipping</span>
                                      </td>
                                      <td>
                                        <button class="btn btn-outline-primary btn-rounded">Details</button>
                                          
                                      </td>
                                    </tr>
                                    <tr>
                                      <td class="py-1">
                                        <div class="d-flex align-items-center"><img src="<%=request.getContextPath() %>/adminResources/images/4.jpg" class="product-icon" alt="image">
                                        <div>ADL Headphones </div></div> 
                                      </td>
                                      <td>
                                        #4232
                                      </td>
                                      <td>
                                        16 May 2019
                                      </td>
                                      <td>
                                        $664.00
                                      </td>

                                      <td>
                                          <span class="text-danger">Pending</span>
                                      </td>
                                      <td>
                                        <button class="btn btn-outline-primary btn-rounded">Details</button>
                                          
                                      </td>
                                    </tr>
                                    <tr>
                                      <td class="py-1">
                                        <div class="d-flex align-items-center"><img src="<%=request.getContextPath() %>/adminResources/images/5.jpg" class="product-icon" alt="image">
                                        <div>Vuhom Sunglasses </div></div> 
                                      </td>
                                      <td>
                                        #4290
                                      </td>
                                      <td>
                                        22 Feb 2019
                                      </td>
                                      <td>
                                        $123.00
                                      </td>

                                      <td>
                                          <span class="text-danger">Pending</span>
                                      </td>
                                      <td>
                                        <button class="btn btn-outline-primary btn-rounded">Details</button>
                                          
                                      </td>
                                    </tr>
                                    
                                  </tbody>
                                </table>
                              </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4 grid-margin grid-margin-xl-0 grid-margin-lg-0 stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title mb-0">Total Conversion Rate</h4>
                      <div class="d-xl-flex justify-content-between mt-3 mb-3 align-items-center">
                        <h6 class="font-weight-normal">Mar 28 -  Apr 28.2019</h6>
                        <button type="button" class="btn btn-outline-primary">Details</button>
                      </div>
                      <div class="row mt-4 d-flex align-items-center">
                        <div class="col-xl-9 mb-4 mb-sm-0 ">
                            <h1 class="font-weight-medium m-0 text-dark">$2345.00 <span class="text-danger text-small font-weight-normal">-11.45% (1.2%)</span></h1>
                        </div>
                          
                          <div class="col-xl-3"><canvas id="total-conversion"></canvas></div>
                        </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 grid-margin grid-margin-xl-0 grid-margin-lg-0 stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title mb-0">Avg. Order Quantity</h4>
                        <div class="d-xl-flex justify-content-between mt-3 mb-3 align-items-center">
                          <h6 class="font-weight-normal">Mar 28 -  Apr 28.2019</h6>
                          <button type="button" class="btn btn-outline-primary">Details</button>
                        </div>
                        <div class="row mt-4 d-flex align-items-center">
                          <div class="col-xl-9 mb-4 mb-sm-0 ">
                              <div class="col-xl-9 ">
                              <h1 class="font-weight-medium m-0 text-dark">4,356 <span class="text-success text-small font-weight-normal">+54.34 (1.2%)</span></h1>
                          </div>
                            
                            <div class="col-xl-3"><canvas id="avrg-order-quantity"></canvas></div>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 grid-margin grid-margin-xl-0 grid-margin-lg-0 stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title mb-0">Percentage of licenses used</h4>
                      <div class="d-xl-flex justify-content-between mt-3 mb-3 align-items-center">
                        <h6 class="font-weight-normal">Mar 28 -  Apr 28.2019</h6>
                        <button type="button" class="btn btn-outline-primary">Details</button>
                      </div>
                      <div class="row mt-4 d-flex align-items-center">
                        <div class="col-xl-9">
                            <h1 class="font-weight-medium m-0 text-dark">45.34% <span class="text-success text-small font-weight-normal">+24.18 (2.6%)</span></h1>
                        </div>
                          
                          <div class="col-xl-3"><canvas id="percentage"></canvas></div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        
<!--  ##############################################################################
      ################################  FOOTER  ####################################
      ############################################################################## -->
      
        <jsp:include page="footer1.jsp"></jsp:include>
      
<!--  ############################################################################## --> 
        
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- base:js -->
  <script src="<%=request.getContextPath() %>/adminResources/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="<%=request.getContextPath() %>/adminResources/js/Chart.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="<%=request.getContextPath() %>/adminResources/js/off-canvas.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/hoverable-collapse.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/settings.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/todolist.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="<%=request.getContextPath() %>/adminResources/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

