class Task < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :description
end
