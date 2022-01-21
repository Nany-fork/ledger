class CreateAcumulateds < ActiveRecord::Migration[7.0]
  def change
    create_table :acumulateds do |t|
      t.string :per_mount
      t.integer :total_balance
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
