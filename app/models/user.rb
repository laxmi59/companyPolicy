class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :role_id, presence: true

  belongs_to :role
  #enum status: [:published, :unpublished, :not_set]
  #rails g migration add_fields_to_users fname:string lname:string emp_id:string dob:date gender:string mobile:integer location:string marital_status:string, blood_group:string status:string
end
