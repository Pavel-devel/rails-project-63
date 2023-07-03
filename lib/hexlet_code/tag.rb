# frozen_string_literal: true

module Tag
  def self.build(tag_name, attributes = {})
    attributes_str = attributes.map { |attr, value| "#{attr}=\"#{value}\"" }.join(' ')
    attributes_with_space = attributes_str.empty? ? '' : ' '
    content = block_given? ? yield : nil
    if content.nil?
      "<#{tag_name}#{attributes_with_space}#{attributes_str}>"
    else
      "<#{tag_name}#{attributes_with_space}#{attributes_str}>#{content}</#{tag_name}>"
    end
  end
end
