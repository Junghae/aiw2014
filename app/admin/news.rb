ActiveAdmin.register News do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :content, :credit, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :wysihtml5,commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source]
      f.input :credit
      f.input :image, :as => :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :title
    column :image
    column :created_at
    column :updated_at
    actions
  end

  show do |ad|
    attributes_table do
      row :id
      row :title
      row :content do |m|
        m.content.html_safe
      end
      row :credit
      row :image do
        image_tag news.image_url(:thumb)
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

end
