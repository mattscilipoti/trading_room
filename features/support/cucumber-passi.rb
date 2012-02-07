module Passi::StepHelpers
  def default_finder(model)
    if model == Ticker
      :find_by_ticker
    else
      :find_by_name
    end
  end
end
