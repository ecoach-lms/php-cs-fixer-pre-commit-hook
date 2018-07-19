<?php

$rules = [
	'@PSR1' => true,
	'@PSR2' => true,
	'@Symfony' => true,
	'array_syntax' => ['syntax' => 'short'],
	'multiline_whitespace_before_semicolons' => true,
	'ordered_imports' => true,
	'phpdoc_order' => true,
	'blank_line_before_statement' => false,
	'phpdoc_to_comment' => false,
];

return PhpCSFixer\Config::create()->setRules($rules);
