# encoding: utf-8

module CarrierWave
  module Uploader
    module Attributes

      attr_accessor :attributes

      def attributes
        @attributes || {}
      end
    end # Attributes
  end # Uploader
end # CarrierWave
