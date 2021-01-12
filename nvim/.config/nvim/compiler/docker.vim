if exists("current_compiler")
  finish
endif
let current_compiler = "docker"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=docker\ build\ -t\ $(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ -f\ Dockerfile\ .
