if exists("current_compiler")
  finish
endif
let current_compiler = "pyunit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=docker\ run\ -v\ $(git\ rev-parse\ --show-toplevel):/$(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ --rm\ $(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ -c\ \"python3\ -m\ unittest\ discover\ %:h\"
CompilerSet efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
