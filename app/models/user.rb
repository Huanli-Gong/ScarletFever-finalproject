class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_and_belongs_to_many :teams
    has_many :feedbacks, dependent: :destroy
    # accepts_nested_attributes_for :teams
    validates_uniqueness_of :username, message: 'has been taken'
    validates_uniqueness_of :email
    validates_presence_of :username, :email

  after_initialize do
    if new_record?
      self.password ||= 'password'
    end
  end



  def self.to_csv
    attributes = %w{team_id username email first_name last_name admin}
    CSV.generate(headers: true) do |csv|
        csv << attributes
        all.each do |user|
          csv << user.attributes.values_at(*attributes)
        end
    end
  end

end
