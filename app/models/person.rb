class Person < ApplicationRecord
    has_many :person_projects, dependent: :destroy
    has_many :projects, through: :person_projects
end
