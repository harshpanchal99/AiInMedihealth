<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="dropdown sidebar-profile-dropdown">
          <a class="dropdown-toggle d-flex align-items-center justify-content-between" href="#" data-toggle="dropdown" id="profileDropdown1">
            <img src="<%=request.getContextPath() %>/adminResources/images/face29.png" alt="profile" class="sidebar-profile-icon"/>
            <div>
                <div class="nav-profile-name">Harsh Panchal</div>
                <div class="nav-profile-designation">ADMIN Person</div>
            </div>
          </a>
          <div class="dropdown-menu navbar-dropdown dropdown-menu-left" aria-labelledby="profileDropdown1">
           <a class="dropdown-item" href="/logout">
              <i class="mdi mdi-logout"></i>
              Logout
            </a>
          </div>
        </div>
        <ul class="nav">
          <li class="nav-item">
            <div class="sidebar-title">DashBoard</div>
            <a class="nav-link" href="dashboard.html">
              <i class="mdi mdi-account-circle menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#doctor-pages" aria-expanded="false" aria-controls="doctor-pages">
                <i class="mdi mdi-stethoscope menu-icon"></i>
                <span class="menu-title">Manage Doctors</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="doctor-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageDoctor.html">View Doctors</a></li>
                </ul>
              </div>
            </li>         
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#user-pages" aria-expanded="false" aria-controls="user-pages">
                <i class="mdi mdi-account-multiple menu-icon"></i>
                <span class="menu-title">Manage Users</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="user-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageUser.html">View Users</a></li>
                </ul>
              </div>
            </li>
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#dataset-pages" aria-expanded="false" aria-controls="dataset-pages">
                <i class="mdi mdi-note-multiple-outline menu-icon"></i>
                <span class="menu-title">Manage Dataset</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="dataset-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageDataset.html">Add Dataset</a></li>
                 <!--  <li class="nav-item"> <a class="nav-link" href="#">View Dataset</a></li> -->
                </ul>
              </div>
            </li>          
           <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#disease-pages" aria-expanded="false" aria-controls="disease-pages">
                <i class="mdi mdi-thermometer-lines menu-icon"></i>
                <span class="menu-title">Manage Disease</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="disease-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageDisease.html"> Add Disease</a></li>
                  <li class="nav-item"> <a class="nav-link" href="viewDisease.html">View Disease</a></li>
                </ul>
              </div>
            </li>           
         <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#symptoms-pages" aria-expanded="false" aria-controls="symptoms-pages">
                <i class="mdi mdi-code-string menu-icon"></i>
                <span class="menu-title">Manage Symptoms</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="symptoms-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageSymptoms.html">Add Symptoms</a></li>
                  <li class="nav-item"> <a class="nav-link" href="viewSymptoms.html">View Symptoms</a></li>
                </ul>
              </div>
            </li>
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#medicine-pages" aria-expanded="false" aria-controls="medicine-pages">
                <i class="mdi mdi-pill menu-icon"></i>
                <span class="menu-title">Manage Medicine</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="medicine-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageMedicine.html">Add Medicine</a></li>
                  <li class="nav-item"> <a class="nav-link" href="viewMedicine.html">View Medicine</a></li>
                </ul>
              </div>
            </li>
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#complain-pages" aria-expanded="false" aria-controls="complain-pages">
                <i class="mdi mdi-rename-box menu-icon"></i>
                <span class="menu-title">Manage Complains</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="complain-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageComplain.html">View Complains</a></li>
                </ul>
              </div>
            </li> 
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#feedback-pages" aria-expanded="false" aria-controls="feedback-pages">
                <i class="mdi mdi-comment-text-outline menu-icon"></i>
                <span class="menu-title">Manage FeedBack</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="feedback-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="viewFeedback.html">View Feedback</a></li>
                </ul>
              </div>
            </li>
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#report-pages" aria-expanded="false" aria-controls="report-pages">
                <i class="mdi mdi-clipboard-text menu-icon"></i>
                <span class="menu-title">Manage Report</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="report-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="#">View Report</a></li>
                </ul>
              </div>
            </li>       
        </ul>
        
      </nav>
