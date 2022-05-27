.PHONY: build
build:
	docker run --rm -v "$(PWD):/srv/jekyll:Z" -it jekyll/jekyll:3.8 jekyll build --config _config.local.yml

.PHONY: run
run:
	docker run --rm --name jekyll -v "$(PWD):/srv/jekyll:Z" -p 4000:4000 jekyll/jekyll:3.8 jekyll serve --config _config.local.yml
