class CreateMasterGames < ActiveRecord::Migration
  def change
    create_table :master_games do |t|
      t.string :title
      t.string :voter

      t.timestamps
    end
  end
end
