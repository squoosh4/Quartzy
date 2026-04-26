local t = Def.ActorFrame {Name = "DecorationsFile"}

t[#t+1] = LoadActor("mainDisplay") -- the primary score screen assets

-- thank you jole for sliding me your code for this
-- get_music_file_length(THEME:GetPathS("", "namehere")) is something id need if i implement shit with midgrades

t[#t+2] = Def.Sound {
        OnCommand = function(self)
        local score = SCOREMAN:GetMostRecentScore()
            
            -- grades go from Grade_Tier01 to Grade_Tier16
            -- quint is 1, then they go in thress from aaaa to a, and b/c/d/f are one grade (Grade_Failed is f)

            if score:GetWifeGrade() == "Grade_Tier01" then
                self:load(THEME:GetPathS("applause", "quint"))
            elseif score:GetWifeGrade() == "Grade_Tier02" or "Grade_Tier03" or "Grade_Tier04" then
                self:load(THEME:GetPathS("applause", "quad"))
            elseif score:GetWifeGrade() == "Grade_Tier05" or "Grade_Tier06" or "Grade_Tier07" then
                self:load(THEME:GetPathS("applause", "tri"))
            elseif score:GetWifeGrade() == "Grade_Tier08" or "Grade_Tier09" or "Grade_Tier10" then
                self:load(THEME:GetPathS("applause", "di"))
            elseif score:GetWifeGrade() == "Grade_Tier11" or "Grade_Tier12" or "Grade_Tier13" then
                self:load(THEME:GetPathS("applause", "mono"))
            elseif score:GetWifeGrade() == "Grade_Tier14" then
                self:load(THEME:GetPathS("applause", "ng"))
            elseif score:GetWifeGrade() == "Grade_Tier15" then
                self:load(THEME:GetPathS("applause", "ng"))
            elseif score:GetWifeGrade() == "Grade_Tier16" then
                self:load(THEME:GetPathS("applause", "ng"))
            else
                self:load(THEME:GetPathS("applause", "fail"))
            end
            self:play()
        end
}

return t