ActiveAdmin.register Author do
  permit_params :name, :bio

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :bio
    end
    f.actions
  end
end
