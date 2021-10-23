# execs-chocolatye-package

* A package source : https://github.com/daeho-ro/execs
* A package repository : https://community.chocolatey.org/packages/execs

## Build

To build the package, `.nuspec` file is required and just run:

```
choco pack 
```

## Push

To push the package, you need the chocolatey api key from https://chocolatey.org/account. After setting the api key, run:

```
choco push -s https://push.chocolatey.org/
```
