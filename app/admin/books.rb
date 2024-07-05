# app/admin/books.rb
ActiveAdmin.register Book do
  permit_params :title, :description, :author_id, :genre_id

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :author
    column :genre
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :author
      f.input :genre
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :author
      row :genre
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
