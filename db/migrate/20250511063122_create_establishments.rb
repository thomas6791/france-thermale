class CreateEstablishments < ActiveRecord::Migration[8.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.text :body
      t.timestamps
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :tel 
      t.string :email
      t.string :title
      t.string :meta_description
      t.string :canonical
    end
  end
end
