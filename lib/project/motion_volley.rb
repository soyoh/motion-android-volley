module MotionVolley

  def self.convert_method(method)
    case method
    when :get
      return 0
    when :post
      return 1
    when :put
      return 2
    when :delete
      return 3
    when :head
      return 4
    when :options
      return 5
    when :trace
      return 6
    when :patch
      return 7
    else
      puts "Unknown event type #{method}"
    end
  end

end