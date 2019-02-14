class Comedian < ApplicationRecord
  belongs_to :user, -> { where role: "Comedian" }
end
