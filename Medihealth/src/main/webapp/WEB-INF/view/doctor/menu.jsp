<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="dropdown sidebar-profile-dropdown">
          <a class="dropdown-toggle d-flex align-items-center justify-content-between" href="#" data-toggle="dropdown" id="profileDropdown1">
            <img src="<%=request.getContextPath() %>/adminResources/images/face29.png" alt="profile" class="sidebar-profile-icon"/>
            <div>
                <div class="nav-profile-name">Dr. ${name }</div>
                <div class="nav-profile-designation">DOCTOR Person</div>
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
            <div class="sidebar-title">Manage </div>
            <a class="nav-link" href="index.html">
              <i class="mdi mdi-account-circle menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="manageAccount.html">
              <i class="mdi mdi-note-multiple-outline menu-icon"></i>
              <span class="menu-title">Manage Account</span>
            </a>
          </li>          
          <li class="nav-item">
            <a class="nav-link" href="addInfo.html">
              <i class="mdi mdi-thermometer-lines menu-icon"></i>
              <span class="menu-title">Add Information</span>
            </a>
          </li> 
          <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#complain-pages" aria-expanded="false" aria-controls="dataset-pages">
                <i class="mdi mdi-note-multiple-outline menu-icon"></i>
                <span class="menu-title">Complain</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="complain-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pageComplain.html">Add Complain</a></li>
                  <li class="nav-item"> <a class="nav-link" href="viewReply.html">View Reply</a></li>
                </ul>
              </div>
            </li>              
          <li class="nav-item">
            <a class="nav-link" href="pageFeedback.html">
              <i class="mdi mdi-account-multiple menu-icon"></i>
              <span class="menu-title">Feedback</span>
            </a>
          </li>                
          
        </ul>
        <div class="designer-info">
            Designed by: <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>
        </div>
      </nav>
