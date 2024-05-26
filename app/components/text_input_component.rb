# frozen_string_literal: true

class TextInputComponent < ViewComponent::Base
  def initialize(form:, type: :text, field:, placeholder: nil, id: nil, data_conloller: nil, **options)
    @form = form
    @type = type
    @field = field
    @placeholder = placeholder || field.to_s.humanize
    @id = id
    @data_conloller = data_conloller
    @options = options
  end
end
