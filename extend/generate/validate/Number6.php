<?php
/**
 * 6位数字密码
 */

declare (strict_types=1);

namespace generate\validate;

class Number6 extends Rule
{
    protected string $name = 'number6';

    protected string  $msg = '必须为6位数字';
}
