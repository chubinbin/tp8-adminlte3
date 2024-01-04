<?php /*a:6:{s:58:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\auth\login.html";i:1687918184;s:63:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\head_css.html";i:1679022656;s:62:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\public\head_js.html";i:1679022656;s:61:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\auth\login_bg.html";i:1679022655;s:60:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\auth\captcha.html";i:1679022655;s:61:"D:\0WNMP\www\1tp8-adminlte3\app\admin\view\auth\gee_test.html";i:1679022655;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo htmlentities_view((isset($admin['base']['name']) && ($admin['base']['name'] !== '')?$admin['base']['name']:'后台系统')); ?></title>
    <link rel="icon" href="<?php echo htmlentities_view((isset($admin['base']['logo']) && ($admin['base']['logo'] !== '')?$admin['base']['logo']:'/static/admin/images/login-bg-3.jpg')); ?>">
    <link rel="apple-touch-icon" href="<?php echo htmlentities_view((isset($admin['base']['logo']) && ($admin['base']['logo'] !== '')?$admin['base']['logo']:'/static/admin/images/logo.png')); ?>">
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



    <!-- 登录背景相关 -->
    <!-- 如果有登录背景 -->
<?php if($login_config['background']): ?>
<style>
    .login-page {
        background-color: #ececec;
        background-image: url(<?php echo htmlentities_view($login_config['background']); ?>);
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        background-position: 50% 50%;
    }
</style>
<?php endif; ?>
</head>
<body class="hold-transition login-page">
<div class="login-box" style="margin-top:-200px;">
    <div class="login-logo">
        <a class="adminTitle"><b><?php echo htmlentities_view((isset($admin['base']['name']) && ($admin['base']['name'] !== '')?$admin['base']['name']:'登录')); ?></b></a>
    </div>

    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">请输入账号密码进行登录</p>

            <form action="" method="post" id="dataForm" class="dataForm">
                <div class="input-group mb-3">
                    <input name="username" id="username" type="text" class="form-control" placeholder="账号">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input name="password" id="password" type="password" class="form-control" placeholder="密码">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>

                <?php if($login_config['captcha']==1): ?>
                
<div class="row" style="margin-bottom: 15px;">
    <div class="col-sm-8">
        <input type="text" id="captcha" class=" form-control" name="captcha" placeholder="验证码" maxlength="6">
    </div>

    <div class="col-sm-4" style="padding-left: 0">
        <img style="width: 100%;max-width: 120px;" src="<?php echo url('auth/captcha'); ?>" alt="图形验证码" id="captchaImg" height="34" onclick="refreshCaptcha()">
    </div>
</div>

<script>

    function refreshCaptcha() {
        let $dom = $('#captchaImg');
        $dom.attr('src','<?php echo url("admin/auth/captcha"); ?>?'+img_name_random());
    }

    //图片后缀随机数
    function img_name_random() {
        let rand_one = parseInt(Math.random() * 100);
        let rand_two = parseInt(Math.random() * 100);
        return String(rand_one) + String(rand_two);
    }
</script>


                <?php else: if($login_config['captcha']==2): ?>
                <script type="text/javascript" src="/static/admin/plugins/gee-test/gee-test.min.js"></script>
<div id="wait" class="text-center"  style="height: 44px;font-size: 18px;">
    正在加载验证码...
</div>
<div class="row">
    <div class="col-xs-12" style="width: 100%">
        <div class="form-group text-center">
            <div id="embed-captcha" style="width: 300px;margin: 0 auto;;"></div>
        </div>
    </div>
</div>

<script>
    var handlerEmbed = function (captchaObj) {
        $("#loginButton").click(function (e) {
            let validate = captchaObj.getValidate();
            if (!validate) {
                layer.msg('请先完成验证',{icon:2});
                e.preventDefault();
            }
        });
        // 将验证码加到id为captcha的元素里，同时会有三个input的值：geetest_challenge, geetest_validate, geetest_seccode
        captchaObj.appendTo("#embed-captcha");
        captchaObj.onReady(function () {
            //$("#loginButton").attr("disabled",false);
            $("#wait").hide();
        });

    };

    $(function () {
        $.ajax({
            // 获取id，challenge，success（是否启用failback）
            url: "<?php echo url('auth/geetest'); ?>",
            type: "POST",
            dataType: "JSON",
            success: function (result) {
                let data = result.data;
                // 使用initGeetest接口
                // 参数1：配置参数
                // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
                initGeetest({
                    with: '300px',
                    gt: data.gt,
                    challenge: data.challenge,
                    new_captcha: data.new_captcha,
                    product: "embed", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
                    offline: !data.success // 表示用户后台检测极验服务器是否宕机，一般不需要关注
                }, handlerEmbed);
            }
        });
    });
</script>
                <?php endif; ?>
                <?php endif; ?>

                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="remember" name="remember">
                            <label for="remember">
                                记住我
                            </label>
                        </div>
                    </div>
                    <div class="col-4">
                        <?php echo token_field(); ?>
                        <button type="submit" class="btn btn-primary btn-block" id="loginButton">登录</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<script>

    $(document).ready(function () {
        $("#dataForm").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 6
                },
            },
            messages: {
                username: {
                    required: "请输入用户名",
                    minlength: "用户名长度不能小于2"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于6"
                },
            },
            submitHandler: function (form) {
                return  submitForm(form, false, typeof refreshCaptcha === "function" ? refreshCaptcha : false);
            }
        });
        $('#username').focus();
    });


    checkBrowser();

    /*检查浏览器*/
    function checkBrowser() {
        if (isIE()) {
            if (adminDebug) {
                console.log('古代浏览器');
            }
            layer.open({
                type: 1,
                content: $('#browser_warning').html(),
                icon: 5,
                title: '警告',
                area: ['500px', '300px'],
                closeBtn: 0,
                moveType: 1,
                resize: false
            });
        } else {
            if (adminDebug) {
                console.log('现代浏览器');
            }
        }
    }

    function isIE() {
        return !!window.ActiveXObject || "ActiveXObject" in window;
    }

</script>
</body>
</html>
