<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href="{{ route('admin_home') }}">
            <img src="{{ asset('assets')}}/admin/images/icon/logo.png" alt="Cool Admin" />
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
                <li>
                    <a class="js-arrow" href="{{ route('home') }}">
                        <i class="fas fa-home"></i>Home</a>
                </li>
                <li class="active">
                    <a class="js-arrow" href="{{ route('admin_home') }}">
                        <i class="fas fa-chart-line"></i>Dashboard</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_menu') }}">
                        <i class="fas fa-table"></i>Menus</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_content') }}">
                        <i class="fas fa-chart-bar"></i>Contents</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_comment') }}">
                        <i class="fas fa-comments"></i>Comments</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_service') }}">
                        <i class="fas fa-pencil-alt"></i>Services</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_faq') }}">
                        <i class="fas fa-question-circle"></i>FAQ</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_message') }}">
                        <i class="fas fa-envelope"></i>Messages</a>
                </li>
                <li>
                    <a class="js-arrow" href="{{ route('admin_setting') }}">
                        <i class="fas fa-wrench"></i>Settings</a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
<!-- END MENU SIDEBAR-->
