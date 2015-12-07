#!/usr/bin/env zsh
fixers=(
  concat_with_spaces
  -concat_without_spaces
)

y=0
for x in "$@"; do
  ./bin/php-cs-fixer fix $x --dry-run --config=sf23 --level=symfony --fixers=${(j:,:)fixers} -n --ansi --format=txt --diff
  err=$?
  [[ $y = 0 ]] && y=$err
done
exit $y
