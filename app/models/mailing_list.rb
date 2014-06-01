class MailingList < ActiveRecord::Base
  default_scope ->{ order(created_at: :desc) }
  validates :email, format: /@/
end
