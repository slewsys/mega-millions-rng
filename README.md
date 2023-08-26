![Build Status](https://github.com/slewsys/mega-millions-rng/actions/workflows/mega-millions-rng.yml/badge.svg)

# Mega Millions Lottery random number generator

- [Description](#description)
- [Synopsis](#synopsis)
- [Installation](#installation)
- [Source Installation](#source-installation)
- [Example](#example)

## Description

The `node` script `mega-millions-rng` uses a cryptographically secure
random number generator to pick a total of six uniformly distributed
random numbers output as a JSON array. The first five are in the range
[1-70] (inclusive) and last is in the range [1-25].

The `mega-millions-rng` package has no dependencies.

## Synopsis

```
mega-millions-rng
```

## Installation
To install from the web, on the command line run:

```bash
npm i -g mega-millions-rng
```

## Source Installation

To install from source, on the command line run:

```bash
git clone https://github.com/slewsys/mega-millions-rng
cd ./mega-millions-rng
```
and if GNU `make` and JSON parser `jq` are
available, run:

```bash
gmake check
gmake install
```

Otherwise, run:

```bash
npm pack .
npm install -g ./mega-millions-rng-1.0.0.tgz
```

## Example

```bash
mega-millions-rng
```

produces output in the format:

```
["29","33","46","56","57","10"]
```
