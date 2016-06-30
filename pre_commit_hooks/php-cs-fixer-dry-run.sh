#!/usr/bin/env zsh
fixers=(
  concat_with_spaces
  -concat_without_spaces
  phpdoc_order
  ordered_use
  no_blank_lines_before_namespace
  newline_after_open_tag
  multiline_spaces_before_semicolon
  -phpdoc_to_comment
  -empty_return
  -return
)

y=0
for x in "$@"; do
  ./bin/php-cs-fixer fix $x --dry-run --config=sf23 --level=symfony --fixers=${(j:,:)fixers} -n --ansi --format=txt --diff
  err=$?
  [[ $y = 0 ]] && y=$err
done
exit $y
