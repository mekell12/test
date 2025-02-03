-- This is my guess on how
-- GitHub calculates the
-- percentage for each
-- programming language
-- used in a repository.
--
-- Please correct me if
-- you spot an error in
-- the code here.

local langs = {
  Lua = 1;
  JavaScript = 2;
  Java = 3;
  Python = 4;
}
local files = {
  {
    Name = "Main";
    Extension = ".java";
    Language = langs.Java;
    Bytes = 2139;
  };
  {
    Name = "Character";
    Extension = ".java";
    Language = langs.Java;
    Bytes = 18893;
  };
  {
    Name = "program";
    Extension = ".py";
    Language = langs.Python;
    Bytes = 1019;
  };
  {
    Name = "robloxMoment";
    Extension = ".lua";
    Language = langs.Lua;
    Bytes = 574;
  };
  {
    Name = "robloxMomentModule";
    Extension = ".lua";
    Language = langs.Lua;
    Bytes = 333;
  };
  {
    Name = "websiteScript";
    Extension = ".js";
    Language = langs.JavaScript;
    Bytes = 7599;
  };
}

function sumTable(table: {number})
  local SUM = 0
  for _, v in table do
    SUM += v
  end
  return SUM
end

local totalBytes: {number} = {}
for i = 1, #langs do
  table.insert(totalBytes, 0)
end
for i, v in langs do
  for _, vv in files do
    if vv.Language == v then
      totalBytes[i] += vv.Bytes
    end
  end
end

function enumGetText(index: number)
  if index == 1 then return "Lua"
  elseif index == 2 then return "JavaScript"
  elseif index == 3 then return "Java"
  elseif index == 4 then return "Python"
  else return nil end
end
for i, v in totalBytes do
  print("This program is " .. tostring(math.round(v / sumTable(totalBytes) * 10000) / 100) .. "% " .. enumGetText(i))
end
