set positional-arguments
default: format
project := `go mod edit -json | jq -r .Module.Path`

format:
    go fmt ./...
    goimports-reviser -set-alias -format -company-prefixes github.com/stephenwilliams -project-name {{project}} ./...
