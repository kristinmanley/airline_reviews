class Flight < ApplicationRecord
  # Direct associations

  belongs_to :airline

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :route

  # Indirect associations

  # Validations

end
