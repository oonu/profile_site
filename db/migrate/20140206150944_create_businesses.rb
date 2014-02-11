class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.integer :agent_id
      t.string :outline
      t.string :company_name
      t.string :company_position

      t.timestamps
    end
    add_index :businesses, :agent_id
  end
end
