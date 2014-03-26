class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :lockable, :timeoutable , :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
