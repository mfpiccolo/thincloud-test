# Thincloud::Test

## Description

Testing framework configuration generator for Thincloud apps with support for Rails applications and Rails Engines/Railties.

## Requirements

This gem requires Rails 3.2.11+ and has been tested on the following versions:

* 3.2.11

This gem has been tested against the following Ruby versions:

* 1.9.3


## Installation

Add this line to your application's Gemfile:

``` ruby
gem "thincloud-test"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install thincloud-test
```

## Usage

### Rails

This railtie manages testing dependencies and adds a generator to Rails, `thincloud:test`. Running the generator will run the `minitest-rails` generator and add application configuration files:

* Invoke the generator:

```
$ rails generate thincloud:test
```

### Rails Engine / Railtie

The gem manages the test framework dependencies for you and provides a command to bootstrap a test environment. Running the command will add `minitest` support and application configuration files:

* Invoke the generator:

```
$ thincloud-testify
```

## Contributing

1. [Fork it](https://github.com/newleaders/thincloud-test/fork_select)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a Pull Request](https://github.com/newleaders/thincloud-test/pull/new)


## License

* Freely distributable and licensed under the [MIT license](http://newleaders.mit-license.org/2012-2013/license.html).
* Copyright (c) 2012-2013 New Leaders ([opensource@newleaders.com](opensource@newleaders.com))
* [https://newleaders.com](https://newleaders.com)
