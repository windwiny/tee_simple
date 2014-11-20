# TeeSimple

write output to $stdout and $stderr's content to other file or io object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tee_simple'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tee_simple

## Usage

    require 'tee_simple'
    TeeSimple.install('/tmp/tee1.log')

    puts 'abcd',1234
    STDERR.puts 'defg',5678
    

    # /tmp/tee1.log
    abcd
    1234
    defg
    5678
    
    # STDOUT
    abcd
    1234
    defg
    5678


## Contributing

1. Fork it ( https://github.com/[my-github-username]/tee_simple/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
