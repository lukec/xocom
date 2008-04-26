JS_TARGET=web/xocom.js

all: $(JS_TARGET)

clean:
	rm -f $(JS_TARGET) *.pyc

web/xocom.js: web/xo.js web/jquery.js Makefile
	cat web/jquery.js > $(JS_TARGET)
	echo "jQuery.noConflict();" >> $(JS_TARGET)
	cat web/xo.js >> $(JS_TARGET)
