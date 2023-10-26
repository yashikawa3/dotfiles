fish_config theme choose "Dracula Official"

if status is-interactive
    # Commands to run in interactive sessions can go here
    # For Homebrew
    eval (/opt/homebrew/bin/brew shellenv)
end

### Common aliasses
alias ld='ls -ld'                # Show info about the directory
alias lla='ls -lAF'              # Show hidden all files
alias llal="ls -lAF | grep '^l'" # Show hidden all symbolic links
alias ll='ls -lF'                # Show long file information
alias lll="ls -lF | grep '^l'"   # Show symbolic links
alias la='ls -AF'                # Show hidden files
alias lx='ls -lXB'               # Sort by extension
alias lk='ls -lSr'               # Sort by size, biggest last
alias lc='ls -ltcr'              # Sort by and show change time, most recent last
alias lu='ls -ltur'              # Sort by and show access time, most recent last
alias lt='ls -ltr'               # Sort by date, most recent last
alias lr='ls -lR'                # Recursive ls

alias mkdir='mkdir -p'

### Docker
alias dk='docker'
alias dkps='docker ps'
alias dkexec='docker exec -it (dkps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}" | peco | cut -f 1) sh'
alias dklogs='docker logs -f (dkps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}" | peco | cut -f 1)'

alias dkc='docker-compose'
alias dkcu='docker-compose up'
alias dkcd='docker-compose down'
alias dkclo='docker-compose -f docker-compose.yml -f docker-compose-local.yml'
alias dkclou='docker-compose -f docker-compose.yml -f docker-compose-local.yml up'
alias dkclod='docker-compose -f docker-compose.yml -f docker-compose-local.yml down'
