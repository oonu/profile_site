class Agent < ActiveRecord::Base
  def update(params)
    self.icon               = params[:icon].read         # <= バイナリをセット
    self.icon_content_type  = params[:icon].content_type # <= ファイルタイプをセット
    self.save
  end
end
