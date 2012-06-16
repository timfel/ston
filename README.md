# STON - Smalltalk Object Notation

**pharo** : [![Build Status](https://secure.travis-ci.org/dalehenrich/ston.png?branch=pharo)](http://travis-ci.org/dalehenrich/ston) 


A lightweight text-based, human-readable data interchange format 
for class-based object-oriented languages like Smalltalk.
It can be used to serialize domain level objects, 
either for persistency or network transport. 
As its name suggests, it is based on JSON (Javascript Object Notation). 
It adds symbols as a primitive value, class tags for object values and references. 
Implementations for Pharo Smalltalk, Squeak and Gemstone Smalltalk are available.


## Please read the [Smalltalk Object Notation](https://github.com/svenvc/ston/blob/master/ston-paper.md) paper

### Installation

```Smalltalk
Metacello new
	configuration: 'Ston';
	version: #'stable';
	repository: 'github://dalehenrich/ston:configuration';
	load.
```

*see [Metacello installation instructions](https://github.com/dalehenrich/metacello-work/blob/master/README.md)*

*Sven Van Caekenberghe* 
[MIT Licensed](https://github.com/svenvc/ston/blob/master/license.txt)
