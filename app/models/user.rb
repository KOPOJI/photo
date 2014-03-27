class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :lockable, :timeoutable , :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :group
  has_one :profile
  has_many :albums

  before_create :set_group_id
  after_create :create_profile

  validates_presence_of :username
  validates_length_of :username, minimum: 4, maximum: 20
  validates_uniqueness_of :username

  acts_as_avatarable

  def set_group_id
    self.group_id = 4 if self.new_record?
    return true
  end
  def create_profile
    Profile.create user_id: self.id if Profile.find_by_user_id(self.id).nil?
    return true
  end

  def moderator?
    ['Администратор', 'Супер-Модератор', 'Модератор'].include? self.group.group
  end

  def admin?
    self.group.group == 'Администратор'
  end
end
