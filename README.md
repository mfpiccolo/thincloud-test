# Thincloud::Test

## Description

Test harness generator for new Thincloud apps.

## Requirements

This gem requires Rails 3.2+ and has been tested on the following versions:

* 3.2

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

This gem adds a generator to Rails, `thincloud:test`. Running the generator will install test-related gems, adds a minitest-based spec directory and application configuration:

* Invoke the generator:

```
$ rails generate thincloud:test
```

## Contributing

1. [Fork it](https://github.com/newleaders/thincloud-test/fork_select)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a Pull Request](https://github.com/newleaders/thincloud-test/pull/new)


## License

* Freely distributable and licensed under the MIT-style license. See LICENSE file for details.
* Copyright (c) 2012 New Leaders
* https://newleaders.com

