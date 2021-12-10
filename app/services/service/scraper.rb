module Service
  module Scraper
    extend self

    def call(url)
      Nokogiri::HTML(URI.open(url))
    end
  end
end