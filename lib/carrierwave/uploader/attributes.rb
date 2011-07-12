# encoding: utf-8

module CarrierWave
  module Uploader
    module Attributes
      def attributes=(attrs)
        @attributes = attrs
        process! unless attributes.values.map(&:blank?).all?
      end

      def attributes
        @attributes || {}
      end
    end # Attributes
  end # Uploader
end # CarrierWave

