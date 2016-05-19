-- adds functions for GDIW compatibility in blueprint flipping

local function checkGDIW()
  -- checks if GDIW installed, checked on script load
  if data.raw["recipe"]["advanced-oil-processing-GDIW-3"] then
    return true
 else
    return false
  end
end



local function flipGDIWrecipe(en)
  -- flips recipes
  if en.recipe=="basic-oil-processing" then
    return "basic-oil-processing-GDIW-3"
  elseif en.recipe=="basic-oil-processing-GDIW-3"  then
    return "basic-oil-processing"
    
  elseif en.recipe=="advanced-oil-processing"  then
    return "advanced-oil-processing-GDIW-2"
  elseif en.recipe=="advanced-oil-processing-GDIW-2"  then
    return "advanced-oil-processing"
    
  elseif en.recipe=="advanced-oil-processing-GDIW"  then
    return "advanced-oil-processing-GDIW-3"
  elseif en.recipe=="advanced-oil-processing-GDIW-3"  then
    return "advanced-oil-processing-GDIW"
    
  elseif en.recipe=="heavy-oil-cracking-GDIW" then
    return "heavy-oil-cracking"
  elseif en.recipe=="heavy-oil-cracking" then
    return "heavy-oil-cracking-GDIW"
    
  elseif en.recipe=="light-oil-cracking" then
    return "light-oil-cracking-GDIW"
  elseif en.recipe=="light-oil-cracking-GDIW" then
    return "light-oil-cracking"

  elseif en.recipe=="sulfur" then
    return "sulfur-GDIW"
  elseif en.recipe=="sulfur-GDIW" then
    return "sulfur"

  elseif en.recipe=="flame-thrower-ammo-GDIW" then
    return "flame-thrower-ammo"
  elseif en.recipe=="flame-thrower-ammo" then
    return "flame-thrower-ammo-GDIW"

  -- Should be fine, cant match something not installed
  if en.recipe=="bob-oil-processing"  then
    return "bob-oil-processing-GDIW"
  elseif en.recipe=="bob-oil-processing-GDIW"  then
    return "bob-oil-processing"

  else
    return en.recipe
  end
    
  
end
