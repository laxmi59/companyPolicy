class User < ApplicationRecord
  GENDER = ['Male', 'Female'].freeze
  MARITALSTATUS = ['Married', 'Single'].freeze
  BLOODGROUP = ['A+', 'A-','B+', 'B-','AB+', 'AB-','O+', 'O-'].freeze
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }, on: :create
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create
  validates :role_id, presence: true, on: :create

  belongs_to :role
  #enum status: [:published, :unpublished, :not_set]
  #rails g migration add_fields_to_users fname:string lname:string emp_id:string dob:date gender:string mobile:integer location:string marital_status:string, blood_group:string status:string


end
