class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :country_code
      t.jsonb :interests, default: [], array: true

      t.timestamps
    end
  end
end
