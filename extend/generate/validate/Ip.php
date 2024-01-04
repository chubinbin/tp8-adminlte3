<?php
/**
 * IP地址
 */

declare (strict_types=1);

namespace generate\validate;

class Ip extends Rule
{
    protected string $name = 'ip';
    protected string  $msg = '必须为IP地址';
}
