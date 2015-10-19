os.loadAPI("api/internet/genericLog")
os.loadAPI("api/internet/json")

function post(site, data)
  local handle = http.post(site, "request=" .. textutils.urlEncode(data))
  local respondedText = handle.readAll()
  genericLog.success(respondedText)
  return json.decode(respondedText)
end

function get(site)
  http.request(site)
  local stillRequesting = true
  while stillRequesting do
    local event, url, sourceText = os.pullEvent()
    if event == "http_success" then
      stillRequesting = false
      local respondedText = sourceText.readAll()
      sourceText.close()
      genericLog.success(respondedText)
      return json.decode(respondedText)

    elseif event == "http_failure" then
      stillRequesting = false
      genericLog.fail("Server didn't respond.")
      return nil

    end
  end
end
