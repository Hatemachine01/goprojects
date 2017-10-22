class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_description
      t.string :description
      t.string :image
      t.string :faq
      t.boolean :approved? , default:false

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
