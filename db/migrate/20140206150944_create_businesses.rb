class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :outline
      t.string :company_name
      t.string :company_position

      t.timestamps
    end
  end
end
