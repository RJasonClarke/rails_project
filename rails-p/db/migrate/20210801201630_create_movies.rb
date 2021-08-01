class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
