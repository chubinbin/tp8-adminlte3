<?php
/**
 * 非空
 */

declare (strict_types=1);

namespace generate\validate;

class Required extends Rule
{

    protected string $name = 'required';
    protected string $msg = '不能为空';
}
