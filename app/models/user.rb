class User < ActiveRecord::Base
	has_many :connect_accounts
	has_many :tasks

	validates :nickname, :uniqueness => true,
											 :presence => true
	validates :name,     :presence => true
	validates :isAdmin,  :presence => true
	validates :email,    :uniqueness => true,
											 :presence => true

	def to_json(options={})
    options[:except] ||= [:password, :isAdmin]
    super(options)
  end
end
