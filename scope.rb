class Client < ActiveRecord::Base

	scope :get_clients, -> (state) {where(status: state) if state.present?}

	def self.get_clients_class(state)
		return where(status: state) if state,present?
	end
end


Client.get_clients('active')
#return the active record relation if state is passed as nil

Client.get_clients_class('active')
#return nil if state is passed as nil. so we can not use class methods in the chain calling methods. 



# to return the activerecord relation we need to explicitly handled this in our class method code like below
class Client < ActiveRecord::Base

	scope :get_clients, -> (state) {where(status: state) if state.present?}
	def self.get_clients_class(state)
		if state,present?
			return where(status: state) 
		else
			return all
		end
	end
end