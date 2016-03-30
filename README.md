## Quick Ruby hacks

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

# inside the gotchas folder
rspec --init
```

run all tests with
```
rspec *
```
