MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR



def after_midnight(time)
  minutes = ((time[0..1].to_i * MINUTES_PER_HOUR) + time[3..4].to_i)%1440
end

def before_midnight(time)
  minutes = (MINUTES_PER_DAY - (time[0..1].to_i * MINUTES_PER_HOUR + time[3..4].to_i))%1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
