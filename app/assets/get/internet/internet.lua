-- create the main log dir
shell.run("mkdir", "/api/internet/logs")

-- load generic http calls
os.loadAPI("api/internet/genericHttp")

-- get main settings file
print(genericHttp.get("http://fury-gamer.com:9000/player/melcom"))
