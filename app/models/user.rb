class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role

  def admin?
    role.name == 'admin'
  end

  def student?
    role.name == 'student'
  end

  def instructor?
    role.name == 'instructor'
  end

end
