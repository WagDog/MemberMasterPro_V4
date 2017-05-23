module MembersHelper
  def format_show_field(field_name, field_value)
    return "<h4>#{field_name}: </h4><small> #{field_value}</small>"
  end
end
