<?php
/**
 * 手机号码11位
 */

declare (strict_types=1);

namespace generate\validate;

class Mobile extends Rule
{
    protected string $name = 'mobile';
    protected string $msg = '必须为11位手机号码';
}
