# Kneescraper

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'kneescraper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kneescraper

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/kneescraper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Examples

    ks = Kneescraper.new "http://google.com"

    # Fetch data in <p> tags with
    # list of urls
    ks.fetchall ["/"], "//p" do |s|
      puts s.inspect
    end

    # or just one url
    ks.fetch "/", "//p" do |stuff|
      puts stuff.inspect
    end

