module ApplicationHelper
  def resource_name
    :user
  end

  def link_to_add_fields(name, form, association, locals={})
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", form: builder)
    end
    link_to(name, '#', class: [locals[:class], "add_fields"], data: {id: id, fields: fields.gsub("\n", "")})
  end

  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end
end
