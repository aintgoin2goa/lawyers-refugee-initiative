.PHONY: test

clean:
	rn -rf node_modules/

install:
	npm install

build:
	#./node_modules/.bin/browserify src/js/main.js -o dist/main.js -t babelify --debug
	./node_modules/.bin/node-sass src/scss/main.scss --output dist/
	./node_modules/.bin/node-sass src/scss/ie8.scss --output dist/
	cp src/index.html dist/index.html

run:
	./node_modules/.bin/static-server -p 1209

deploy:
	node ./scripts/deploy.js
