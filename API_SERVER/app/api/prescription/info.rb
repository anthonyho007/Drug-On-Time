module Prescription
	class Info < Grape::API

		resource :prescription_data do 
			desc "List all prescriptions"

			get do
				PresTable.all
			end


			desc "create new prescription column for patient"

			params do
				requires :pres_name, type:String
				requires :pres_date, type:Date
				requires :num_p_day, type:Integer
				requires :amount_time, type:Integer
				requires :duration, type:Integer
				requires :number_id, type:String
			end
			post do
				PresTable.create!({
					
					pres_name:params[:pres_name],
					pres_date:params[:pres_date],
					num_p_day:params[:num_p_day],
					amount_time:params[:amount_time],
					duration:params[:duration],
					number_id:params[:number_id],
					})
			end
		end
	end
end
