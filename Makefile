build: build-heroku-22

build-heroku-22:
	@echo "Building imagemagick in Docker for heroku-22..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-22" -w /buildpack heroku/heroku:22-build scripts/build_imagemagick imagemagick-heroku-22.tar.gz
