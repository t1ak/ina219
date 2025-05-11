-- 100 ina219 main --date= 2025-05-10 23:00:18

ina = require("ina219lib")
ina.init()

function check()
  --ok, json = pcall(cjson.encode, ina.getVals())
  local wyn=ina.getVals()
  print(string.format("U: %.2f V I: %.1f mA W: %.0f mW",wyn.voltageV,wyn.currentmA,wyn.powerW))
  --ina.checkVals()
end

TimerG=tmr.create()
TimerG:register(5000, tmr.ALARM_AUTO,check)
TimerG:start()
