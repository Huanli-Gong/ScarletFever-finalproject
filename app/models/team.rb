class Team < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :presentations, dependent: :destroy

    validates_presence_of :name
    validates_uniqueness_of :name
    
    accepts_nested_attributes_for :users
    accepts_nested_attributes_for :presentations,allow_destroy: true,reject_if: :all_blank
end
