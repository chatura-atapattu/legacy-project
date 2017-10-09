json.extract! faq, :id, :group_id, :question, :answer, :created_at, :updated_at
json.url faq_url(faq, format: :json)
