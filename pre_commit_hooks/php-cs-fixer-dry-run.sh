#!/usr/bin/env zsh

y=0
for x in "$@"; do
  ./bin/php-cs-fixer fix $x --dry-run --config=sf23 --level=symfony -n --ansi --format=txt --diff
  err=$?
  [[ $y = 0 ]] && y=$err
done
exit $y
