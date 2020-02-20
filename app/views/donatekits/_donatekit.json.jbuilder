json.extract! donatekit, :id, :kitImg, :kitName, :kitCategory, :kitDetails, :kitCost, :created_at, :updated_at
json.url donatekit_url(donatekit, format: :json)
