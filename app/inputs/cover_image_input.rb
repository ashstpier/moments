class CoverImageInput < SimpleForm::Inputs::FileInput
  def input
    out = ''
    if object.send("#{attribute_name}?")
      # append preview image to output
      # <%= image_tag @user.avatar.url(:thumb), :class => 'thumbnail', id: 'avatar' %>
      out << template.image_tag(object.send(attribute_name).url(), :class => 'thumbnail')
    end
    # append file input. it will work accordingly with your simple_form wrappers
    (out << @builder.file_field(attribute_name, input_html_options)).html_safe
  end
end