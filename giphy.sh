#!/usr/bin/env bash

giphy() {
	local query="${1}"

	if [ -z "${query}" ]; then
		echo "Missing: <query>"
		echo "Usage: giphy <query>"
		echo "Examples:"
		echo "  $ giphy yay"
		echo "  $ open \$(giphy why)"
		echo "  $ giphy laugh%20cry | pbcopy"
		return 1
	fi

	curl -fsSL "https://giphy.com/search/${query}" \
		| rg -oP "(?<=gifs: ).*?(?=,$)" \
		| jq ".[$(echo $(( ${RANDOM} % 25 )) )] | .images.original.url" \
		| tr -d '"'
}
