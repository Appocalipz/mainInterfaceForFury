os.loadAPI("api/internet/genericLog")
os.loadAPI("api/internet/json")

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
      json.decode(respondedText)

    elseif event == "http_failure" then
      stillRequesting = false
      genericLog.fail("Server didn't respond.")

    end
  end
end

function post(val)

end