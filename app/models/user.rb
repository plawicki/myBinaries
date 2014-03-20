class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :rememberable, :recoverable,
  devise :database_authenticatable, :registerable,
          :trackable, :validatable, :recoverable
end
