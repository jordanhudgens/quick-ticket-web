class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets, dependent: :destroy
  has_many :labor_entries, dependent: :destroy

  after_initialize :set_defaults

  def set_defaults
    self.role ||= "Employee"
  end
end
