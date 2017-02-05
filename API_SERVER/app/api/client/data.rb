module Client
	class Data < Grape::API

		resource :client_infos do

			# return a list of clients
			desc "List all clients"
			get do 
				ClientInfo.all
			end

			# getting single clients
			# desc "get a single clients"
			# params do
			# 	requires :number_id, type: String
			# end

			# get '/client' do
			# 	ClientInfo.find(params[:number_id])
			# end

			# desc "hitting gift points"
			# params do 
			# 	requires :email, type:String
			# end
			# post 'hit' do
			# 	ClientInfo.where("email = ?", params[:email]).update.increment!(:gift_point)
			# end


			# params check
			desc "create a new clients"
			params do 
				requires :name, type:String
				requires :email, type:String
				requires :number_id, type:String
				requires :password, type:String
			end

			# creating new clients
			post do 
				ClientInfo.create!({
					name:params[:name],
					email:params[:email],
					number_id:params[:number_id],
					password:params[:password],
					gift_point:0
					})
			end
			desc "login"
			params do
				requires :email, type:String
			end

			get 'login' do 
				ClientInfo.where("email = ?", params[:email])
			end

			# deleting client
			desc "delete a client"
			params do
				requires :id, type: String
			end
			delete ':id' do 
				ClientInfo.find(params[:id]).destroy!
			end

			#updating client


		end
	end			
end