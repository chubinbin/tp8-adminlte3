<?php
/**
 * 纯数字
 */

declare (strict_types=1);

namespace generate\validate;

class Number extends Rule
{
    protected string $name = 'number';
    protected string $msg = '必须为纯数字';
}
