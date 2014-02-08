class Agent < ActiveRecord::Base
  has_many :businesses

  def update(params)
    self.icon               = params[:icon].read         # <= バイナリをセット
    self.icon_content_type  = params[:icon].content_type # <= ファイルタイプをセット
    self.save
  end
end
