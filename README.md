# thincloud-test [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/newleaders/thincloud-test)

## Description

Opinionated testing framework dependencies and configuration for Ruby applications.

[New Leaders](https://newleaders.com) uses this gem to manage the following dependencies:

* [cane](https://github.com/square/cane)
* [guard](https://github.com/guard/guard)
* [guard-minitest](https://github.com/guard/guard-minitest)
* [minitest](https://github.com/seattlerb/minitest)
* [minitest-reporters](https://github.com/CapnKernul/minitest-reporters)
* [mocha](https://github.com/visionmedia/mocha)
* [rb-fsevent](https://github.com/thibaudgg/rb-fsevent)
* [simplecov](https://github.com/colszowka/simplecov)
* [terminal-notifier-guard](https://github.com/Springest/terminal-notifier-guard)
* [thor](https://github.com/wycats/thor)


## Requirements

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

The gem manages the test framework dependencies for you and provides a command to bootstrap a test environment.

The goal of `thincloud-test` is to be minimal by default but provide additional capabilities by following simple conventions.

If you just want to get started using `minitest`:

```ruby
require "thincloud/test"
```

To enable the default New Leaders conventions, run the following command:

```
$ thincloud-testify
```

This will bootstrap your project with a `test/` directory, a `minitest_helper.rb` with some default configuration, a `test/support/` directory with configuration for `mocha`, custom minitest formatters, a `Guardfile`, a default Travis CI configuration, and more! :tada: :balloon:


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
