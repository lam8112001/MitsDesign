<?php

    if (!isset($_SESSION['admin_email'])) {

        echo "<script>window.open('login.php','_self')</script>";

    } else {
    
?>

<nav class="navbar navbar-inverse navbar-fixed-top">

    <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        
            <span class="sr-only">Toggle Navigation</span>

            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>

        </button>

        <a href="index.php?dashboard" class="navbar-brand"><img style="width: 100px;" src="logo.svg" alt=""></a>

    </div>

    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
        
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-user"></i> <?php echo $admin_name; ?> <b class="caret"></b>
            </a>

            <ul class="dropdown-menu">
                <li>
                    <a href="index.php?user_profile=<?php echo $admin_id; ?>">
                        <i class="fa fa-fw fa-user"></i> Hồ Sơ
                    </a>
                </li>

                <li>
                    <a href="index.php?view_products">
                        <i class="fa fa-fw fa-envelope"></i> Sản Phẩm
                        <span class="badge"><?php echo $count_products; ?></span>
                    </a>
                </li>
                
                <li>
                    <a href="index.php?view_customers">
                        <i class="fa fa-fw fa-user"></i> Khách Hàng
                        <span class="badge"><?php echo $count_customers; ?></span>
                    </a>
                </li>
                
                <li>
                    <a href="index.php?view_cats">
                        <i class="fa fa-fw fa-gear"></i> Danh Mục Sản Phẩm
                        <span class="badge"><?php echo $count_product_category; ?></span>
                    </a>
                </li>

                <li class="divider"></li>
                
                <li>
                    <a href="logout.php">
                        <i class="fa fa-fw fa-power-off"></i> Đăng Xuất
                    </a>
                </li>
            </ul>
        
        </li>
    
    </ul>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="index.php?dashboard">
                    <i class="fa fa-fw fa-dashboard"></i> Bảng Điều Khiển
                </a>
            </li>

            <li>
                <a href="#" data-toggle="collapse" data-target="#products">
                    <i class="fa fa-fw fa-tag"></i> Sản Phẩm
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="products" class="collapse">
                    <li><a href="index.php?insert_products">Chèn Sản Phẩm</a></li>
                    <li><a href="index.php?view_products">Xem Sản Phẩm</a></li>
                </ul>
            
            </li>

            <li>
                <a href="#" data-toggle="collapse" data-target="#p_cat">
                    <i class="fa fa-fw fa-edit"></i> Danh Mục Sản Phẩm
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="p_cat" class="collapse">
                    <li><a href="index.php?insert_p_category">Chèn Danh Mục</a></li>
                    <li><a href="index.php?view_p_categories">Xem Danh Mục</a></li>
                </ul>
            
            </li>

            <li>
                <a href="#" data-toggle="collapse" data-target="#cat">
                    <i class="fa fa-fw fa-book"></i> Thể Loại
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="cat" class="collapse">
                    <li><a href="index.php?insert_cat"> Chèn Thể Loại </a></li>
                    <li><a href="index.php?view_cats"> Xem Thể Loại </a></li>
                </ul>
            
            </li>

            <li>
                <a href="#" data-toggle="collapse" data-target="#slides">
                    <i class="fa fa-fw fa-gear"></i> Slides
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="slides" class="collapse">
                    <li><a href="index.php?insert_slide">Chèn Slides</a></li>
                    <li><a href="index.php?view_slides">Xem Slides</a></li>
                </ul>
            
            </li>

            <li>
                <a href="#" data-toggle="collapse" data-target="#coupons">
                    <i class="fa fa-fw fa-book"></i> Coupons
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="coupons" class="collapse">
                    <li><a href="index.php?insert_coupon">Chèn Coupons</a></li>
                    <li><a href="index.php?view_coupons">Xem Coupons</a></li>
                </ul>
            
            </li>

            <li>
                <a href="index.php?view_customers">
                    <i class="fa fa-fw fa-users"></i> Xem Khách Hàng
                </a>
            </li>

            <li>
                <a href="index.php?view_orders">
                    <i class="fa fa-fw fa-book"></i> Xem Đơn Đặt Hàng
                </a>
            </li>

            <li>
                <a href="index.php?edit_css">
                <i class="fa fa-fw fa-pencil"></i> Chỉnh Sửa CSS
                </a>
            </li>

            <li>

                <a href="#" data-toggle="collapse" data-target="#users">
                    <i class="fa fa-fw fa-users"></i> Admin
                    <i class="fa fa-fw fa-caret-down"></i>
                </a>

                <ul id="users" class="collapse">
                    <li><a href="index.php?insert_user">Chèn Người Dùng</a></li>
                    <li><a href="index.php?view_users"> Xem Người Dùng </a></li>
                    <li><a href="index.php?user_profile=<?php echo $admin_id; ?>">Chỉnh Sửa Hồ Sơ</a></li>
                </ul>
            
            </li>

            <li>
                <a href="logout.php">
                    <i class="fa fa-fw fa-power-off"></i> Đăng Xuất
                </a>
            </li>


        </ul>
    </div>
</nav>

<?php } ?>