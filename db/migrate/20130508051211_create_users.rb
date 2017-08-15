class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :linkedin_uid
      t.string :name
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
