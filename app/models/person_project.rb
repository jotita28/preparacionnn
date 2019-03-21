class PersonProject < ApplicationRecord
  belongs_to :person
  belongs_to :project
end
