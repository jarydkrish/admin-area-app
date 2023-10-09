ActiveAdmin.register Post do
  permit_params :title, :description, :content

  # Filterable attributes on the index screen
  filter :title

  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :description
    end

    f.inputs 'Content' do
      f.rich_text_area :content
    end
  end
end
