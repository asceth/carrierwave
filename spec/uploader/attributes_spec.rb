# encoding: utf-8

require 'spec_helper'

describe CarrierWave::Uploader do

  before do
    @uploader_class = Class.new(CarrierWave::Uploader::Base)
    @uploader = @uploader_class.new
  end

  describe '#attributes' do

    it "should call process! when attributes are set" do
      attributes = {:x => 10, :y => 10, :w => 100, :h => 100}
      @uploader.should_receive(:process!).and_return(false)

      @uploader.attributes = attributes
    end

    it "should not call process! if all attributes are blank" do
      attributes = {:x => nil, :y => nil}
      @uploader.should_not_receive(:process!).and_return(false)

      @uploader.attributes = attributes
    end
  end
end
