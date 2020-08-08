module PropertiesHelper
  def converthing_jpy(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end
end
