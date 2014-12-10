class Function < ActiveRecord::Base
  attr_accessible :name,
                  :function_user_projects_attributes,
                  :users_attributes,
                  :projects_attributes

  has_many :function_user_projects, :dependent => :destroy
  has_many :users, through: :function_user_projects
  has_many :projects, through: :function_user_projects
end
