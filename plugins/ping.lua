--start by @mohammadrezajiji
local datebase = {
  "انلاینم سرورم",

  }
local function run(msg, matches) 
return datebase[math.random(#datebase)]
end
return {
  patterns = {
    "^[/#+×!$]([Pp][Ii][Nn][Gg])",
    "^(انلاینی)$",
  },
  run = run
}

--end by mohammadrezajiji
--Channel @titantims