class WebUser < ActiveRecord::Base
    self.table_name = 'WebUsers'
    self.primary_key = :user_id

end
