<?php
/**
 * 邮箱
 */

declare (strict_types=1);

namespace generate\validate;

class Email extends Rule
{
    protected string $name = 'email';
    protected string  $msg = '必须为邮箱地址';
}
