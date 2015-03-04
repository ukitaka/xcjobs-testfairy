# Xcjobs::Testfairy

TestFairy plugin for xcjobs

+ [xcjobs](https://github.com/kishikawakatsumi/xcjobs)
+ [testfairy](https://testfairy.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xcjobs-testfairy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xcjobs-testfairy

## Usage

```ruby
XCJobs::Distribute::TestFairy.new do |t|
  t.api_key = 'xxx...'
  t.file = File.join('build', "#{Example}.ipa")
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/xcjobs-testfairy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
