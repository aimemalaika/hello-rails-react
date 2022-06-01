class CreateGreatings < ActiveRecord::Migration[7.0]
  def change
    create_table :greatings do |t|
      t.string :message

      t.timestamps
    end
  end
end
