class API < Grape::API
	prefix 'api'
	version 'v1', using: :path
	mount Client::Data
	mount Prescription::Info
	mount Doc::Description
end
