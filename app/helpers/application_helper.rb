module ApplicationHelper
  def fa_icon(icon)
    return "<i class='fa fa-#{icon} fa-fw'></i>"
  end

  def fa_icon_2x(icon)
    return "<i class='fa fa-#{icon} fa-2x'></i>"
  end

  def fa_icon_stack2(icon)
    return "<i class='fa fa-#{icon} fa-stack-2x'></i>"
  end

  def fa_icon_stack1(icon)
    return "<i class='fa fa-#{icon} fa-stack-1x'></i>"
  end

  def fa_icon_lg(icon)
    return "<i class='fa fa-#{icon} fa-lg'></i>"
  end
end
