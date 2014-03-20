json.array!(@beans) do |bean|
  json.extract! bean, :id, :snippet, :lang, :description
  json.url bean_url(bean, format: :json)
end
