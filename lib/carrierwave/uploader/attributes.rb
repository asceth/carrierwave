# encoding: utf-8

module CarrierWave
  module Uploader
    module Attributes
      def attributes=(attrs)
        @attributes = attrs
        recursively_apply_attributes_to_versions

        recreate_versions! unless attributes.values.map(&:blank?).all?
      end

      def attributes
        @attributes || {}
      end

      def recursively_apply_attributes_to_versions
        versions.each do |name, version|
          version.instance_variable_set(:@attributes, attributes)
        end
      end
    end # Attributes
  end # Uploader
end # CarrierWave

