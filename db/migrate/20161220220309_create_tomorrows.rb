class CreateTomorrows < ActiveRecord::Migration[5.0]
  def change
    create_table :tomorrows do |t|
      t.string :name

      t.timestamps
    end
  end
end
