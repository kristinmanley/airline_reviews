class Flight < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :route

  # Indirect associations

  # Validations

end
