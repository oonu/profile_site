class Agent < ActiveRecord::Base
  has_many :businesses
  accepts_nested_attributes_for :businesses

  def update(params)
    if params[:icon]
      self.icon               = params[:icon].read         # <= バイナリをセット
      self.icon_content_type  = params[:icon].content_type # <= ファイルタイプをセット
    end
    self.save
  end
end
