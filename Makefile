lambda:
	npm install
	@echo "Factory package files..."
	@if [ ! -d build ] ;then mkdir build; fi
	@cp index.js build/index.js
	@cp QlueLambda.js build/QlueLambda.js
	@cp sample.env build/.env
	@if [ -d build/node_modules ] ;then rm -rf build/node_modules; fi
	@cp -R node_modules build/node_modules
	@cp -R lib build/
	@echo "Create package archive..."
	@cd build && zip -rq -9 ../cognicity-lambda-qlue.zip .
