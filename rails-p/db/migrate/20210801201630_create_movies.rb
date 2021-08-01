class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.resources :user
      t.resources :list

      t.timestamps
    end
  end
end
