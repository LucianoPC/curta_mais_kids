module AlertMessageHelper

  def get_alert_css_classes alert_name
    alert_css_classes = "alert alert-"

    alert_css_classes += "success" if alert_name == "notice"
    alert_css_classes += "danger" if alert_name == "alert"

    alert_css_classes
  end

end
