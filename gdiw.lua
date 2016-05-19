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
  if en.recipe = "basic-oil-processing" 
    return "basic-oil-processing-GDIW-3"
  elseif en.recipe = "basic-oil-processing-GDIW-3" 
    return "basic-oil-processing"
    
  elseif en.recipe = "advanced-oil-processing" 
    return "advanced-oil-processing-GDIW-2"
  elseif en.recipe = "advanced-oil-processing-GDIW-2" 
    return "advanced-oil-processing"
    
  elseif en.recipe = "advanced-oil-processing-GDIW" 
    return "advanced-oil-processing-GDIW-3"
  elseif en.recipe = "advanced-oil-processing-GDIW-3" 
    return "advanced-oil-processing-GDIW"
    
  elseif en.recipe = "heavy-oil-cracking-GDIW"
    return "heavy-oil-cracking"
  elseif en.recipe = "heavy-oil-cracking"
    return "heavy-oil-cracking-GDIW"
    
  elseif en.recipe = "light-oil-cracking"
    return "light-oil-cracking-GDIW"
  elseif en.recipe = "light-oil-cracking-GDIW"
    return "light-oil-cracking"

  elseif en.recipe = "sulfur"
    return "sulfur-GDIW"
  elseif en.recipe = "sulfur-GDIW"
    return "sulfur"

  elseif en.recipe = "flame-thrower-ammo-GDIW"
    return "flame-thrower-ammo"
  elseif en.recipe = "flame-thrower-ammo"
    return "flame-thrower-ammo-GDIW"

  -- Should be fine, cant match something not installed
  if en.recipe = "bob-oil-processing" 
    return "bob-oil-processing-GDIW"
  elseif en.recipe = "bob-oil-processing-GDIW" 
    return "bob-oil-processing"

  else
    return en.recipe
    
  
end
