# frozen_string_literal: true

# This class is the base for all models in the application.
# It inherits from ActiveRecord::Base, which provides a great deal of functionality to your Rails models.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
