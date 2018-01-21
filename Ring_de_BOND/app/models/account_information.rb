class AccountInformation < ApplicationRecord
  
  validates :accountId, presence: true 
 has_secure_password
end
