# Bloc [![Build status](https://travis-ci.org/pharo-graphics/Bloc.svg?branch=master)](https://travis-ci.org/pharo-graphics/Bloc) [![Build status](https://ci.appveyor.com/api/projects/status/x6vjn4ccy37xasrd?svg=true)](https://ci.appveyor.com/project/GlennCavarle/bloc) [![Coverage Status](https://coveralls.io/repos/github/pharo-graphics/Bloc/badge.svg?branch=master)](https://coveralls.io/github/pharo-graphics/Bloc?branch=master)

Bloc is a low-level UI infrastructure & framework for Pharo

Main maintainers : [Glenn Cavarlé](https://github.com/GlennCavarle) & [Aliaksei Syrel](https://github.com/syrel)


# Installation

## Bloc Zeroconf Script

This script downloads the latest Pharo 60 Image + the stable Pharo VM for 60 and installs the latest version of Bloc.

`wget -O- https://goo.gl/YYHH5a | bash`


## Last version based on Athens

Version v0.10 is the last version with Athens support "out of the box".

This means that libMoz2D binary is not needed for this version.

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc:v0.10/src';
    load
```


## All-in-one developement versions 
[Bloc](https://github.com/pharo-graphics/Bloc) + [Sparta](https://github.com/syrel/Sparta) + [Moz2D](https://github.com/syrel/Moz2D) + [Iceberg](https://github.com/npasserini/iceberg)

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#git:core
```

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#git:development
```
## All-in-one light versions 
[Bloc](https://github.com/pharo-graphics/Bloc) + [Sparta](https://github.com/syrel/Sparta) + [Moz2D](https://github.com/syrel/Moz2D)

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#git:core
```

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#git:development
```


## All-in-one code-only versions 
[Bloc](https://github.com/pharo-graphics/Bloc) + [Sparta](https://github.com/syrel/Sparta)

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#file:core
```

```smalltalk
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc/src';
    load:#file:development
```



