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

  def age
    return nil unless self.birth_day
    d1  = self.birth_day.strftime("%Y%m%d").to_i
    d2  = Date.today.strftime("%Y%m%d").to_i
    return (d2 - d1) / 10000
  end

  def sex_readable
    return nil unless self.sex
    case self.sex
    when Agent::SEX::MALE
      return '男'
    when Agent::SEX::FEMALE
      return '女'
    when Agent::SEX::OTHER
      return 'その他'
    end
    return nil
  end

  class SEX
    MALE    = 0
    FEMALE  = 1
    OTHER   = 2
  end

end
