class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      # 苗字
      t.string :last_name,       null: false
      t.string :last_name_kana,  null: false
      # 名前
      t.string :first_name,      null: false
      t.string :first_name_kana, null: false
      # 性別
      t.integer :sex
      # 年齢
      t.integer :age
      # 出身地
      t.string :home_city
      # 所在地
      t.string :location
      # アピールポイント
      t.string :appeal
      # ポイント
      t.integer :point
      # 画像
      t.binary :icon, limit: 10.megabyte
      t.string :icon_content_type

      t.timestamps
    end
  end
end
