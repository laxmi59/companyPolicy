class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :emp_id, :string
    add_column :users, :job_title, :string
    add_column :users, :dob, :date
    add_column :users, :gender, :string
    add_column :users, :mobile, :integer
    add_column :users, :address, :text
    add_column :users, :marital_status, :string
    add_column :users, :blood_group, :string
    add_column :users, :status, :string
    add_column :users, :avatar, :string
  end
end
