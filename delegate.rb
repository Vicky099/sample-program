class User < ActiveRecord::Base
	has_many :clients
end

class Client < ActiveRecord::Base
	belongs_to :user
	has_many :contracts
end

class Contract < ActiveRecord::Base
	belongs_to :client
	delegate :user, to: :client
end


# So he if we want to find user from contract object we are here write query like
contract = Contract.find(1)
name = contract.client.user.name


# so here we are finding name of user via client model. using delegates we are skipping via model.
contract = Contract.find(1)
name = contract.user.name