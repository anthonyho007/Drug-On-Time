module Client
	class Data < Grape::API

		resource :client_infos do

			# return a list of clients
			desc "List all clients"
			get do 
				ClientInfo.all
			end

			# getting single clients
			desc "get a single clients"
			params do
				require :number_id, type: String
			end

			get ':number_id' do
				ClientInfo.find(params[:number_id])
			end

			# params check
			desc "create a new clients"
			params do 
				requires :name, type:String
				requires :email, type:String
				requires :number_id, type:String
			end

			# creating new clients
			post do 
				ClientInfo.create!({
					name:params[:name],
					email:params[:email],
					number_id:params[:number_id]
					})
			end

			# deleting clients
			desc "delete a client"
			params do
				require :number_id, type: String
			end
			delete ':number_id' do 
				ClientInfo.find(params[:number_id]).destroy!
			end


		end
	end			
end