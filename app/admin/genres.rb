ActiveAdmin.register Genre do
  permit_params :name, :description

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
      f.input :description
    end
    f.actions
  end
end
