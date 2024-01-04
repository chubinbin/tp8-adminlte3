<?php
/**
 * api 中间件
 */

$config = [];
if(env('api.allow_cross_domain')){
    $config = [
        \app\api\middleware\AllowCrossDomain::class
    ];
}

return $config;