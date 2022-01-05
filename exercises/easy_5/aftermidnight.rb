MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(mins)
  if mins == 0
    time = "00:00"
  elsif mins > 0
    time = calc_positive_time(mins)
  else
    time = calc_negative_time(mins)
  end
  p time
  time
end

def calc_positive_time(mins)
  output = mins.divmod(MINUTES_PER_HOUR)
  output[0] > HOURS_PER_DAY ? hours = (output[0])%HOURS_PER_DAY : hours = output[0]
  minutes =  output[1]
  add_zero(hours) + ":" + add_zero(minutes)
end

def calc_negative_time(mins)
  output = mins.divmod(MINUTES_PER_HOUR)
  output[0].abs() > HOURS_PER_DAY ? hours = (HOURS_PER_DAY+output[0])%HOURS_PER_DAY : hours = HOURS_PER_DAY+output[0]
  minutes =  output[1]
  add_zero(hours) + ":" + add_zero(minutes)
end

def add_zero(num)
  if num.to_s.length == 1
    str = "0" + num.to_s
  else
    str = num.to_s
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
