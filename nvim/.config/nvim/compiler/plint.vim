if exists("current_compiler")
  finish
endif
let current_compiler = "plint"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=docker\ run\ -v\ $(git\ rev-parse\ --show-toplevel):/$(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ --rm\ $(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ -c\ \"pylint\ --reports=n\ --output-format=parseable\ %\"
CompilerSet errorformat=%f:%l:\ %m
