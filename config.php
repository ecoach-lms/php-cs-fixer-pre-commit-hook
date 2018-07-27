<?php

$rules = [
	'@PSR1' => true,
	'@PSR2' => true,
	'@Symfony' => true,
	'array_syntax' => ['syntax' => 'short'],
	'blank_line_before_statement' => false,
	'concat_space' => ['spacing' => 'one'],
	'multiline_whitespace_before_semicolons' => true,
	'ordered_imports' => true,
	'phpdoc_order' => true,
	'phpdoc_to_comment' => false,
	'yoda_style' => null,
];

return PhpCSFixer\Config::create()->setRules($rules);
