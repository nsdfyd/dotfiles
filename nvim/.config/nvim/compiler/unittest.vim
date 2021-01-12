" Vim compiler file
" Compiler:	Unit testing tool for Python
" Maintainer:	Max Ischenko <mfi@ukr.net>
" Last Change: 2004 Mar 27

if exists("current_compiler")
  finish
endif
let current_compiler = "pyunit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=docker\ run\ -v\ $(git\ rev-parse\ --show-toplevel):/$(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ --rm\ $(basename\ -s\ .git\ `git\ config\ --get\ remote.origin.url`)\ -c\ \"python3\ -m\ unittest\ discover\ %:h\"
CompilerSet efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
