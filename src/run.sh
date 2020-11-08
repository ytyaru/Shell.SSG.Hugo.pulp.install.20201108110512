#!/usr/bin/env bash
#set -Ceu
#---------------------------------------------------------------------------
# hugoでテーマpulpを適用した。
# CreatedAt: 2020-11-08
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"

	hugo new site test-site
	cd test-site
	git init
	git submodule add https://github.com/koirand/pulp.git themes/pulp

	cp config.toml config_bk.toml
	cp themes/pulp/exampleSite/config.toml config.toml

	hugo new posts/first-post.md
	cat "$HERE/article.md" > content/posts/first-post.md

	hugo serve -D &
	chromium http://localhost:1313/posts/
}
Run "$@"
