class Skill < ApplicationRecord
  validated_presence_of :title, :percent_utilized
end
