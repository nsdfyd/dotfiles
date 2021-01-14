command! DockerBuild :cd `git rev-parse --show-toplevel` | !docker build -t $(basename -s .git $(git config --get remote.origin.url))" -f Dockerfile . <CR>
"command! DockerRun
"command! DockerKill
