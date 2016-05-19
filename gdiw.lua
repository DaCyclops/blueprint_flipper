-- adds functions for GDIW compatibility in blueprint flipping

local fG = {}

local function checkGDIW()
  -- checks if GDIW installed, checked on script load
  if data.raw["recipe"]["advanced-oil-processing-GDIW-3"] then
    return true
    
    fG = {"basic-oil-processing"="basic-oil-processing-GDIW-3"
      ,"basic-oil-processing-GDIW-3"="basic-oil-processing"
      ,"advanced-oil-processing"="advanced-oil-processing-GDIW-3"
      ,"advanced-oil-processing-GDIW-3"="advanced-oil-processing"
      ,"advanced-oil-processing-GDIW"="advanced-oil-processing-GDIW-2"
      ,"advanced-oil-processing-GDIW-2"="advanced-oil-processing-GDIW"
         }
    
  else
    return false
  end
end



local function flipGDIWrecipe(en, dr)
  -- flips recipie depending on direction
  
end
