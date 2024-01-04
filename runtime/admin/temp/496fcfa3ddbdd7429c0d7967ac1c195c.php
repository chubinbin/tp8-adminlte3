<?php /*a:15:{s:62:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\admin_menu\add.html";i:1679022655;s:59:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\base.html";i:1679022656;s:63:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\head_css.html";i:1679022656;s:62:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\head_js.html";i:1679022656;s:68:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\navbar.html";i:1689584611;s:65:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\nav.html";i:1689584257;s:73:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\search_form.html";i:1679022656;s:69:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\message.html";i:1679022656;s:74:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\notification.html";i:1679022656;s:71:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\user_menu.html";i:1679022656;s:76:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\navbar\sidebar_button.html";i:1679022656;s:62:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\sidebar.html";i:1679022656;s:69:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\content_header.html";i:1679022656;s:61:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\footer.html";i:1679022656;s:70:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\control_sidebar.html";i:1679022656;}*/ ?>
<?php if(!$admin['is_pjax']): ?>
<!DOCTYPE html>
<html lang="<?php echo htmlentities_view((isset($admin['locale']) && ($admin['locale'] !== '')?$admin['locale']:'zh-CN')); ?>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="csrf-token" content="<?php echo token(); ?>">
    <link rel="icon" href="<?php echo htmlentities_view((isset($admin['base']['logo']) && ($admin['base']['logo'] !== '')?$admin['base']['logo']:'/static/admin/images/logo.png')); ?>">
    <link rel="apple-touch-icon" href="<?php echo htmlentities_view((isset($admin['base']['logo']) && ($admin['base']['logo'] !== '')?$admin['base']['logo']:'/static/admin/images/logo.png')); ?>">
    <?php endif; ?>

    
    <title><?php echo htmlentities_view((isset($admin['title']) && ($admin['title'] !== '')?$admin['title']:'Admin')); ?> | <?php echo htmlentities_view((isset($admin['base']['name']) && ($admin['base']['name'] !== '')?$admin['base']['name']:'Admin')); ?></title>
    

    <?php if(!$admin['is_pjax']): ?>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- 头部css -->
<!-- 图片预览css -->
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/viewer/viewer.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/nprogress/nprogress.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/select2/css/select2.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/fileinput/css/fileinput.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/fontawesome-free/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/bootstrap-switch/css/bootstrap3/bootstrap-switch.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/plugins/fontawesome-iconpicker/css/fontawesome-iconpicker.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/css/adminlte.min.css" />
<link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css" />

    <script>
    // 是否为调试模式
    var adminDebug = Boolean('<?php echo htmlentities_view($admin['debug']); ?>');
    // 退出url
    var logoutUrl = '<?php echo htmlentities_view($admin['logout_url']); ?>';
    // cookie前缀
    var cookiePrefix = "<?php echo htmlentities_view((isset($cookie_prefix) && ($cookie_prefix !== '')?$cookie_prefix:'')); ?>";
    // UEditor server地址
    var UEServer = "<?php echo url('editor/server'); ?>";
    // 列表页当前选择的ID
    var dataSelectIds = [];
    // 上传文件url
    var uploadUrl = "<?php echo url('file/upload'); ?>";
    // 富文本编辑器上传文件
    var editorUploadUrl = '<?php echo url("file/editor"); ?>';

    // 删除文件url
    var fileDelUrl = "<?php echo url('file/del'); ?>";
    // 刷新token url
    var tokenUrl = "<?php echo url('auth/token'); ?>";
    var csrfToken = '<?php echo token(); ?>';
</script>

<!-- js-cookie -->
<script type="text/javascript" src="/static/admin/plugins/js-cookie/js.cookie-2.2.0.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="/static/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script type="text/javascript" src="/static/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- pjax -->
<script type="text/javascript" src="/static/admin/plugins/pjax/jquery.pjax.js"></script>
<!-- nprogress -->
<script type="text/javascript" src="/static/admin/plugins/nprogress/nprogress.js"></script>
<!-- select2 -->
<script type="text/javascript" src="/static/admin/plugins/select2/js/select2.min.js"></script>
<script type="text/javascript" src="/static/admin/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- fileinput -->
<script type="text/javascript" src="/static/admin/plugins/fileinput/js/fileinput.min.js"></script>
<!-- fileinput themes -->
<script type="text/javascript" src="/static/admin/plugins/fileinput/themes/fas/theme.min.js"></script>
<script type="text/javascript" src="/static/admin/plugins/fileinput/js/locales/zh.js"></script>
<script type="text/javascript" src="/static/admin/plugins/fileinput/js/plugins/sortable.min.js"></script>

<!-- 数字输入插件 -->
<script type="text/javascript" src="/static/admin/plugins/bootstrap-number/bootstrap-number.min.js"></script>
<!--文件选择美化-->
<script type="text/javascript" src="/static/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- color picker -->
<script type="text/javascript" src="/static/admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- icon picker -->
<script type="text/javascript" src="/static/admin/plugins/fontawesome-iconpicker/js/fontawesome-iconpicker.min.js"></script>
<!-- layer -->
<script type="text/javascript" src="/static/admin/plugins/layer/layer.js"></script>
<!-- laydate -->
<script type="text/javascript" src="/static/admin/plugins/laydate/laydate.js"></script>
<!-- echarts -->
<script type="text/javascript" src="/static/admin/plugins/echarts/echarts.simple.min.js"></script>
<!-- jquery-validation -->
<script type="text/javascript" src="/static/admin/plugins/jquery-validation/jquery.validate.min.js"></script>
<!-- jquery-input-file-text -->
<script type="text/javascript" src="/static/admin/plugins/jquery-input-file-text/jquery-input-file-text.js"></script>
<!-- 图片预览插件 -->
<script type="text/javascript" src="/static/admin/plugins/viewer/viewer.min.js"></script>
<script type="text/javascript" src="/static/admin/plugins/jquery-viewer/jquery-viewer.min.js"></script>
<!-- 剪切板 -->
<script type="text/javascript" src="/static/admin/plugins/clipboard/clipboard.min.js"></script>
<!-- wangEditor编辑器 -->
<script type="text/javascript" src="/static/admin/plugins/wangEditor/wangEditor.min.js"></script>

<!-- 高德地图js -->
<script src="//webapi.amap.com/maps?v=1.4.15&key=<?php echo htmlentities_view((isset($admin['map']['amap']['js_api_key']) && ($admin['map']['amap']['js_api_key'] !== '')?$admin['map']['amap']['js_api_key']:'')); ?>&plugin=AMap.ToolBar,AMap.Autocomplete,AMap.PlaceSearch"></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>

<!-- AdminLTE -->
<script type="text/javascript" src="/static/admin/js/adminlte.min.js"></script>
<!-- 后台主要js -->
<script type="text/javascript" src="/static/admin/js/admin.js"></script>
<!-- 文件上传js -->
<script type="text/javascript" src="/static/admin/js/upload.js"></script>
<!-- 自定义前端验证js -->
<script type="text/javascript" src="/static/admin/js/validate.js"></script>



</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <?php endif; ?>

    <!-- navbar(顶部) -->
    
    <!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->

    <!-- 顶部左侧导航 -->
    
<ul class="navbar-nav">

    <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>


    <?php if($admin['top_nav']===1 && isset($admin['top_menu'])): foreach($admin['top_menu'] as $key=>$nav): ?>

    <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo url($nav['url']); ?>" class="nav-link"><?php echo htmlentities_view($nav['name']); ?></a>
    </li>
    <?php endforeach; ?>
    <?php endif; ?>
	
</ul>

    <!-- 顶部搜索框 -->
    <?php if($admin['top_search']): ?>
<form class="form-inline ml-3">
    <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
            <button class="btn btn-navbar" type="submit">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
</form>
<?php endif; ?>


    <ul class="navbar-nav ml-auto">

        <!-- 顶部消息 -->
        <?php if($admin['top_message']): ?>
<li class="nav-item dropdown">
    <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-comments"></i>
        <span class="badge badge-danger navbar-badge">3</span>
    </a>
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
                <img src="/static/admin/images/avatar.png" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                <div class="media-body">
                    <h3 class="dropdown-item-title">
                        Brad Diesel
                        <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                    </h3>
                    <p class="text-sm">Call me whenever you can...</p>
                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
            </div>
            <!-- Message End -->
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
                <img src="/static/admin/images/avatar.png" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                    <h3 class="dropdown-item-title">
                        John Pierce
                        <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                    </h3>
                    <p class="text-sm">I got your message bro</p>
                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
            </div>
            <!-- Message End -->
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
                <img src="/static/admin/images/avatar.png" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                    <h3 class="dropdown-item-title">
                        Nora Silvester
                        <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                    </h3>
                    <p class="text-sm">The subject goes here</p>
                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
            </div>
            <!-- Message End -->
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
    </div>
</li>
<?php endif; ?>

        <!-- 顶部通知 -->
        <?php if($admin['top_notification']): ?>
<!-- 顶部通知 -->
<li class="nav-item dropdown">
    <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-bell"></i>
        <span class="badge badge-warning navbar-badge">15</span>
    </a>
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <span class="dropdown-item dropdown-header">15 Notifications</span>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
        </a>
        <div class="dropdown-divider"></div>
        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
    </div>
</li>
<?php endif; ?>

        <!-- 用户菜单 -->
        <li class="nav-item">
    <a class="nav-link ReloadButton" role="button"  data-toggle="tooltip" data-title="刷新当前页面">
        <i class="fas fa-sync"></i>
    </a>
</li>


<li class="nav-item">
    <a class="nav-link FullScreenButton" role="button"  data-toggle="tooltip" data-title="全屏">
        <i class="fas fa-expand-arrows-alt"></i>
    </a>

    <a class="nav-link ExitFullScreenButton" data-toggle="tooltip" role="button" data-title="退出全屏" style="display: none">
        <i class="fas fa-compress-arrows-alt"></i>
    </a>
</li>

<li class="nav-item dropdown user-menu">
    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
        <img src="<?php echo htmlentities_view((isset($admin['user']['avatar']) && ($admin['user']['avatar'] !== '')?$admin['user']['avatar']:'/static/admin/images/avatar.png')); ?>" class="user-image img-circle elevation-2" alt="头像">
        <span class="d-none d-md-inline"><?php echo htmlentities_view((isset($admin['user']['nickname']) && ($admin['user']['nickname'] !== '')?$admin['user']['nickname']:'')); ?></span>
    </a>
    <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <!-- User image -->
        <li class="user-header bg-primary">
            <img src="<?php echo htmlentities_view((isset($admin['user']['avatar']) && ($admin['user']['avatar'] !== '')?$admin['user']['avatar']:'/static/admin/images/avatar.png')); ?>" class="img-circle elevation-2" alt="头像">
            <p>
                <?php echo htmlentities_view((isset($admin['user']['nickname']) && ($admin['user']['nickname'] !== '')?$admin['user']['nickname']:'')); ?>
                <small><?php echo htmlentities_view((isset($admin['user']['username']) && ($admin['user']['username'] !== '')?$admin['user']['username']:'')); ?></small>
            </p>
        </li>
        <li class="user-footer">
            <a href="<?php echo url('admin/adminUser/profile'); ?>" class="btn btn-default btn-flat">个人资料</a>
            <a href="#" onclick="logout()" class="btn btn-default btn-flat float-right">退  出</a>
        </li>
    </ul>
</li>

        <!-- 边栏控制按钮 -->
        <li class="nav-item">
    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
        <i class="fas fa-th-large"></i>
    </a>
</li>
    </ul>
</nav>
    

    <!-- 边栏(左侧) -->
    
    <!-- 左侧边栏 -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo url('admin/index/index'); ?>" class="brand-link">
        <img src="<?php echo htmlentities_view((isset($admin['base']['logo']) && ($admin['base']['logo'] !== '')?$admin['base']['logo']:'/static/admin/images/logo.png')); ?>"
             alt="Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light"><?php echo htmlentities_view((isset($admin['base']['name']) && ($admin['base']['name'] !== '')?$admin['base']['name']:'Admin')); ?></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?php echo htmlentities_view((isset($admin['user']['avatar']) && ($admin['user']['avatar'] !== '')?$admin['user']['avatar']:'/static/admin/images/avatar.png')); ?>" class="img-circle elevation-2" alt="头像">
            </div>
            <div class="info">
                <a href="<?php echo url('admin/admin_user/profile'); ?>" class="d-block"><?php echo htmlentities_view((isset($admin['user']['nickname']) && ($admin['user']['nickname'] !== '')?$admin['user']['nickname']:'Admin User')); ?></a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">

                <?php echo (isset($admin['left_menu']) && ($admin['left_menu'] !== '')?$admin['left_menu']:''); ?>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
    

    <!-- 内容 -->
    <div class="content-wrapper" id="pjaxContainer">
        
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><?php echo htmlentities_view((isset($admin['title']) && ($admin['title'] !== '')?$admin['title']:'ADMIN')); ?></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="<?php echo url('admin/index/index'); ?>">
                            <i class="fas fa-home"></i>
                            首页
                        </a>
                    </li>
                    <?php echo (isset($admin['breadcrumb']) && ($admin['breadcrumb'] !== '')?$admin['breadcrumb']:''); ?>
                </ol>
            </div>
        </div>
    </div>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <!-- 表单头部 -->
                <div class="card-header">
                    <div class="btn-group">
                        <a class="btn flat btn-sm btn-default BackButton">
                            <i class="fas fa-arrow-left"></i>
                            返回
                        </a>
                    </div>
                </div>

                <form class="form-horizontal" role="form" id="dataForm" action="" method="post"
                      enctype="multipart/form-data">
                    <div class="card-body">

                        <div class="form-group row">
                            <label for="parent_id" class="col-sm-2 col-form-label ">父级菜单</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <select class="form-control select2bs4" id="parent_id" name="parent_id"
                                        data-placeholder="请选择父级菜单">
                                    <option value="0">/</option>
                                    <?php echo (isset($parent_list) && ($parent_list !== '')?$parent_list:''); ?>
                                </select>
                            </div>
                        </div>
                        <script>
                            $('#parent_id').select2({
                                theme: 'bootstrap4'
                            })
                        </script>

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label ">名称</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <input type="text" class="form-control"
                                       id="name" name="name" value="<?php echo htmlentities_view((isset($data['name']) && ($data['name'] !== '')?$data['name']:'')); ?>"
                                       placeholder="请输入名称">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="url" class="col-sm-2 col-form-label ">URL</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <input type="text" class="form-control"
                                       id="url" name="url" value="<?php echo htmlentities_view((isset($data['url']) && ($data['url'] !== '')?$data['url']:'')); ?>"
                                       placeholder="请输入URL">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="sort_number" class="col-sm-2 col-form-label ">排序号</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <input type="number" class="form-control"
                                       id="sort_number" name="sort_number" value="<?php echo htmlentities_view((isset($data['sort_number']) && ($data['sort_number'] !== '')?$data['sort_number']:'1000')); ?>"
                                       placeholder="请输入排序号">
                            </div>
                        </div>
                        <script>
                            $('#sort_number')
                                .bootstrapNumber({
                                    upClass: 'success',
                                    downClass: 'primary',
                                    center: true
                                });
                        </script>

                        <div class="form-group row">
                            <label for="icon" class="col-sm-2 col-form-label">图标</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text iconpicker-component">
                                            <i class="far fa-calendar-alt"></i>
                                        </span>
                                    </div>
                                    <input type="text" maxlength="30" id="icon" name="icon"
                                           value="<?php echo htmlentities_view((isset($data['icon']) && ($data['icon'] !== '')?$data['icon']:'fas fa-list')); ?>" class="form-control "
                                           placeholder="请输入图标class">
                                </div>
                            </div>
                        </div>
                        <script>
                            $('#icon').iconpicker({
                                placement: 'bottomLeft',
                                title: '请选择一个图标',
                                animation:false,
                            });
                        </script>

                        <div class="form-group row">
                            <label for="is_show" class="col-sm-2 col-form-label ">是否显示</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <input class="switch fieldSwitch" id="is_show" name="is_show"
                                       value="<?php echo htmlentities_view((isset($data['is_show']) && ($data['is_show'] !== '')?$data['is_show']:'1')); ?>" hidden/>
                                <input type="checkbox" class="input-switch" id="is_showSwitch" value="1"
                                       <?php if((!isset($data) ||$data['is_show']==1)): ?>checked<?php endif; ?>/>
                            </div>
                        </div>
                        <script>
                            $('#is_showSwitch').bootstrapSwitch({
                                onColor: 'success',
                                offColor: 'danger',
                                onText: '是',
                                offText: '否',
                                onSwitchChange: function (event, state) {
                                    $('#is_show').val(state ? '1' : '0');
                                }
                            });
                        </script>

                        <div class="form-group row">
                            <label for="log_method" class="col-sm-2 col-form-label ">日志记录方式</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <select class="form-control select2bs4" id="log_method" name="log_method"
                                        data-placeholder="请选择日志记录方式">
                                    <?php if(is_array($log_method_list) || $log_method_list instanceof \think\Collection || $log_method_list instanceof \think\Paginator): if( count($log_method_list)==0 ) : echo "" ;else: foreach($log_method_list as $key=>$item): ?>
                                    <option value="<?php echo htmlentities_view($item['id']); ?>" <?php if(isset($data)&&$data['log_method']==$item['id']): ?>selected<?php endif; ?>><?php echo htmlentities_view($item['name']); ?></option>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                        </div>
                        <script>
                            $('#log_method').select2({
                                theme: 'bootstrap4'
                            })
                        </script>

                        <?php if(isset($data) && $data['parent_id']===0): ?>
                        <div class="form-group row">
                            <label for="is_top" class="col-sm-2 col-form-label ">是否为顶部菜单</label>
                            <div class="col-sm-10 col-md-4 formInputDiv">
                                <input class="switch fieldSwitch" id="is_top" name="is_top"
                                       value="<?php echo htmlentities_view((isset($data['is_top']) && ($data['is_top'] !== '')?$data['is_top']:'0')); ?>" hidden/>
                                <input type="checkbox" class="input-switch" id="is_topSwitch" value="1"
                                       <?php if($data['is_top']==1): ?>checked<?php endif; ?>/>
                            </div>
                        </div>
                        <script>
                            $('#is_topSwitch').bootstrapSwitch({
                                onColor: 'success',
                                offColor: 'danger',
                                onText: '是',
                                offText: '否',
                                onSwitchChange: function (event, state) {
                                    $('#is_top').val(state ? '1' : '0');
                                }
                            });
                        </script>
                        <?php endif; ?>

                    </div>
                    <div class="card-footer">
                        <?php echo token_field(); ?>
                        <div class="row">
                            <div class="col-sm-2">
                            </div>

                            <div class="col-sm-10 col-md-4 formInputDiv">

                                <div class="btn-group">
                                    <button type="submit" class="btn btn-sm btn-primary dataFormSubmit">
                                        保 存
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button type="reset" class="btn btn-sm btn-default dataFormReset">
                                        重 置
                                    </button>
                                </div>

                                <?php if(!isset($data)): ?>
                                <div class="btn-group float-right createContinueDiv">
                                    <input type="checkbox" class="form-check-input" value="1" id="_create"
                                           name="_create" title="继续添加数据">
                                    <label class="form-check-label" for="_create">继续添加</label>
                                </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</section>
<script>
    /** 表单验证 **/
    $('#dataForm').validate({
        rules: {
            'name': {
                required: true,
            },
            'url': {
                required: true,
            },
        },
        messages: {
            'name': {
                required: "名称不能为空",
            },
            'url': {
                required: "URL不能为空",
            },
        }
    });
</script>


    </div>

    <!-- 页脚(底部) -->
    
    <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        
    </div>
    <strong></strong>
</footer>
    

    <!-- 控制边栏(右侧) -->
    
    <aside id="ControlSidebar" class="control-sidebar control-sidebar-dark" style="display: none;">

    <div class="p-3 control-sidebar-content"><h5>自定义后台主题配置</h5>
        <hr class="mb-2">
        <div class="mb-4">
            <label class="controlSidebarCheckLabel">
                <input id="DarkMode" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="dark-mode">
                <span>深色模式</span>
            </label>
        </div>

        <h6>头部选项</h6>

        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="HeaderFixed" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="layout-navbar-fixed">
                <span>固定</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="DropdownLegacyOffset" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".main-header" data-class="dropdown-legacy">
                <span>下拉列表传统偏移</span>
            </label>
        </div>
        <div class="mb-4">
            <label class="controlSidebarCheckLabel">
                <input id="NoBorder" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom=".main-header"
                       data-class="border-bottom-0">
                <span>无边框</span>
            </label>
        </div>
        <h6>侧边栏选项</h6>

        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="SidebarCollapsed" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="sidebar-collapse">
                <span>折叠</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input type="checkbox" id="SidebarFixed" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="layout-fixed">
                <span>固定</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="SidebarMini" type="checkbox" value="1" checked="checked" class="mr-1 themeSettingCheckbox"
                       data-dom="body" data-class="sidebar-mini">
                <span>折叠后显示图标</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="SidebarMiniMd" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="sidebar-mini-md">
                <span>中等屏折叠显示图标</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="SidebarMiniXs" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="sidebar-mini-xs">
                <span>超小屏折叠显示图标</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="FlatSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="nav-flat">
                <span>导航平面样式</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="LegacySidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="nav-legacy">
                <span>导航传统样式</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="CompactSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="nav-compact">
                <span>导航压缩</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="ChildIndentSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="nav-child-indent">
                <span>导航子项缩进</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="ChildHideSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="nav-collapse-hide-child">
                <span>导航子项折叠时隐藏</span>
            </label>
        </div>
        <div class="mb-4">
            <label class="controlSidebarCheckLabel">
                <input id="NoExpandSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".main-sidebar" data-class="sidebar-no-expand">
                <span>禁用悬停/焦点自动展开</span>
            </label>
        </div>
        <h6>页脚选项</h6>
        <div class="mb-4">
            <label class="controlSidebarCheckLabel">
                <input id="FootFixed" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="layout-footer-fixed">
                <span>固定</span>
            </label>
        </div>
        <h6>小文本选项</h6>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="TextSmBody" type="checkbox" value="1" class="mr-1 themeSettingCheckbox" data-dom="body"
                       data-class="text-sm">
                <span>正文</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="TextSmHeader" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".main-header" data-class="text-sm">
                <span>头部</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="TextSmBrand" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".brand-link" data-class="text-sm">
                <span>品牌</span>
            </label>
        </div>
        <div class="mb-1">
            <label class="controlSidebarCheckLabel">
                <input id="TextSmSidebar" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".nav-sidebar" data-class="text-sm">
                <span>侧边栏导航</span>
            </label>
        </div>
        <div class="mb-4">
            <label class="controlSidebarCheckLabel">
                <input id="TextSmFooter" type="checkbox" value="1" class="mr-1 themeSettingCheckbox"
                       data-dom=".main-footer" data-class="text-sm">
                <span>页脚</span>
            </label>
        </div>


        <h6>皮肤</h6>
        <div class="mb-1">
            <ul class="list-unstyled clearfix skinUl">

                <li class="skinLi">
                    <a data-skin="dark-white-dark" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-dark">
                            </span>
                            <span class="skinNavbarSpan bg-white">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">默认</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-primary-primary" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-primary">
                            </span>
                            <span class="skinNavbarSpan bg-primary">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">主蓝色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-warning-warning" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-warning">
                            </span>
                            <span class="skinNavbarSpan bg-warning">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">警告色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-info-info" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-info">
                            </span>
                            <span class="skinNavbarSpan bg-info">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">信息色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-danger-danger" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-danger">
                            </span>
                            <span class="skinNavbarSpan bg-danger">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">红 色</p>
                </li>
                <li class="skinLi">
                    <a data-skin="dark-success-success" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-success">
                            </span>
                            <span class="skinNavbarSpan bg-success">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">成功色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-indigo-indigo" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-indigo">
                            </span>
                            <span class="skinNavbarSpan bg-indigo">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">靛 蓝</p>
                </li>


                <li class="skinLi">
                    <a data-skin="dark-lightblue-lightblue" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-lightblue">
                            </span>
                            <span class="skinNavbarSpan bg-lightblue">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">浅 蓝</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-navy-navy" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-navy">
                            </span>
                            <span class="skinNavbarSpan bg-navy">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">海军蓝</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-purple-purple" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-purple">
                            </span>
                            <span class="skinNavbarSpan bg-purple">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">紫 色</p>
                </li>


                <li class="skinLi">
                    <a data-skin="dark-pink-pink" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-pink">
                            </span>
                            <span class="skinNavbarSpan bg-pink">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">粉 色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-maroon-maroon" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-maroon">
                            </span>
                            <span class="skinNavbarSpan bg-maroon">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">褐 红</p>
                </li>
                <li class="skinLi">
                    <a data-skin="dark-orange-orange" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-orange">
                            </span>
                            <span class="skinNavbarSpan bg-orange">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">橙 色</p>
                </li>

                <li class="skinLi">
                    <a data-skin="dark-teal-teal" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-teal">
                            </span>
                            <span class="skinNavbarSpan bg-teal">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">蓝 绿</p>
                </li>
                <li class="skinLi">
                    <a data-skin="dark-olive-olive" class="clearfix full-opacity-hover skinA">
                        <div>
                            <span class="skinLogoSpan bg-olive">
                            </span>
                            <span class="skinNavbarSpan bg-olive">
                            </span>
                        </div>
                        <div>
                            <span class="skinSidebarSpan control-sidebar-dark">
                            </span>
                            <span class="skinContentSpan control-sidebar-light">
                             </span>
                        </div>
                    </a>
                    <p class="text-center no-margin">橄榄绿</p>
                </li>

            </ul>
        </div>

    </div>
</aside>
<script>
    $(function () {

        $(document).on('collapsed.lte.pushmenu', '[data-widget="pushmenu"]', function () {
            $('#SidebarCollapsed').prop('checked', true)
        })
        $(document).on('shown.lte.pushmenu', '[data-widget="pushmenu"]', function () {
            $('#SidebarCollapsed').prop('checked', false)
        })

        // 初始设置
        let $themeSettingCheckbox = $('.themeSettingCheckbox');
        $themeSettingCheckbox.each(function (index) {
            let CookieKey = $(this).attr('id');
            let isTrue = getSettingContent(CookieKey);
            isTrue ? $(this).prop("checked", true) : $(this).prop("checked", false);
            setSettingContent(this);
        })

        $themeSettingCheckbox.on('click', function () {
            // 这里先统一加上吧
            $(window).trigger('resize');
            if (adminDebug) {
                console.log('点击checkbox设置');
            }
            setSettingContent(this);
        });

        let $skinA = $('.skinA');

        $skinA.on('click', function () {
            // 这里先统一加上吧
            $(window).trigger('resize');
            changeSkin($(this).data('skin'));
        });

        initThemes();

    });

    function initThemes() {
        let cookieKey = 'BackendTheme';
        let $cookie = Cookies.get(cookieKey);
        if($cookie!==undefined && $cookie!==null){
            changeSkin($cookie);
        }
    }

    function getSettingContent(CookieKey) {
        return parseInt(Cookies.get(CookieKey));
    }

    function setSettingContent(dom) {

        let CookieKey = $(dom).attr('id');
        let isTrue = $(dom).is(':checked');
        let $class = $(dom).data('class');
        let $dom = $(dom).data('dom');

        Cookies.set(CookieKey, isTrue ? 1 : 0);
        isTrue ? $($dom).addClass($class) : $($dom).removeClass($class);
    }


    var navbar_dark_skins = [
        'bg-primary',
        'bg-secondary',
        'bg-info',
        'bg-success',
        'bg-danger',
        'bg-indigo',
        'bg-purple',
        'bg-pink',
        'bg-navy',
        'bg-lightblue',
        'bg-teal',
        'bg-cyan',
        'bg-dark',
        'bg-gray-dark',
        'bg-gray',
        // 后期添加的
        'bg-warning',
        'bg-fuchsia',
        'bg-maroon',
        'bg-olive',
        //'bg-lime',
    ]

    var navbar_light_skins = [
        'bg-light',
        'bg-warning',
        'bg-white',
        'bg-orange',
    ]


    var sidebar_colors = [
        'bg-primary',
        'bg-warning',
        'bg-info',
        'bg-danger',
        'bg-success',
        'bg-indigo',
        'bg-lightblue',
        'bg-navy',
        'bg-purple',
        'bg-fuchsia',
        'bg-pink',
        'bg-maroon',
        'bg-orange',
        'bg-lime',
        'bg-teal',
        'bg-olive'
    ]

    var sidebar_skins = [
        'sidebar-dark-primary',
        'sidebar-dark-warning',
        'sidebar-dark-info',
        'sidebar-dark-danger',
        'sidebar-dark-success',
        'sidebar-dark-indigo',
        'sidebar-dark-lightblue',
        'sidebar-dark-navy',
        'sidebar-dark-purple',
        'sidebar-dark-fuchsia',
        'sidebar-dark-pink',
        'sidebar-dark-maroon',
        'sidebar-dark-orange',
        'sidebar-dark-lime',
        'sidebar-dark-teal',
        'sidebar-dark-olive',
        'sidebar-light-primary',
        'sidebar-light-warning',
        'sidebar-light-info',
        'sidebar-light-danger',
        'sidebar-light-success',
        'sidebar-light-indigo',
        'sidebar-light-lightblue',
        'sidebar-light-navy',
        'sidebar-light-purple',
        'sidebar-light-fuchsia',
        'sidebar-light-pink',
        'sidebar-light-maroon',
        'sidebar-light-orange',
        'sidebar-light-lime',
        'sidebar-light-teal',
        'sidebar-light-olive'
    ]

    var navbar_all_colors = navbar_dark_skins.concat(navbar_light_skins)

    var logo_skins = navbar_all_colors;

    function changeNavbar(colors) {

        let color = 'bg-' + colors[1];
        let $dom = $('.main-header');

        $dom.removeClass('navbar-dark').removeClass('navbar-light').removeClass('navbar-white');
        navbar_all_colors.forEach(function (color) {
            $dom.removeClass(color);
        })

        $dom.addClass(color);

        if (navbar_dark_skins.indexOf(color) > -1) {
            $dom.addClass('navbar-dark')
        } else {
            $dom.addClass('navbar-light')
        }
    }


    function changeSidebar(colors) {
        let mode = colors[0];
        let $dom = $('.main-sidebar');
        let color = 'sidebar-' + mode + '-' + colors[1];

        sidebar_skins.forEach(function (skin) {
            $dom.removeClass(skin)
        })
        $dom.addClass(color);

        if (mode === 'dark') {
            $('.sidebar').removeClass('os-theme-dark').addClass('os-theme-light')
        } else {
            $('.sidebar').removeClass('os-theme-light').addClass('os-theme-dark')
        }
    }


    /**
     * 改变品牌logo
     * @param colors
     */
    function changeBrandLogo(colors) {
        let colorPrefix = 'bg-';
        let color = colorPrefix + colors[2];
        let $dom = $('.brand-link');

        if (color === colorPrefix + 'light' || color === colorPrefix + 'white') {
            $dom.addClass('text-black')
        } else {
            $dom.removeClass('text-black')
        }

        logo_skins.forEach(function (skin) {
            $dom.removeClass(skin)
        })

        $dom.addClass(color);
    }

    function changeSkin(skin) {
        if (adminDebug) {
            console.log('改变皮肤：' + skin);
        }
        let colors = skin.split('-');
        changeBrandLogo(colors);
        changeSidebar(colors);
        changeNavbar(colors);
        let cookieKey = 'BackendTheme';
        Cookies.set(cookieKey,skin)
    }

</script>
    

    <?php if(!$admin['is_pjax']): ?>
</div>
<?php endif; if(!$admin['is_pjax']): ?>

</body>
</html>
<?php endif; ?>