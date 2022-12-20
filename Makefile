.PHONY: build serve clean preview server

CONFIG_FILES := config.toml,menu.toml,i18n.toml,social.toml,theme.toml

serve: 
	hugo server -p 8000 --config $(CONFIG_FILES)

build: 
	HUGO_BASEURL="/" hugo --minify --gc --config $(CONFIG_FILES)

clean:
	rm -rf public
	rm -rf resources
	rm .hugo_build.lock

server:
	python3 -m http.server -d public

preview: build server