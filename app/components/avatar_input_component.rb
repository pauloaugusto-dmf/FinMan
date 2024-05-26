# frozen_string_literal: true

class AvatarInputComponent < ViewComponent::Base
  def initialize(form:, avatar_url: nil)
    @form = form
    @avatar_url = avatar_url
  end
end
