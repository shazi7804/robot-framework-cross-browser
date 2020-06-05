.PHONY: all
all: test_chrome test_firefox test_opera

test_firefox:
	robot --variable browser:Firefox test_shazi.info.robot
test_chrome:
	robot --variable browser:Chrome test_shazi.info.robot
test_opera:
	robot --variable browser:Opera test_shazi.info.robot
test_edge:
	robot --variable browser:Edge test_shazi.info.robot
