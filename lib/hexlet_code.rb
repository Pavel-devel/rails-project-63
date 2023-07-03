# frozen_string_literal: true

require_relative 'hexlet_code/version'
autoload :Tag, 'hexlet_code/tag'

module HexletCode
  class Error < StandardError; end

  # This module provides methods for building HTML
  def self.form_for(_attrs, url = '#', &block)
    form_tag = Tag.build('form', action: url, method: 'post')
    form_tag += block.call if block_given?
    form_tag += '</form>'
    form_tag
  end
end
