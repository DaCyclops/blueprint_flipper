-- adds functions for GDIW compatibility in blueprint flipping

local function checkGDIW()
  -- checks if GDIW installed, checked on script load
  if data.raw["recipe"]["advanced-oil-processing-GDIW-3"] then
    return true
  else
    return false
  end
end

local function flipGDIWrecipe(en, dr)
  -- flips recipie depending on direction
  
end
