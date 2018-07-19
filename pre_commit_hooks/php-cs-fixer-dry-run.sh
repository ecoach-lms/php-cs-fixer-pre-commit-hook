#!/usr/bin/env zsh
HOOK_DIR=${0:h:h}
FIXER=$HOOK_DIR/vendor/bin/php-cs-fixer

if ! [[ -x $FIXER ]]; then
  pushd $HOOK_DIR || exit $?
  composer install 2>/dev/null || exit $?
  popd || exit $?
fi

exec $FIXER fix --config=$HOOK_DIR/config.php --ansi --diff --dry-run "$@" 2>/dev/null
