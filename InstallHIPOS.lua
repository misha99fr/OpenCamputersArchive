-- Загрузчик позаимствован из MineOS
-- за что им опять спасибо
-- и переделан до неузнаваемости
-- за что спасибо мне )))


local term = require("term")
local fs = require("filesystem")
local shell = require("shell")
local component = require("component")
local gpur = component.gpu

shell.execute("cd //")

past1 = {"0Dk9pP19","VZJwRDCF","3JwdYHiu","5bdfaPHS","HvZJ5rLU","yG44W0Pf","1ZWPeDeu","","","","","",""}
past2 = {"/lib/GUI.lua","/lib/image.lua","/lib/color.lua","/lib/advancedLua.lua","/lib/OCIF.lua","/lib/doubleBuffering.lua","/lib/colorlib.lua","","","","","",""}
past3 = {"k7TQSJXJ","hpxFpDCy","xQAy801R","QqH4dxPh","LXn5EzuS","bm8XW8P9","w4yFHyFJ","QZmdC8pR","t77aG1fG","4i7DfaSU","Jq42R3Yn","sx7MEZsV","sNwvNKuU","xm9YnWxZ","9VY6fmuD","hXbPiU3B","1ZWPeDeu","VZJwRDCF","fvbxKYbg","6KKc6xYK","JTWpxLu0","J6e6w6gi","UjuYfVa6","TKAiAmNW","kDzVTEvy","DJnj25Py","f8L2Uk24","NSrihDpV","Qa4yw4FR","CH67Hn0w","ZZCq1JqX","2R3EgfP7","zAmWM81B","W43QBC4h","71VSeBPD","WUaEwyHv","tUP8Qigc","","","","","","","","","","",""}
past4 = {"/HIPOS.lua","/HIPOS/nanobots.lua","/HIPOS/exit.lua","/HIPOS/Battleship.lua","/HIPOS/saper.lua","/HIPOS/copydisk.lua","/HIPOS/nc.lua","/autorun.lua","/HIPOS/IconsPic/Logo.pic","/HIPOS/IconsPic/LogoNano.pic","/HIPOS/IconsPic/folder.pic","/HIPOS/IconsPic/iconEXIT.pic","/HIPOS/IconsPic/iconNANO.pic","/HIPOS/IconsPic/iconNC.pic","/HIPOS/IconsPic/oslogoup.pic","/HIPOS/IconsPic/saper.pic","/lib/colorlib.lua","/lib/image.lua","/lib/advancedLua.lua","/lib/ECSAPI.lua","/lib/bridge.lua","/HIPOS/chat.lua","/HIPOS/IconsPic/chat.pic","/HIPOS/ops.lua","/lib/context.lua","/HIPOS/IconsPic/Update.pic","/HIPOS/IconsPic/HDD.pic","/HIPOS/IconsPic/ops.pic","/HIPOS/IconsPic/Floppy.pic","/HIPOS/pstb.lua","/lib/SHA2.lua","/lib/config.lua","/lib/unixtime.lua","/lib/xmlParser.lua","/HIPOS/IconsPic/logoN1.pic","/HIPOS/nanoplus.lua","/HIPOS/tquest.lua","","","","",""}
past5 =
{"Battleships.pic","nanobots2.pic","Pstb.pic","tq.pic","copyfile.pic","","","","","","","","","","","","","","","",""
}
past6 =
{"/HIPOS/IconsPic/battleship.pic","/HIPOS/IconsPic/nano2.pic","/HIPOS/IconsPic/pstb.pic","/HIPOS/IconsPic/tq.pic","/HIPOS/IconsPic/copyfile.pic","","",""
}
mfile = 8 -- ставить на один больше кол-ва файлов
mfile2 = 38 -- ставить на один больше кол-ва файлов
mfile3 = 6 -- ставить на 1 больше кол-ва файлов
mfileX = mfile2 + mfile3

gpur.setForeground(0x66B6FF)

exit = 1
while exit < 2 do
term.clear()
print ("---------------------------------")
print ("1 - HIPOS v.1.2 (first edition)")
print ("2 - HIPOS v.2.0 (android version)")
print ("---------------------------------")
print ("Enter number: ")
numver = tostring(io.read())
numver = numver..""
print (numver)
 if numver == "1" or numver == "2" then 
 exit = 3 
 else
 print ("Incorrect number! Please input 1 or 2 number.")
 print ("press enter for continue...")
 io.read()
 end
end


if fs.get("bin/edit.lua") == nil or fs.get("bin/edit.lua").isReadOnly() then
    print("Floppy disk filesystem detected: type \"install\" in command line and install OpenOS to your HDD. After that run HIPOS installer again.")
    print(" ")
else
-- -------------------------------------------загрузка первой версии
 if numver == "1" then
    local icoPath = ""
    print("Downloading HIPOS...")
    fs.makeDirectory("/HIPOS/IconsPic")
i= 1
term.clear()
print ("+----------------------------------------------------------+")
print ("!  Загрузка установщика HIPOS...    !  Общая загрузка:   % !")
print ("+==========================================================+")
term.setCursor(55,2)
print ("0")

while i < mfile do
term.setCursor(2,4)
print ("                                                  ")
print ("                                                  ")
print ("                                                  ")
term.setCursor (2,4)
str1 = "pastebin get -f "..past1[i].." "..past2[i]
print (str1)
term.setCursor (2,5)
shell.execute(str1)
	--fs.makeDirectory(fs.path(installerPath))
	--fs.makeDirectory(fs.path(installerPath))
    --loadfile("/bin/wget.lua")("https://raw.githubusercontent.com/Installer.lua", installerPath, "-fq")
    --dofile(installerPath)
term.setCursor(55,2)
prt = 100/mfile
prt = prt*i
print (math.floor(prt))
i = i + 1

end

-- предзагрузка закончена  начинается основная загрузка подключаем графику

shell.execute("cd //")
local buffer = require("doubleBuffering")
local GUI = require("GUI")


str1 = ""
prt = 0
local mainContainer = GUI.fullScreenContainer()
mainContainer:addChild(GUI.panel(1, 1, mainContainer.width, mainContainer.height, 0x2D2D2D))


scr1X, scr1Y = gpur.getResolution()
centX = math.floor((scr1X / 2)-25)

i = 1
while i < mfile2 do
term.clear()
--term.setCursor(2,4)
--print ("                                                  ")
--print ("                                                  ")
--print ("                                                  ")
--term.setCursor (2,4)
str1 = "pastebin get -f "..past3[i].." "..past4[i]
prt = 100/mfileX
prt = prt*i
prt = math.floor(prt)
-- print (math.floor(prt))

fullstrA = past4[i]..".........."

mainContainer:addChild(GUI.progressBar(centX, 2, 50, 0x3366CC, 0xEEEEEE, 0xEEEEEE, prt, true, true, "..........Load % ", " : "..fullstrA))

mainContainer:draw()
buffer.draw(true)
-- mainContainer:startEventHandling()
term.setCursor (2,scr1Y-2)
print ()
term.setCursor (2,scr1Y-2)
shell.execute(str1)
	--fs.makeDirectory(fs.path(installerPath))
	--fs.makeDirectory(fs.path(installerPath))
    --loadfile("/bin/wget.lua")("https://raw.githubusercontent.com/Installer.lua", installerPath, "-fq")
    --dofile(installerPath)
-- term.setCursor(55,2)
i = i + 1
end

i = 1
 while i < mfile3 do
 term.clear()
 prt = 100/mfileX
 prt = prt*(i+mfile2)
 prt = math.floor(prt)

 fullstrA = past6[i]..".........."

 mainContainer:addChild(GUI.progressBar(centX, 2, 50, 0x3366CC, 0xEEEEEE, 0xEEEEEE, prt, true, true, "..........Load % ", " : "..fullstrA))
 mainContainer:draw()
 buffer.draw(true)
 term.setCursor (2,scr1Y-2)
 print ()
 term.setCursor (2,scr1Y-2)
 loadfile("/bin/wget.lua")("https://github.com/alexexe82/MineCR/raw/master/"..past5[i], past6[i], "-fQ")
 i = i + 1
 end
term.setCursor (2,scr1Y-2)
shell.execute("reboot")

 elseif numver == "2" then
-- -------------------------------------------загрузка второй версии

    local installerPath = "/HIPOSAV/System/Installer.lua"
    fs.makeDirectory(fs.path(installerPath))
    loadfile("/bin/wget.lua")("https://raw.githubusercontent.com/alexexe82/HIPOSAV/master/master/installer.lua", installerPath, "-fQ")
    dofile(installerPath, ...)
 end
end