class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    self.primary_key = :emp_no

    has_many :dept_emps, :class_name => 'DeptEmp', :foreign_key => :emp_no
    has_many :dept_managers, :class_name => 'DeptManager', :foreign_key => :emp_no
    has_many :salaries, :class_name => 'Salary', :foreign_key => :emp_no
    has_many :titles, :class_name => 'Title', :foreign_key => :emp_no
end
