.PHONY: build serve clean preview server

serve: 
	hugo server -p 8000

build: 
	HUGO_BASEURL="/" hugo --minify --gc

clean:
	rm -rf public

server:
	python3 -m http.server -d public -p 8000

preview: clean build server