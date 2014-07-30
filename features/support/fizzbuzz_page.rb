require 'calabash-cucumber/ibase'

class FizzBuzzPage < Calabash::IBase

  def the_number
    label_at_index 0
  end

  def the_response
    label_at_index 1
  end

  def increment
    touch "view:'UIStepper'", :offset => { :x => 10, :y => 0 }
  end

  def decrement
    touch "view:'UIStepper'", :offset => { :x => -10, :y => 0 }
  end

private

  def label_at_index index
    label("UILabel index:#{index}").first
  end

end
