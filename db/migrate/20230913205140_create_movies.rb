class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.text :description
      t.string :average_vote
      t.string :decimal
      t.references :production_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
