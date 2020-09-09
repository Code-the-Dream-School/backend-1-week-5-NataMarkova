class Timer

  def seconds
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def padded(int)
    if int == 0
      return "00"
    elsif int < 10 && int != 0
      return "0" + int.to_s
    elsif int >= 10
      return int.to_s
    end
  end

  def time_string
    hours = @seconds / (60 * 60)
    minutes = (@seconds % (60 * 60)) / 60
    seconds = (@seconds % (60 * 60)) % 60
    # format("%02d:%02d:%02d", hours, minutes, seconds)
    padded(hours) + ':' + padded(minutes) + ':' + padded(seconds)
  end
end