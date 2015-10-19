function info(data)
  local logFile = fs.open("/api/internet/logs/log.txt", fs.exists("log.txt") and "a" or "w")
  logFile.write("[INFO]: ")
  logFile.writeLine(data)
  logFile.close()
end

function success(data)
  local logFile = fs.open("/api/internet/logs/log.txt", fs.exists("log.txt") and "a" or "w")
  logFile.write("[SUCCESS]: ")
  logFile.writeLine(data)
  logFile.close()
end

function warn(data)
  local logFile = fs.open("/api/internet/logs/log.txt", fs.exists("log.txt") and "a" or "w")
  logFile.write("[WARN]: ")
  logFile.writeLine(data)
  logFile.close()
end

function error(data)
  local logFile = fs.open("/api/internet/logs/log.txt", fs.exists("log.txt") and "a" or "w")
  logFile.write("[ERROR]: ")
  logFile.writeLine(data)
  logFile.close()
end

function fail(data)
  local logFile = fs.open("/api/internet/logs/log.txt", fs.exists("log.txt") and "a" or "w")
  logFile.write("[FAIL]: ")
  logFile.writeLine(data)
  logFile.close()
end

