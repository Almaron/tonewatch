class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable,  :registerable, :validatable, :trackable
  devise :database_authenticatable, :rememberable, :recoverable

  has_many :records, dependent: :destroy
end
