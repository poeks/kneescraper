require "kneescraper/version"
require 'faraday'
require 'nokogiri'

class Kneescraper

  def initialize url
    @url = url
    @conn = Faraday.new(:url => url)
  end

  def fetchall urls, xpath, &block
    results = []
    if urls.is_a? Array
      urls.each do |url|
        results << fetch(url, xpath, &block)
      end
    end
  end

  def fetch url_path, xpath, &block
    url = "#{@url}/#{url_path}"
    res = @conn.get(url)
    parse res.body
    process xpath, &block
  end

  def parse stuff
    @doc = Nokogiri::HTML stuff
  end

  def process xpath, &block
    # For example xpath = "//div[contains(@class,'album-highlight')]/a"

    results = @doc.xpath xpath
    results.each do |result|
      block.call result
    end

  end

end
