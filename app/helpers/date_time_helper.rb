module DateTimeHelper

  MONTHS = ["Janeiro", "Fevereiro", "Março", "Abril",
            "Maio", "Junho", "Julho", "Agosto", "Setembro",
            "Outubro", "Novembro", "Dezembro"]

  def self.format_date time_with_zone
    "#{time_with_zone.day} de #{MONTHS[time_with_zone.month]} as #{time_with_zone.hour}h"
  end
end
