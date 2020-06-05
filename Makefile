.PHONY: all
all: test_chrome test_firefox

test_firefox:
	robot --variable browser:Firefox test_shazi.info.robot
test_chrome:
	robot --variable browser:Chrome test_shazi.info.robot