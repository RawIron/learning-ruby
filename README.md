## Quick Ruby hacks

[![Build Status](https://travis-ci.org/RawIron/scratch-ruby.svg)](https://travis-ci.org/RawIron/scratch-ruby)

### gotchas
* test language semantics
* test short recipes
* micro-benchmark

`gotchas` are implemented as tests.
the modules don't have a `main` function.
to run the `gotchas` simply run the tests.

#### Run Tests

install and init Ruby RSpec >= 2.1
```
sudo gem install rspec

# from the repo root
rspec --init
```

run all tests with
```
rspec gotchas/*
```
