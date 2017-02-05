module Doc
	class Description < Grape::API

		resource :doctor_data  do
			desc "List all Doctors"

			get do
				Doctor.all
			end

			desc "create new doctor"

			params do
				requires :name, type: String
				requires :doctor_u_id, type: Integer
				requires :email, type: String
				requires :password, type: String
			end

			post do
				Doctor.create!({
					name:params[:name],
					doctor_u_id:params[:doctor_u_id],
					email:params[:email],
					password:params[:password]
					})
			end

			desc "get doctor by email"

			params do 
				requires :email, type: String
			end

			get ':email' do 
				Doctor.where("email = ?", params[:email])
			end
		end
	end
end