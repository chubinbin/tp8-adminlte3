<?php
/**
 * 身份证号码 18位
 */

declare (strict_types=1);

namespace generate\validate;

class IdCard extends Rule
{
    protected string $name = 'idCard';
    protected string $msg = '必须为身份证号码';
}
