module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Icu"      
    end
  end
end
