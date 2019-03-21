class Project < ApplicationRecord
    has_many :person_projects, dependent: :destroy
    has_many :people, through: :person_projects
end
