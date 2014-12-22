ActiveAdmin.register University do

    permit_params :university_cate_id, :name, :establish_year, :address, :contact, :description, :image

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

    index do
      selectable_column
      id_column
      column "Area", :university_cate
      column :name
      column :establish_year
      column :address
      column :created_at
      column :updated_at
      actions
    end

    show do |ad|
      attributes_table do
        row :id
        row :university_cate_id
        row :name
        row :establish_year
        row :address
        row :contact
        row :description do |m|
          m.description.html_safe
        end
        row :image do
          image_tag university.image_url(:thumb)
        end
        row :created_at
        row :updated_at
      end
      active_admin_comments
    end



    form :html => {:multipart => true} do |f|
      f.inputs do
        f.input :university_cate_id, :as => :select, :collection => UniversityCate.all, :label => "Category"
        f.input :name, required: true
        f.input :establish_year, :label => "Establish Year", required: true
        f.input :address, required: true, :label => 'Nation'
        f.input :contact, required: true, as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source], block: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
        f.input :image, :as => :file
        f.input :description, as: :wysihtml5, height: :huge , commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source], block: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
      end
      f.actions
    end
  end