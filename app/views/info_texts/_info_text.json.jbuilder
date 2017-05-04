json.extract! info_text, :id, :name, :till_id, :is_header, :text, :bold, :underline, :double_width, :double_height, :quadruple, :center_aligned, :right_aligned, :created_at, :updated_at
json.url info_text_url(info_text, format: :json)
