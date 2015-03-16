json.array!(@certifications) do |certification|
  json.extract! certification, :id, :certification_name, :certification_type, :certification_provider, :certification_issued, :certification_expiry, :certification_description, :user_id
  json.url certification_url(certification, format: :json)
end
