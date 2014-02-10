class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      # 苗字
      t.string :last_name,       null: false
      t.string :last_name_kana
      # 名前
      t.string :first_name,      null: false
      t.string :first_name_kana
      # あだな
      t.string :nick_name

      # 生年月日
      t.date :birth_day

      # 性別
      t.integer :sex

      # 出身地
      t.string :home_city
      # 居住地
      t.string :location

      # 趣味
      t.string :hobby
      # 特技
      t.string :ability

      # 一言
      t.string :free_word
      # 抱負
      t.string :ambition
      # アピール
      t.string :appeal

      # 画像
      t.binary :icon, limit: 10.megabyte
      t.string :icon_content_type

      # メールアドレス
      t.string :email

      # ポイント
      t.integer :point

      t.timestamps
    end
    add_index :agents, :email, :unique => true
  end
end
