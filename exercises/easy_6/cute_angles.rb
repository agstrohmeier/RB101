def dms(float)
  hours = float.floor
  if hours == 0
    minutes = (float * 60).floor
    minutes.to_i > 0 ? seconds = (((float) * 60) % minutes) * 60 : seconds = 0
  else
    float % hours  > 0 ? minutes = ((float % hours).round(4) * 60).floor : minutes = 0
    minutes.to_i > 0 ? seconds = (((float % hours).round(4) * 60) % minutes) * 60 : seconds = 0
  end

  hours.to_s + '°' + minutes.to_s.rjust(2, '0') + "'" + seconds.round(0).to_s.rjust(2, '0') + %(")
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0.34)
p dms(0)
p dms(360)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0.34) == %(0°20'24")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
