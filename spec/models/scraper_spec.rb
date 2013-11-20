require 'spec_helper'

describe Scraper do

  describe ".new" do
    it "initializes with a url" do
      expect(Scraper.new("http://nytimes.com")).to be
      expect(Scraper.new("http://nytimes.com")).to_not raise_error
    end
    it "raises an error without a url" do
      expect { Scraper.new }.to raise_error(ArgumentError)
    end
  end

  describe "#get_hrefs" do #instance method

    it "returns array of links on page" do
      scraper = Scraper.new("http://jonl.org/")
      expect(scraper.get_hrefs.class).to eq(Array)
    end

    it "should get"


  end

  describe "#get_images" do

    it "returns array of images on a page" do
      scraper = Scraper.new("http://nytimes.com")
      expect(scraper.get_images.class).to eq(Array)
    end

  end


end
