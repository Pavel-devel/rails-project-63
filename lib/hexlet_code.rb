# frozen_string_literal: true

require_relative "hexlet_code/version"

module HexletCode
  class Error < StandardError; end

  module Tag
    def self.build(tag_name, attributes = {}, &block)
      attributes_str = attributes.map { |attr, value| "#{attr}=\"#{value}\"" }.join(" ")
      content = block_given? ? yield : ''
      if content.empty?
        "<#{tag_name} #{attributes_str}>"
      else
        "<#{tag_name} #{attributes_str}>#{content}</#{tag_name}>"
      end
    end
  end
end
