# Mapiq One Test Automation Framework

Test automation framework (based on Robot Framework) for testing
the User, Admin, and Accounts web apps of Mapiq One (formerly Office Shifts).

## Description

The main goal of this framework is to run functional tests on the mentioned web apps.

It is based on the [Robot Framework](https://robotframework.org/), and it uses the [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
to perform the automation.

---


## Prerequisites

The following packages/libraries are required for using this test automation framework.

### Robot Framework
Can be installed with:
```
pip install robotframework
```

### SeleniumLibrary
This will install SeleniumLibrary (and Robot Framework if not installed yet):
```
pip install robotframework-seleniumlibrary
```

### Running the tests
Tests can be run by opening the "Terminal" in Visual Studio Code, and by triggering "robot -d results Tests" for all Tests, or "robot -d results Tests/"Name of
the test folder" for a group of tests, or a single test by triggering "robot -d results Tests/"Name of the test folder"/"Name of the particular test"
```

### Where to find test results
Test results are generated by the Robot Framework and can be found in the "Results" folder of a project, after running the tests. When opened, the folder contains the
"Log" file of Edge browser. After clicking on it, Edge opens with all statistics pieces of information of tests that were triggered: Time duration, Total Tests, Pass, Fail,
and a very nice display that enables us to see on which step the test failed exactly if it fails. 