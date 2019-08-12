class FermentableAddition < ApplicationRecord
  belongs_to :recipe, dependant: :destroy
  belongs_to :fermentable
end
