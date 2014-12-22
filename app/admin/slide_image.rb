ActiveAdmin.register SlideImage do

  permit_params :name, :location, :description

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  show do |ad|
    attributes_table do
      row :id
      row :location do
        image_tag slide_image.location_url(:thumb)
      end
      row :description
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end


  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :location, :as => :file
      f.input :description

    end
    f.actions
  end


end
