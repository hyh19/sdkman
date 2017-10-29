# SDKMAN Practice

http://sdkman.io/

https://github.com/sdkman

https://github.com/sdkman/sdkman-cli

## [Installation](http://sdkman.io/install.html)

**[install-sdkman.sh](https://github.com/mrhuangyuhui/sdkman-practice/blob/master/install-sdkman.sh)**
```bash
curl -L https://raw.githubusercontent.com/mrhuangyuhui/sdkman/master/install-sdkman.sh | sh
```
***Only requires curl and zip/unzip to be present on your system.***
```bash
## CentOS ##
yum install -y curl zip unzip

## Debian/Ubuntu ##
apt-get install curl zip unzip -y
```

Simply open a new terminal and enter:
```bash
curl -s "https://get.sdkman.io" | bash
```

Next, open a new terminal or enter:
```bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

Lastly, run the following code snippet to ensure that installation succeeded:
```bash
sdk version
```

## [Usage](http://sdkman.io/usage.html)

### Help

You can get basic help by running the following command:
```bash
$ sdk help
```

### Installing an SDK

Install the latest stable version of your SDK of choice (say, Java JDK) by running the following command:
```bash
$ sdk install java
```

Need a specific version of an SDK? Simply qualify the version you require:
```bash
$ sdk install scala 2.12.1
```

### Remove Version

Remove an installed version.
```bash
$ sdk uninstall scala 2.11.6
```

### List Candidates

To get a listing of available Candidates:
```bash
$ sdk list
```

### List Versions

To get a listing of Candidate Versions:
```bash
$ sdk list groovy
```

### Default Version

Chose to make a given version the default:
```bash
$ sdk default scala 2.11.6
```
This will ensure that all subsequent shells will start with version 2.11.6 in use.

### Current Version(s)

To see what is currently in use for a Candidate:
```bash
$ sdk current java
```

To see what is currently in use for all Candidates:
```bash
$ sdk current
```

## [SDK Installation Candidates](http://sdkman.io/sdks.html)
