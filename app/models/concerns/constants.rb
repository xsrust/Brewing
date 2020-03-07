module Constants
  extend ActiveSupport::Concern

  module ClassMethods
    def time_units
      [:day, :hour, :minute]
    end
  end
end
