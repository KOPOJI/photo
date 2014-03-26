class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :lockable, :timeoutable , :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :group
  has_one :profile

  before_create :set_group_id
  after_create :create_profile

  def set_group_id
    self.group_id = 4 if self.new_record?
    return true
  end
  def create_profile
    Profile.create user_id: self.id if Profile.find_by_user_id(self.id).nil?
    return true
  end

end
