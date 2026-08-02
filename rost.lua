-- dopamine.wtf OBFUSCATOR v1
if not math.ldexp then math.ldexp = function(x, n) return x * 2 ^ n end end
if not math.frexp then math.frexp = function(x)
    if x == 0 then return 0, 0 end
    local exp = math.floor(math.log(math.abs(x)) / math.log(2)) + 1
    local mantissa = x / 2 ^ exp
    return mantissa, exp
end end
if not loadstring and load then loadstring = load end
if not loadstring then loadstring = function(s) return load(s) end end

local qACujvVKhDU,JuxqvRMhBcl,uofVwpDUZ,HiBdrOXRWuln,YjeanuOKx,CnNOmZmbEvte,KyftjIkwACY,xQtxUXtvoCv,lqXJCXnZN,NOABFGWbEAdZ,liisJTFQukG,EJJFGJzBaV,iviCgNiiN,ufXYctZcvy,AIOCXlgBhR,IyezgoBqpd,juIzqWSRq,IUsvlNgZ,MVIsjrxsL,cBPicYCOruP,JysPUqghcFa,dMhfsyVqd,mESoEPRFEiB,IwjVqIvVC,GFTfMNDrSk,NjoqWAHRVF,NiqVkCsreOn,apmAMwITRcGN,DoxmsGFNJol,OgzHDBUckUim,HVkmtkpiQ,hwbtChwB,WeBDwxkBP,BFVZkKTBKSn,qHlNVKlWbTf,qIHrDNnfIZJW
qACujvVKhDU=assert;JuxqvRMhBcl=collectgarbage;uofVwpDUZ=ipairs;HiBdrOXRWuln=next;YjeanuOKx=pairs;CnNOmZmbEvte=pcall;KyftjIkwACY=print;xQtxUXtvoCv=rawget;lqXJCXnZN=rawset;NOABFGWbEAdZ=select;liisJTFQukG=tonumber;EJJFGJzBaV=tostring;iviCgNiiN=unpack;ufXYctZcvy=xpcall;AIOCXlgBhR=math.abs;IyezgoBqpd=math.asin;juIzqWSRq=math.atan;IUsvlNgZ=math.deg;MVIsjrxsL=math.floor;cBPicYCOruP=math.huge;JysPUqghcFa=math.max;dMhfsyVqd=math.min;mESoEPRFEiB=math.rad;IwjVqIvVC=math.random;GFTfMNDrSk=math.sin;NjoqWAHRVF=math.tan;NiqVkCsreOn=string.find;apmAMwITRcGN=string.format;DoxmsGFNJol=string.gsub;OgzHDBUckUim=string.len;HVkmtkpiQ=string.lower;hwbtChwB=string.match;WeBDwxkBP=table.concat;BFVZkKTBKSn=table.insert;qHlNVKlWbTf=table.remove;qIHrDNnfIZJW=table.unpack;
do
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    local QguixqQYzUva = cloneref(game:GetService("HttpService"))
    local MxcAplwMTp = QajQeTLyeF.new("ScreenGui")
    MxcAplwMTp.Name = QguixqQYzUva:GenerateGUID(false)
    MxcAplwMTp.IgnoreGuiInset = true
    MxcAplwMTp.Parent = cloneref(gethui())

    getgenv().gethui = newcclosure(function()
        return cloneref(MxcAplwMTp)
    end)
end
if getgenv().library and getgenv().library.unload_menu then
    CnNOmZmbEvte(function() getgenv().library:unload_menu() end)
end

local IZECiIAmlwpS = "dopamine"
local TMfFOdJaXONx = IZECiIAmlwpS .. "/key.dat"

if not isfolder(IZECiIAmlwpS) or not isfile(TMfFOdJaXONx) then
    KyftjIkwACY("no key found...")
    return
end

Start       = tick(); 
tUAMeIxeLQhD    = identifyexecutor()

local bgqMQWVjn = tick()
local qUiUzaChCXPs = false
local lFSJpHFBX = false
local WFLZZgvxDLNy = false

local sEAejVYOKGwS = {}

function sEAejVYOKGwS.Show(Info)
    if lFSJpHFBX then return end
    lFSJpHFBX = true

    CnNOmZmbEvte(function()
        local jrjlUDMPERNF = QajQeTLyeF.new("ScreenGui")
        jrjlUDMPERNF.Name = "DopamineMessageBox"
        jrjlUDMPERNF.ResetOnSpawn = false
        jrjlUDMPERNF.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        jrjlUDMPERNF.IgnoreGuiInset = true
        jrjlUDMPERNF.Parent = game:GetService("CoreGui")

        local IuxcngDJ = QajQeTLyeF.new("Frame")
        IuxcngDJ.Size = UDim2.new(1, 0, 1, 0)
        IuxcngDJ.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        IuxcngDJ.BackgroundTransparency = 0.5
        IuxcngDJ.BorderSizePixel = 0
        IuxcngDJ.Parent = jrjlUDMPERNF

        local GjYgamGJo = Info.Position or UDim2.new(0.5, 0, 0.5, 0)

        local yXgXjGhaB = QajQeTLyeF.new("Frame")
        yXgXjGhaB.Size = UDim2.new(0, 380, 0, 180)
        yXgXjGhaB.Position = UDim2.new(GjYgamGJo.X.Scale, GjYgamGJo.X.Offset - 190, GjYgamGJo.Y.Scale, GjYgamGJo.Y.Offset - 90)
        yXgXjGhaB.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        yXgXjGhaB.BorderSizePixel = 0
        yXgXjGhaB.Parent = jrjlUDMPERNF

        local FOAcSByXgkPE = QajQeTLyeF.new("UICorner")
        FOAcSByXgkPE.CornerRadius = UDim.new(0, 8)
        FOAcSByXgkPE.Parent = yXgXjGhaB

        local bjLFDaqEMqFr = QajQeTLyeF.new("UIStroke")
        bjLFDaqEMqFr.Color = Color3.fromRGB(0, 191, 255)
        bjLFDaqEMqFr.Parent = yXgXjGhaB

        local NoscVarDTBtj = QajQeTLyeF.new("TextLabel")
        NoscVarDTBtj.Size = UDim2.new(1, 0, 0, 36)
        NoscVarDTBtj.Position = UDim2.new(0, 0, 0, 10)
        NoscVarDTBtj.BackgroundTransparency = 1
        NoscVarDTBtj.Font = Enum.Font.GothamBold
        NoscVarDTBtj.Text = Info.Text or "dopamine.wtf"
        NoscVarDTBtj.TextColor3 = Color3.fromRGB(0, 191, 255)
        NoscVarDTBtj.TextSize = 18
        NoscVarDTBtj.Parent = yXgXjGhaB

        local FeuvfnwSzQi = QajQeTLyeF.new("TextLabel")
        FeuvfnwSzQi.Size = UDim2.new(1, -30, 0, 80)
        FeuvfnwSzQi.Position = UDim2.new(0, 15, 0, 50)
        FeuvfnwSzQi.BackgroundTransparency = 1
        FeuvfnwSzQi.Font = Enum.Font.Gotham
        FeuvfnwSzQi.Text = Info.Description or ""
        FeuvfnwSzQi.TextColor3 = Color3.fromRGB(220, 220, 220)
        FeuvfnwSzQi.TextSize = 13
        FeuvfnwSzQi.TextWrapped = true
        FeuvfnwSzQi.TextXAlignment = Enum.TextXAlignment.Center
        FeuvfnwSzQi.Parent = yXgXjGhaB

        local iaCrLYjW = QajQeTLyeF.new("TextButton")
        iaCrLYjW.Size = UDim2.new(0, 120, 0, 34)
        iaCrLYjW.Position = UDim2.new(0.5, -60, 1, -48)
        iaCrLYjW.BackgroundColor3 = Color3.fromRGB(0, 191, 255)
        iaCrLYjW.BorderSizePixel = 0
        iaCrLYjW.Font = Enum.Font.GothamBold
        iaCrLYjW.Text = "OK"
        iaCrLYjW.TextColor3 = Color3.fromRGB(255, 255, 255)
        iaCrLYjW.TextSize = 14
        iaCrLYjW.Parent = yXgXjGhaB

        local MuSvZLMY = QajQeTLyeF.new("UICorner")
        MuSvZLMY.CornerRadius = UDim.new(0, 6)
        MuSvZLMY.Parent = iaCrLYjW

        local AYlDBNvWi = false
        local function GDxjnASHWSCK()
            if AYlDBNvWi then return end
            AYlDBNvWi = true
            jrjlUDMPERNF:Destroy()
        end

        iaCrLYjW.MouseButton1Click:Connect(GDxjnASHWSCK)

        jrjlUDMPERNF.InputBegan:Connect(function(Input, Processed)
            if Processed then return end
            if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode == Enum.KeyCode.Return then
                GDxjnASHWSCK()
            end
        end)
    end)
end

do
    local lbrEwFcHODgi = ""
    CnNOmZmbEvte(function() lbrEwFcHODgi = identifyexecutor() end)
    local jVxpvNAcZVtA = lbrEwFcHODgi:lower()

    local CPkqXsDUG = { "xeno", "solara" }
    local oRZbdGajcNyY = { "bunni", "hydrogen", "macsploit", "medium", "real", "velocity" }

    local function imEKTSBNpjc(list)
        for _, JQNgpxISpJC in list do
            if jVxpvNAcZVtA:find(JQNgpxISpJC) then return true end
        end
        return false
    end

    if imEKTSBNpjc(CPkqXsDUG) then
        sEAejVYOKGwS.Show({Position= UDim2.new(0.5, 0, 0.5, 0),
            Text = "dopamine.wtf",
            Description = "Your Executor Is Not Supported",
            MessageBoxIcon = "Error",
            MessageBoxButtons = "OK",
        })
        qUiUzaChCXPs = true
    elseif imEKTSBNpjc(oRZbdGajcNyY) then
        WFLZZgvxDLNy = true
    end
end

if qUiUzaChCXPs then return end

do
    CnNOmZmbEvte(function() setfpscap(999) end)
    CnNOmZmbEvte(function() task.desynchronize() end)
end

do
    local gMFLEipW = CnNOmZmbEvte(function() return getgenv().Library end) and getgenv().Library
    if gMFLEipW then
        CnNOmZmbEvte(function() gMFLEipW:Unload() end)
    end

    local LEDBMpPYoqoV = game:GetService("TweenService")
    local GgtrVFeG = game:GetService("RunService")
    local cPJPgSWc = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")

    CnNOmZmbEvte(function()
        if not isfolder("dopamine/Assets") then
            makefolder("dopamine/Assets")
        end
    end)

    local SQlILQBKTjw = QajQeTLyeF.new("ScreenGui")
    SQlILQBKTjw.Name = "\0"
    SQlILQBKTjw.Parent = cPJPgSWc
    SQlILQBKTjw.ZIndexBehavior = Enum.ZIndexBehavior.Global
    SQlILQBKTjw.DisplayOrder = 9999
    SQlILQBKTjw.IgnoreGuiInset = true

    local ZuGSAShXhrw = QajQeTLyeF.new("Frame")
    ZuGSAShXhrw.Name = "\0"
    ZuGSAShXhrw.Parent = SQlILQBKTjw
    ZuGSAShXhrw.Size = UDim2.new(2, 0, 2, 0)
    ZuGSAShXhrw.Position = UDim2.new(-0.5, 0, -0.5, 0)
    ZuGSAShXhrw.BackgroundColor3 = Color3.new(0, 0, 0)
    ZuGSAShXhrw.BackgroundTransparency = 1
    ZuGSAShXhrw.BorderSizePixel = 0

    local QGzGapnZyuW = QajQeTLyeF.new("TextLabel")
    QGzGapnZyuW.Name = "\0"
    QGzGapnZyuW.Parent = SQlILQBKTjw
    QGzGapnZyuW.Size = UDim2.new(1, 0, 0, 50)
    QGzGapnZyuW.Position = UDim2.new(0, 0, 0.5, -25)
    QGzGapnZyuW.BackgroundTransparency = 1
    QGzGapnZyuW.Text = "Bypassing..."
    QGzGapnZyuW.TextColor3 = Color3.fromRGB(0, 191, 255)
    QGzGapnZyuW.TextSize = 30
    QGzGapnZyuW.Font = Enum.Font.GothamBold
    QGzGapnZyuW.TextTransparency = 1
    QGzGapnZyuW.BorderSizePixel = 0

    local MoEWFlCYuH = QajQeTLyeF.new("TextLabel")
    MoEWFlCYuH.Name = "\0"
    MoEWFlCYuH.Parent = SQlILQBKTjw
    MoEWFlCYuH.Size = UDim2.new(1, 0, 0, 30)
    MoEWFlCYuH.Position = UDim2.new(0, 0, 1, -40)
    MoEWFlCYuH.BackgroundTransparency = 1
    MoEWFlCYuH.Text = "made possible by: soryxen"
    MoEWFlCYuH.TextSize = 16
    MoEWFlCYuH.Font = Enum.Font.GothamBold
    MoEWFlCYuH.TextTransparency = 1
    MoEWFlCYuH.BorderSizePixel = 0
    MoEWFlCYuH.RichText = true
    MoEWFlCYuH.TextXAlignment = Enum.TextXAlignment.Center

    local DqLHTEUGxB = 0
    local kdrHVBHc = GgtrVFeG.RenderStepped:Connect(function()
        DqLHTEUGxB = (DqLHTEUGxB + 0.0005) % 1
        MoEWFlCYuH.TextColor3 = Color3.fromHSV(DqLHTEUGxB, 1, 1)
    end)

    local uwqhWVZHOfOK = math.random(410, 580) / 100
    local PPJdKSqKY = LEDBMpPYoqoV:Create(ZuGSAShXhrw, TweenInfo.new(0.7), {BackgroundTransparency= 0.35})
    local LVZvbpUQLqKw = LEDBMpPYoqoV:Create(QGzGapnZyuW, TweenInfo.new(0.7), {TextTransparency= 0})
    local uzaIwOgLNYy = LEDBMpPYoqoV:Create(MoEWFlCYuH, TweenInfo.new(0.7), {TextTransparency= 0})

    PPJdKSqKY:Play()
    LVZvbpUQLqKw:Play()
    uzaIwOgLNYy:Play()

    task.wait(0.7)
    task.wait(uwqhWVZHOfOK - 1.4)

    local GSkGUYvGnQ = LEDBMpPYoqoV:Create(ZuGSAShXhrw, TweenInfo.new(0.7), {BackgroundTransparency= 1})
    local yQwAfMhzg = LEDBMpPYoqoV:Create(QGzGapnZyuW, TweenInfo.new(0.7), {TextTransparency= 1})
    local OcRRpYEH = LEDBMpPYoqoV:Create(MoEWFlCYuH, TweenInfo.new(0.7), {TextTransparency= 1})

    GSkGUYvGnQ:Play()
    yQwAfMhzg:Play()
    OcRRpYEH:Play()

    task.wait(0.7)

    kdrHVBHc:Disconnect()
    SQlILQBKTjw:Destroy()
end

task.wait(0.2)
if WFLZZgvxDLNy and sEAejVYOKGwS then
    sEAejVYOKGwS.Show({Position= UDim2.new(0.5, 0, 0.5, 0),
        Text = "dopamine.wtf",
        Description = "Your Executor Is Supported Although You May Experience Lag Or May Be Detected",
        MessageBoxIcon = "Warning",
        MessageBoxButtons = "OK",
    })
end

if getgenv().Library then
	getgenv().Library:Unload()
end

local PYMBJvUCOh
do
	local WzuRBlWDxxqo = game:GetService("Workspace")
	local iwUZWTTfTft = game:GetService("UserInputService")
	local dBtDRkXWA = game:GetService("Players")
	local cBRSsybciMR = game:GetService("HttpService")
	local GgtrVFeG = game:GetService("RunService")
	local cPJPgSWc = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
	local LEDBMpPYoqoV = game:GetService("TweenService")
	local FWncGKZA = game:GetService("Lighting")

	gethui = gethui or function()
		return cPJPgSWc
	end

	local uUnaHHTZ = dBtDRkXWA.LocalPlayer
	local CWuhaNGbeSy = WzuRBlWDxxqo.CurrentCamera
	local UkrMsQXajPHz = uUnaHHTZ:GetMouse()

	local ybqEvbYIw = Color3.fromRGB
	local XGKWAiyW = Color3.fromHSV
	local TfJIHldJmFaR = Color3.fromHex

	local GyIeRdRLaGL = ColorSequence.new
	local WUxYPIsR = ColorSequenceKeypoint.new
	local BHBoHFKZBWJ = NumberSequence.new
	local wmZytpMBcGpL = NumberSequenceKeypoint.new

	local keGiDkjvH = UDim2.new
	local ZRxtzEskBOxd = UDim.new
	local GdOoepJnPrK = UDim2.fromScale
	local pisAiSqcci = UDim2.fromOffset
	local iKnspdwtTSDH = Vector2.new
	local FrteWYKclOm = Vector3.new

	local CjSozEPtYIva = math.clamp
	local mlIZjubgNQ = math.floor
	local ImEAsXUnkE = math.abs
	local aFipqYFqFrSi = math.sin

	local tJopVXlm = table.insert
	local wTYmJuDf = table.find
	local QfFxUUYxX = table.remove
	local ZnmZpBTrprY = table.concat
	local igCZJoRfsZz = table.clone
	local VuozwMgofAsU = table.unpack

	local FBSOheevaVg = string.format
	local ksFUDmyXEp = string.find
	local VYanDjTkR = string.gsub
	local QDiHRqlcnd = string.lower
	local RiQdNRCyr = string.len

	local CZzozdJleN = QajQeTLyeF.new

	local ELZZjnFXWc = CFrame.new
    local MWFpVTBYyMM = CFrame.Angles
    local FrteWYKclOm = Vector3.new
	local uKyGeufhas = math.rad
    local SeqUwUhxCNsJ = math.max
    local pCIvACjLjo = math.min

	local UEjZwwXqE = Rect.new

	local ViEAFeQPtQ = iwUZWTTfTft.TouchEnabled or false

	local OkLOYtRHm = Color3.fromRGB(0, 191, 255)
	local ZaQsBHqbchw = "132447680232071"
	local uAtNKRGvWg = "dopamine.wtf"

	local iHXOxRjUQP = "dopamine"

	if not isfolder(iHXOxRjUQP) then
		makefolder(iHXOxRjUQP)
	end

	if not isfile(iHXOxRjUQP .. "/key.dat") then
		KyftjIkwACY("no key found...")
		return nil
	end

	local zlMeSiRk = "https://raw.githubusercontent.com/dopamine-wtf/loader/refs/heads/main/uids.json"
	local nPXfQAFwbf = "https://raw.githubusercontent.com/dopamine-wtf/loader/refs/heads/main/loader.json"

	local function fYMNSBiLI()
		local oNoeIYdYXYO, kOKLFDjzfZpu = CnNOmZmbEvte(function()
			local ZsWuGhCtp = game.CreatorId .. game.GameId .. iwUZWTTfTft:GetUserIdHash() .. EJJFGJzBaV(uUnaHHTZ.UserId)
			return syn.crypt.hash(ZsWuGhCtp, "sha512")
		end)
		if oNoeIYdYXYO then
			return kOKLFDjzfZpu
		end
		local jCIRcNufD, TrynwHQo = CnNOmZmbEvte(gethwid)
		if jCIRcNufD then
			return TrynwHQo
		end
		return ""
	end

	local qySWYlpHZ = fYMNSBiLI()
	local jiJNiCvG = "apply in discord for uid"

	local oNoeIYdYXYO, hwhBFFvsTXV = CnNOmZmbEvte(function()
		return cBRSsybciMR:JSONDecode(game:HttpGet(zlMeSiRk))
	end)
	if oNoeIYdYXYO and type(hwhBFFvsTXV) == "table" then
		for kOKLFDjzfZpu, UID in hwhBFFvsTXV do
			if kOKLFDjzfZpu == qySWYlpHZ then
				jiJNiCvG = UID
				break
			end
		end
	end

	local LAtJpIPvS, ILNWbaqM = CnNOmZmbEvte(function()
		return cBRSsybciMR:JSONDecode(game:HttpGet(nPXfQAFwbf))
	end)
	if LAtJpIPvS and type(ILNWbaqM) == "table" and type(ILNWbaqM.blacklistedHwids) == "table" then
		for _, BlacklistedHWID in ILNWbaqM.blacklistedHwids do
			if BlacklistedHWID == qySWYlpHZ then
				warn("you have been blacklisted, if this is not supposed to happen, please make a ticket in our discord: https://discord.gg/VJXXXd5UzP")
				CnNOmZmbEvte(setclipboard, "https://discord.gg/VJXXXd5UzP")
				return
			end
		end
	end

	PYMBJvUCOh = {Theme= {},

		MenuKeybind = EJJFGJzBaV(Enum.KeyCode.RightShift),

		Flags = {},

		Tween = {Time= 0.25,
			Style = Enum.EasingStyle.Quart,
			Direction = Enum.EasingDirection.Out,
		},

		FadeSpeed = 0.2,

		Folders = {Directory= "dopamine",
			Configs = "dopamine/configs",
			Assets = "dopamine/assets",
		},

		-- Ignore below
		Pages = {},
		Sections = {},

		Connections = {},
		Threads = {},

		ThemeMap = {},
		ThemeItems = {},

		OpenFrames = {},

		SetFlags = {},

		UnnamedConnections = 0,
		UnnamedFlags = 0,

		Holder = nil,
		NotifHolder = nil,
		UnusedHolder = nil,
		KeyList = nil,

		Font = nil,
		CopiedColor = nil,

		MainFrame = nil,
		WatermarkInstance = nil,
		KeybindListInstance = nil,
	}

	PYMBJvUCOh.__index = PYMBJvUCOh
	PYMBJvUCOh.Sections.__index = PYMBJvUCOh.Sections
	PYMBJvUCOh.Pages.__index = PYMBJvUCOh.Pages

	local vBVDCQLcSwM = {
		["Unknown"] = "Unknown",
		["Backspace"] = "Back",
		["Tab"] = "Tab",
		["Clear"] = "Clear",
		["Return"] = "Return",
		["Pause"] = "Pause",
		["Escape"] = "Escape",
		["Space"] = "Space",
		["QuotedDouble"] = '"',
		["Hash"] = "#",
		["Dollar"] = "$",
		["Percent"] = "%",
		["Ampersand"] = "&",
		["Quote"] = "'",
		["LeftParenthesis"] = "(",
		["RightParenthesis"] = " )",
		["Asterisk"] = "*",
		["Plus"] = "+",
		["Comma"] = ",",
		["Minus"] = "-",
		["Period"] = ".",
		["Slash"] = "`",
		["Three"] = "3",
		["Seven"] = "7",
		["Eight"] = "8",
		["Colon"] = ":",
		["Semicolon"] = ";",
		["LessThan"] = "<",
		["GreaterThan"] = ">",
		["Question"] = "?",
		["Equals"] = "=",
		["At"] = "@",
		["LeftBracket"] = "LeftBracket",
		["RightBracket"] = "RightBracked",
		["BackSlash"] = "BackSlash",
		["Caret"] = "^",
		["Underscore"] = "_",
		["Backquote"] = "`",
		["LeftCurly"] = "{",
		["Pipe"] = "|",
		["RightCurly"] = "}",
		["Tilde"] = "~",
		["Delete"] = "Delete",
		["End"] = "End",
		["KeypadZero"] = "Keypad0",
		["KeypadOne"] = "Keypad1",
		["KeypadTwo"] = "Keypad2",
		["KeypadThree"] = "Keypad3",
		["KeypadFour"] = "Keypad4",
		["KeypadFive"] = "Keypad5",
		["KeypadSix"] = "Keypad6",
		["KeypadSeven"] = "Keypad7",
		["KeypadEight"] = "Keypad8",
		["KeypadNine"] = "Keypad9",
		["KeypadPeriod"] = "KeypadP",
		["KeypadDivide"] = "KeypadD",
		["KeypadMultiply"] = "KeypadM",
		["KeypadMinus"] = "KeypadM",
		["KeypadPlus"] = "KeypadP",
		["KeypadEnter"] = "KeypadE",
		["KeypadEquals"] = "KeypadE",
		["Insert"] = "Insert",
		["Home"] = "Home",
		["PageUp"] = "PageUp",
		["PageDown"] = "PageDown",
		["RightShift"] = "RightShift",
		["LeftShift"] = "LeftShift",
		["RightControl"] = "RightControl",
		["LeftControl"] = "LeftControl",
		["LeftAlt"] = "LeftAlt",
		["RightAlt"] = "RightAlt",
	}

	local rtgfTrBIySQm = {
        ["Preset"] = {
            ["Window Outline"] = ybqEvbYIw(0, 34, 37),
            ["Accent"] = OkLOYtRHm,
            ["Background 1"] = ybqEvbYIw(17, 21, 27),
            ["Text"] = ybqEvbYIw(255, 255, 255),
            ["Inline"] = ybqEvbYIw(19, 25, 31),
            ["Element"] = ybqEvbYIw(32, 38, 48),
            ["Inactive Text"] = ybqEvbYIw(185, 185, 185),
            ["Border"] =  ybqEvbYIw(46, 52, 61),
            ["Background 2"] = ybqEvbYIw(24, 28, 36)
        }
	}

	PYMBJvUCOh.Theme = igCZJoRfsZz(rtgfTrBIySQm["Preset"])

	-- Folders
	for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.Folders do
		if not isfolder(BEBEAVTqVC) then
			makefolder(BEBEAVTqVC)
		end
	end

	-- Tweening
	local FVSWOKYqRyR = {}
	do
		FVSWOKYqRyR.__index = FVSWOKYqRyR

		FVSWOKYqRyR.Create = function(PypkHNpYF, pcsyUdZD, Info, Goal, IsRawItem)
			if not PYMBJvUCOh or not PYMBJvUCOh.Tween then return end
			pcsyUdZD = IsRawItem and pcsyUdZD or pcsyUdZD.Instance
			Info = Info or TweenInfo.new(PYMBJvUCOh.Tween.Time, PYMBJvUCOh.Tween.Style, PYMBJvUCOh.Tween.Direction)

			local WgxhdbUDPOBb = {Tween= LEDBMpPYoqoV:Create(pcsyUdZD, Info, Goal),
				Info = Info,
				Goal = Goal,
				Item = pcsyUdZD,
			}

			WgxhdbUDPOBb.Tween:Play()

			setmetatable(WgxhdbUDPOBb, FVSWOKYqRyR)

			return WgxhdbUDPOBb
		end

		FVSWOKYqRyR.GetProperty = function(PypkHNpYF, pcsyUdZD)
			pcsyUdZD = pcsyUdZD or PypkHNpYF.Item

			if pcsyUdZD:IsA("Frame") then
				return { "BackgroundTransparency" }
			elseif pcsyUdZD:IsA("TextLabel") or pcsyUdZD:IsA("TextButton") then
				return { "TextTransparency", "BackgroundTransparency" }
			elseif pcsyUdZD:IsA("ImageLabel") or pcsyUdZD:IsA("ImageButton") then
				return { "BackgroundTransparency", "ImageTransparency" }
			elseif pcsyUdZD:IsA("ScrollingFrame") then
				return { "BackgroundTransparency", "ScrollBarImageTransparency" }
			elseif pcsyUdZD:IsA("TextBox") then
				return { "TextTransparency", "BackgroundTransparency" }
			elseif pcsyUdZD:IsA("UIStroke") then
				return { "Transparency" }
			end
		end

		FVSWOKYqRyR.FadeItem = function(PypkHNpYF, pcsyUdZD, Property, Visibility, Speed)
			local pcsyUdZD = pcsyUdZD or PypkHNpYF.Item

			local EWwbzUWX = pcsyUdZD[Property]
			pcsyUdZD[Property] = Visibility and 1 or EWwbzUWX

			local WgxhdbUDPOBb = FVSWOKYqRyR:Create(
				pcsyUdZD,
				TweenInfo.new(Speed or PYMBJvUCOh.Tween.Time, PYMBJvUCOh.Tween.Style, PYMBJvUCOh.Tween.Direction),
				{
					[Property] = Visibility and EWwbzUWX or 1,
				},
				true
			)

			PYMBJvUCOh:Connect(WgxhdbUDPOBb.Tween.Completed, function()
				if not Visibility then
					task.wait()
					pcsyUdZD[Property] = EWwbzUWX
				end
			end)

			return WgxhdbUDPOBb
		end

		FVSWOKYqRyR.Get = function(PypkHNpYF)
			if not PypkHNpYF.Tween then
				return
			end

			return PypkHNpYF.Tween, PypkHNpYF.Info, PypkHNpYF.Goal
		end

		FVSWOKYqRyR.Pause = function(PypkHNpYF)
			if not PypkHNpYF.Tween then
				return
			end

			PypkHNpYF.Tween:Pause()
		end

		FVSWOKYqRyR.Play = function(PypkHNpYF)
			if not PypkHNpYF.Tween then
				return
			end

			PypkHNpYF.Tween:Play()
		end

		FVSWOKYqRyR.Clean = function(PypkHNpYF)
			if not PypkHNpYF.Tween then
				return
			end

			FVSWOKYqRyR:Pause()
			PypkHNpYF = nil
		end
	end

	-- Instances
	local gaLDMUsM = {}
	do
		gaLDMUsM.__index = gaLDMUsM

		gaLDMUsM.Create = function(PypkHNpYF, Class, Properties)
			local GDkZTWARl = {Instance= CZzozdJleN(Class),
				Properties = Properties,
				Class = Class,
			}

			setmetatable(GDkZTWARl, gaLDMUsM)

			for Property, BEBEAVTqVC in GDkZTWARl.Properties do
				GDkZTWARl.Instance[Property] = BEBEAVTqVC
			end

			return GDkZTWARl
		end

		gaLDMUsM.FadeItem = function(PypkHNpYF, Visibility, Speed)
			local pcsyUdZD = PypkHNpYF.Instance

			if Visibility == true then
				pcsyUdZD.Visible = true
			end

			local gPgbXpywRKA = pcsyUdZD:GetDescendants()
			tJopVXlm(gPgbXpywRKA, pcsyUdZD)

			local WgxhdbUDPOBb

			for udqfjGdZsfFL, BEBEAVTqVC in gPgbXpywRKA do
				local yosjrPzqnp = FVSWOKYqRyR:GetProperty(BEBEAVTqVC)

				if not yosjrPzqnp then
					continue
				end

				if type(yosjrPzqnp) == "table" then
					for _, Property in yosjrPzqnp do
						WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, Property, not Visibility, Speed)
					end
				else
					WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, yosjrPzqnp, not Visibility, Speed)
				end
			end
		end

		gaLDMUsM.AddToTheme = function(PypkHNpYF, Properties)
			if not PypkHNpYF.Instance then
				return
			end

			PYMBJvUCOh:AddToTheme(PypkHNpYF, Properties)
		end

		gaLDMUsM.ChangeItemTheme = function(PypkHNpYF, Properties)
			if not PypkHNpYF.Instance then
				return
			end

			if not PYMBJvUCOh or not PYMBJvUCOh.ChangeItemTheme then
				return
			end

			PYMBJvUCOh:ChangeItemTheme(PypkHNpYF, Properties)
		end

		gaLDMUsM.Connect = function(PypkHNpYF, Event, Callback, Name)
			if not PypkHNpYF.Instance then
				return
			end

			if not PypkHNpYF.Instance[Event] then
				return
			end

			if Event == "MouseButton1Down" or Event == "MouseButton1Click" then
				if ViEAFeQPtQ then
					Event = "TouchTap"
				end
			elseif Event == "MouseButton2Down" or Event == "MouseButton2Click" then
				if ViEAFeQPtQ then
					Event = "TouchLongPress"
				end
			end

			return PYMBJvUCOh:Connect(PypkHNpYF.Instance[Event], Callback, Name)
		end

		gaLDMUsM.Tween = function(PypkHNpYF, Info, Goal)
			if not PypkHNpYF.Instance then
				return
			end

			return FVSWOKYqRyR:Create(PypkHNpYF, Info, Goal)
		end

		gaLDMUsM.Disconnect = function(PypkHNpYF, Name)
			if not PypkHNpYF.Instance then
				return
			end

			return PYMBJvUCOh:Disconnect(Name)
		end

		gaLDMUsM.Clean = function(PypkHNpYF)
			if not PypkHNpYF.Instance then
				return
			end

			PypkHNpYF.Instance:Destroy()
			PypkHNpYF = nil
		end

		gaLDMUsM.MakeDraggable = function(PypkHNpYF, ConditionFunc)
			if not PypkHNpYF.Instance then
				return
			end

			local aMupFhtX = PypkHNpYF.Instance
			local GpkiiHISUr = false
			local FEvqplct
			local WdKsjzNRIzuf

			local MWRopqVgILi = function()
				if ConditionFunc then
					return ConditionFunc()
				end
				return true
			end

			local pKZWdyqIPEbO = function(Input)
				local edLeOnWn = Input.Position - FEvqplct
				local TCZeMCrv = WdKsjzNRIzuf.X.Offset + edLeOnWn.X
				local yWbBnEdlY = WdKsjzNRIzuf.Y.Offset + edLeOnWn.Y

				local YDDFvPzlbtr = aMupFhtX.Parent.AbsoluteSize
				local UPRalpQYdrr = aMupFhtX.AbsoluteSize

				TCZeMCrv = CjSozEPtYIva(TCZeMCrv, 0, YDDFvPzlbtr.X - UPRalpQYdrr.X)
				yWbBnEdlY = CjSozEPtYIva(yWbBnEdlY, 0, YDDFvPzlbtr.Y - UPRalpQYdrr.Y)

				PypkHNpYF:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(0, TCZeMCrv, 0, yWbBnEdlY) }
				)
			end

			local VrXGyhUqFGxq

			PypkHNpYF:Connect("InputBegan", function(Input)
				if not MWRopqVgILi() then
					return
				end

				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					GpkiiHISUr = true
					FEvqplct = Input.Position
					WdKsjzNRIzuf = aMupFhtX.Position

					if VrXGyhUqFGxq then
						return
					end

					VrXGyhUqFGxq = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							GpkiiHISUr = false
							VrXGyhUqFGxq:Disconnect()
							VrXGyhUqFGxq = nil
						end
					end)
				end
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputChanged, function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseMovement
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					if GpkiiHISUr then
						pKZWdyqIPEbO(Input)
					end
				end
			end)

			return GpkiiHISUr
		end

		gaLDMUsM.MakeResizeable = function(PypkHNpYF, Minimum, Maximum)
			if not PypkHNpYF.Instance then
				return
			end

			local aMupFhtX = PypkHNpYF.Instance

			local BdcCGykUiE = false
			local wQIhNIQb = nil

			local uyqSJLqSCuMg = nil
			local WdKsjzNRIzuf = nil
			local hXEVjeCTC = nil

			local WONcpvISqT = 2

			local rALfEtpvAbYI = function(Name, GjYgamGJo, TiWJldvA)
				local iaCrLYjW = gaLDMUsM:Create("TextButton", {Name= "\0",
					Size = TiWJldvA,
					Position = GjYgamGJo,
					BackgroundColor3 = ybqEvbYIw(166, 147, 243),
					BackgroundTransparency = 1,
					Text = "",
					BorderSizePixel = 0,
					AutoButtonColor = false,
					Parent = aMupFhtX,
					ZIndex = 99999,
				})
				iaCrLYjW:AddToTheme({BackgroundColor3= "Accent" })

				return iaCrLYjW
			end

			local gQQuOKHfC = {
				{Button= rALfEtpvAbYI("Left", keGiDkjvH(0, 0, 0, 0), keGiDkjvH(0, WONcpvISqT, 1, 0)),
					Side = "L",
				},

				{Button= rALfEtpvAbYI("Right", keGiDkjvH(1, -WONcpvISqT, 0, 0), keGiDkjvH(0, WONcpvISqT, 1, 0)),
					Side = "R",
				},

				{Button= rALfEtpvAbYI("Top", keGiDkjvH(0, 0, 0, 0), keGiDkjvH(1, 0, 0, WONcpvISqT)),
					Side = "T",
				},

				{Button= rALfEtpvAbYI("Bottom", keGiDkjvH(0, 0, 1, -WONcpvISqT), keGiDkjvH(1, 0, 0, WONcpvISqT)),
					Side = "B",
				},
			}

			local BRSjlASvWTrG = function(Side)
				BdcCGykUiE = true
				wQIhNIQb = Side

				uyqSJLqSCuMg = iwUZWTTfTft:GetMouseLocation()

				-- store offsets, not absolute screen pos
				WdKsjzNRIzuf = iKnspdwtTSDH(aMupFhtX.Position.X.Offset, aMupFhtX.Position.Y.Offset)
				hXEVjeCTC = iKnspdwtTSDH(aMupFhtX.Size.X.Offset, aMupFhtX.Size.Y.Offset)

				for udqfjGdZsfFL, BEBEAVTqVC in gQQuOKHfC do
					BEBEAVTqVC.Button.Instance.BackgroundTransparency = (BEBEAVTqVC.Side == Side) and 0 or 1
				end
			end

			local rRMFZCDpl = function()
				BdcCGykUiE = false
				wQIhNIQb = nil

				for udqfjGdZsfFL, BEBEAVTqVC in gQQuOKHfC do
					BEBEAVTqVC.Button.Instance.BackgroundTransparency = 1
				end
			end

			for udqfjGdZsfFL, BEBEAVTqVC in gQQuOKHfC do
				BEBEAVTqVC.Button:Connect("InputBegan", function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						BRSjlASvWTrG(BEBEAVTqVC.Side)
					end
				end)
			end

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputEnded, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if BdcCGykUiE then
						rRMFZCDpl()
					end
				end
			end)

			PYMBJvUCOh:Connect(GgtrVFeG.RenderStepped, function()
				if not BdcCGykUiE or not wQIhNIQb then
					return
				end

				local XVDDWgci = iwUZWTTfTft:GetMouseLocation()
				local qGTIxEsTO = XVDDWgci.X - uyqSJLqSCuMg.X
				local xDSIdVyBF = XVDDWgci.Y - uyqSJLqSCuMg.Y

				local PEWuPiSCswE, rZIQTfIsKLTC = WdKsjzNRIzuf.X, WdKsjzNRIzuf.Y
				local amAuKxbe, vxASaCOdAe = hXEVjeCTC.X, hXEVjeCTC.Y

				if wQIhNIQb == "L" then
					PEWuPiSCswE = WdKsjzNRIzuf.X + qGTIxEsTO
					amAuKxbe = hXEVjeCTC.X - qGTIxEsTO
				elseif wQIhNIQb == "R" then
					amAuKxbe = hXEVjeCTC.X + qGTIxEsTO
				elseif wQIhNIQb == "T" then
					rZIQTfIsKLTC = WdKsjzNRIzuf.Y + xDSIdVyBF
					vxASaCOdAe = hXEVjeCTC.Y - xDSIdVyBF
				elseif wQIhNIQb == "B" then
					vxASaCOdAe = hXEVjeCTC.Y + xDSIdVyBF
				end

				if amAuKxbe < Minimum.X then
					if wQIhNIQb == "L" then
						PEWuPiSCswE = PEWuPiSCswE - (Minimum.X - amAuKxbe)
					end
					amAuKxbe = Minimum.X
				end
				if vxASaCOdAe < Minimum.Y then
					if wQIhNIQb == "T" then
						rZIQTfIsKLTC = rZIQTfIsKLTC - (Minimum.Y - vxASaCOdAe)
					end
					vxASaCOdAe = Minimum.Y
				end

				PypkHNpYF:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= pisAiSqcci(PEWuPiSCswE, rZIQTfIsKLTC) }
				)
				PypkHNpYF:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Size= pisAiSqcci(amAuKxbe, vxASaCOdAe) }
				)
			end)
		end

		gaLDMUsM.OnHover = function(PypkHNpYF, Function)
			if not PypkHNpYF.Instance then
				return
			end

			return PYMBJvUCOh:Connect(PypkHNpYF.Instance.MouseEnter, Function)
		end

		gaLDMUsM.OnHoverLeave = function(PypkHNpYF, Function)
			if not PypkHNpYF.Instance then
				return
			end

			return PYMBJvUCOh:Connect(PypkHNpYF.Instance.MouseLeave, Function)
		end
	end

	-- Custom font
	local mZCvoqnPKNv = {}
	do
		function mZCvoqnPKNv:New(Name, Weight, Style, Data)
			if isfile(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json") then
				return kwjwaQPR.new(getcustomasset(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json"))
			end

			if not isfile(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".ttf") then
				writefile(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".ttf", game:HttpGet(Data.Url))
			end

			local fuhoblgudBw = {name= Name,
				faces = {
					{name= "Regular",
						weight = Weight,
						style = Style,
						assetId = getcustomasset(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".ttf"),
					},
				},
			}

			writefile(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json", cBRSsybciMR:JSONEncode(fuhoblgudBw))
			return kwjwaQPR.new(getcustomasset(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json"))
		end

		function mZCvoqnPKNv:Get(Name)
			if isfile(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json") then
				return kwjwaQPR.new(getcustomasset(PYMBJvUCOh.Folders.Assets .. "/" .. Name .. ".json"))
			end
		end

		mZCvoqnPKNv:New("Verdana", 400, "Regular", {Id= "Verdana",
			Url = "https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/verdana.ttf",
		})

		PYMBJvUCOh.Font = mZCvoqnPKNv:Get("Verdana")
	end

	PYMBJvUCOh.Holder = gaLDMUsM:Create("ScreenGui", {Parent= gethui(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		DisplayOrder = 2,
		IgnoreGuiInset = true,
		ResetOnSpawn = false,
	})

	PYMBJvUCOh.UnusedHolder = gaLDMUsM:Create("ScreenGui", {Parent= gethui(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		Enabled = false,
		ResetOnSpawn = false,
	})

	PYMBJvUCOh.NotifHolder = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.Holder.Instance,
		Name = "\0",
		BorderColor3 = ybqEvbYIw(0, 0, 0),
		AnchorPoint = iKnspdwtTSDH(1, 0),
		BackgroundTransparency = 1,
		Position = keGiDkjvH(1, 0, 0, 0),
		Size = keGiDkjvH(0, 0, 1, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = ybqEvbYIw(255, 255, 255),
	})

	gaLDMUsM:Create("UIListLayout", {Parent= PYMBJvUCOh.NotifHolder.Instance,
		Name = "\0",
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Padding = ZRxtzEskBOxd(0, 8),
	})

	gaLDMUsM:Create("UIPadding", {Parent= PYMBJvUCOh.NotifHolder.Instance,
		Name = "\0",
		PaddingTop = ZRxtzEskBOxd(0, 15),
		PaddingBottom = ZRxtzEskBOxd(0, 15),
		PaddingRight = ZRxtzEskBOxd(0, 15),
		PaddingLeft = ZRxtzEskBOxd(0, 15),
	})

	PYMBJvUCOh.Unload = function(PypkHNpYF)
		if PYMBJvUCOh.BlurEffect then
			PYMBJvUCOh.BlurEffect.Size = 0
		end

		for udqfjGdZsfFL, BEBEAVTqVC in PypkHNpYF.Connections do
			BEBEAVTqVC.Connection:Disconnect()
		end

		for udqfjGdZsfFL, BEBEAVTqVC in PypkHNpYF.Threads do
			coroutine.close(BEBEAVTqVC)
		end

		if PypkHNpYF.Holder then
			PypkHNpYF.Holder:Clean()
		end

		PYMBJvUCOh = nil
		getgenv().Library = nil
	end

	PYMBJvUCOh.GetImage = function(PypkHNpYF, Image)
		local DfpNrShJOwK = PypkHNpYF.Images[Image]

		if not DfpNrShJOwK then
			return
		end

		return getcustomasset(PypkHNpYF.Folders.Assets .. "/" .. DfpNrShJOwK[1])
	end

	PYMBJvUCOh.Round = function(PypkHNpYF, Number, Float)
		local EoMWBVPHBg = 1 / (Float or 1)
		return mlIZjubgNQ(Number * EoMWBVPHBg) / EoMWBVPHBg
	end

	PYMBJvUCOh.Thread = function(PypkHNpYF, Function)
		local IcXBtcKrjb = coroutine.create(Function)

		coroutine.wrap(function()
			coroutine.resume(IcXBtcKrjb)
		end)()

		tJopVXlm(PypkHNpYF.Threads, IcXBtcKrjb)
		return IcXBtcKrjb
	end

	PYMBJvUCOh.SafeCall = function(PypkHNpYF, Function, ...)
		local ROfMcfvpu = { ... }
		local oNoeIYdYXYO, GkDVeLgrPbEt = CnNOmZmbEvte(Function, VuozwMgofAsU(ROfMcfvpu))

		if not oNoeIYdYXYO then
			--warn(Result)
			return false
		end

		return oNoeIYdYXYO
	end

	PYMBJvUCOh.Connect = function(PypkHNpYF, Event, Callback, Name)
		Name = Name
			or FBSOheevaVg("connection_number_%s_%s", PypkHNpYF.UnnamedConnections + 1, cBRSsybciMR:GenerateGUID(false))

		local abgIwrFfYKd = {Event= Event,
			Callback = Callback,
			Name = Name,
			Connection = nil,
		}

		PYMBJvUCOh:Thread(function()
			abgIwrFfYKd.Connection = Event:Connect(Callback)
		end)

		tJopVXlm(PypkHNpYF.Connections, abgIwrFfYKd)
		return abgIwrFfYKd
	end

	PYMBJvUCOh.Disconnect = function(PypkHNpYF, Name)
		for _, Connection in PypkHNpYF.Connections do
			if Connection.Name == Name then
				Connection.Connection:Disconnect()
				break
			end
		end
	end

	PYMBJvUCOh.EscapePattern = function(PypkHNpYF, String)
		local TxnlelfCL = false

		if string.match(String, "[%(%)%.%%%+%-%*%?%[%]%^%$]") then
			TxnlelfCL = true
		end

		if TxnlelfCL then
			return VYanDjTkR(String, "[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%1")
		end

		return String
	end

	PYMBJvUCOh.NextFlag = function(PypkHNpYF)
		local dAmZMhyTjRV = PypkHNpYF.UnnamedFlags + 1
		return FBSOheevaVg("flag_number_%s_%s", dAmZMhyTjRV, cBRSsybciMR:GenerateGUID(false))
	end

	PYMBJvUCOh.AddToTheme = function(PypkHNpYF, pcsyUdZD, Properties)
		pcsyUdZD = pcsyUdZD.Instance or pcsyUdZD

		local ssYMUHjJMH = {Item= pcsyUdZD,
			Properties = Properties,
		}

		for Property, BEBEAVTqVC in ssYMUHjJMH.Properties do
			if type(BEBEAVTqVC) == "string" then
				pcsyUdZD[Property] = PypkHNpYF.Theme[BEBEAVTqVC]
			else
				pcsyUdZD[Property] = BEBEAVTqVC()
			end
		end

		tJopVXlm(PypkHNpYF.ThemeItems, ssYMUHjJMH)
		PypkHNpYF.ThemeMap[pcsyUdZD] = ssYMUHjJMH
	end

	PYMBJvUCOh.GetConfig = function(PypkHNpYF)
		local FAJnjrdQqT = {}

		local oNoeIYdYXYO, GkDVeLgrPbEt = PYMBJvUCOh:SafeCall(function()
			for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.Flags do
				if type(BEBEAVTqVC) == "table" and BEBEAVTqVC.Key then
					FAJnjrdQqT[udqfjGdZsfFL] = {Key= EJJFGJzBaV(BEBEAVTqVC.Key), Mode = BEBEAVTqVC.Mode, Toggled = BEBEAVTqVC.Toggled }
				elseif type(BEBEAVTqVC) == "table" and BEBEAVTqVC.Color then
					FAJnjrdQqT[udqfjGdZsfFL] = {Color= "#" .. BEBEAVTqVC.HexValue, Alpha = BEBEAVTqVC.Alpha }
				else
					FAJnjrdQqT[udqfjGdZsfFL] = BEBEAVTqVC
				end
			end
		end)

		return cBRSsybciMR:JSONEncode(FAJnjrdQqT)
	end

	PYMBJvUCOh.LoadConfig = function(PypkHNpYF, FAJnjrdQqT)
		local rMdexgHLaWU = cBRSsybciMR:JSONDecode(FAJnjrdQqT)

		local oNoeIYdYXYO, GkDVeLgrPbEt = PYMBJvUCOh:SafeCall(function()
			for udqfjGdZsfFL, BEBEAVTqVC in rMdexgHLaWU do
				local GDkavtQbm = PYMBJvUCOh.SetFlags[udqfjGdZsfFL]

				if not GDkavtQbm then
					continue
				end

				if type(BEBEAVTqVC) == "table" and BEBEAVTqVC.Key then
					GDkavtQbm(BEBEAVTqVC)
				elseif type(BEBEAVTqVC) == "table" and BEBEAVTqVC.Color then
					GDkavtQbm(BEBEAVTqVC.Color, BEBEAVTqVC.Alpha)
				else
					GDkavtQbm(BEBEAVTqVC)
				end
			end
		end)

		return oNoeIYdYXYO, GkDVeLgrPbEt
	end

	PYMBJvUCOh.DeleteConfig = function(PypkHNpYF, FAJnjrdQqT)
		if isfile(PYMBJvUCOh.Folders.Configs .. "/" .. FAJnjrdQqT) then
			delfile(PYMBJvUCOh.Folders.Configs .. "/" .. FAJnjrdQqT)
		end
	end

	PYMBJvUCOh.RefreshConfigsList = function(PypkHNpYF, Element)
		local NcrDkYDRtn = {}
		local QqGQBWRc = {}

		NcrDkYDRtn = listfiles(PYMBJvUCOh.Folders.Configs)

		for udqfjGdZsfFL = 1, #NcrDkYDRtn do
			local vqEtUCXF = NcrDkYDRtn[udqfjGdZsfFL]

			if vqEtUCXF:sub(-5) == ".json" then
				local GjYgamGJo = vqEtUCXF:find(".json", 1, true)
				local WdKsjzNRIzuf = GjYgamGJo

				local ZAgIMIcNT = vqEtUCXF:sub(GjYgamGJo, GjYgamGJo)
				while ZAgIMIcNT ~= "/" and ZAgIMIcNT ~= "\\" and ZAgIMIcNT ~= "" do
					GjYgamGJo = GjYgamGJo - 1
					ZAgIMIcNT = vqEtUCXF:sub(GjYgamGJo, GjYgamGJo)
				end

				if ZAgIMIcNT == "/" or ZAgIMIcNT == "\\" then
					tJopVXlm(QqGQBWRc, vqEtUCXF:sub(GjYgamGJo + 1, WdKsjzNRIzuf - 1))
				end
			end
		end

		Element:Refresh(QqGQBWRc)
	end

	PYMBJvUCOh.ChangeItemTheme = function(PypkHNpYF, pcsyUdZD, Properties)
		pcsyUdZD = pcsyUdZD.Instance or pcsyUdZD

		if not PypkHNpYF.ThemeMap[pcsyUdZD] then
			return
		end

		PypkHNpYF.ThemeMap[pcsyUdZD].Properties = Properties
		PypkHNpYF.ThemeMap[pcsyUdZD] = PypkHNpYF.ThemeMap[pcsyUdZD]
	end

	PYMBJvUCOh.ChangeTheme = function(PypkHNpYF, AWmYOjCpSD, Color)
		if AWmYOjCpSD == "Accent" then
			return
		end

		PypkHNpYF.Theme[AWmYOjCpSD] = Color

		for _, pcsyUdZD in PypkHNpYF.ThemeItems do
			for Property, BEBEAVTqVC in pcsyUdZD.Properties do
				if type(BEBEAVTqVC) == "string" and BEBEAVTqVC == AWmYOjCpSD then
					pcsyUdZD.Item[Property] = Color
				elseif type(BEBEAVTqVC) == "function" then
					pcsyUdZD.Item[Property] = BEBEAVTqVC()
				end
			end
		end
	end

	PYMBJvUCOh.IsMouseOverFrame = function(PypkHNpYF, ZioCTvLFK)
		ZioCTvLFK = ZioCTvLFK.Instance

		local ECARUKPT = iKnspdwtTSDH(UkrMsQXajPHz.X, UkrMsQXajPHz.Y)

		return ECARUKPT.X >= ZioCTvLFK.AbsolutePosition.X
			and ECARUKPT.X <= ZioCTvLFK.AbsolutePosition.X + ZioCTvLFK.AbsoluteSize.X
			and ECARUKPT.Y >= ZioCTvLFK.AbsolutePosition.Y
			and ECARUKPT.Y <= ZioCTvLFK.AbsolutePosition.Y + ZioCTvLFK.AbsoluteSize.Y
	end

	PYMBJvUCOh.GetLighterColor = function(PypkHNpYF, Color, Increment)
		local DqLHTEUGxB, kcunoeSOtg, BEBEAVTqVC = Color:ToHSV()
		return XGKWAiyW(DqLHTEUGxB, kcunoeSOtg, BEBEAVTqVC * Increment)
	end

	do
		PYMBJvUCOh.CreateColorpicker = function(PypkHNpYF, Data)
			local lirFIIvqOova = {Hue= 0,
				Saturation = 0,
				Value = 0,

				Alpha = 0,

				IsOpen = false,
				IsOpen2 = false,

				Color = ybqEvbYIw(0, 0, 0),
				HexValue = "000000",

				Flag = Data.Flag,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["ColorpickerButton"] = gaLDMUsM:Create("TextButton", {Parent= Data.Parent.Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					Size = keGiDkjvH(0, 15, 0, 15),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = OkLOYtRHm,
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["ColorpickerButton"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["ColorpickerButton"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(152, 152, 152)),
					}),
				})

				aXsuNvBE["ColorpickerWindow"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.UnusedHolder.Instance,
					Name = "\0",
					Visible = false,
					Position = keGiDkjvH(0, 1032, 0, 123),
					BorderColor3 = ybqEvbYIw(0, 34, 37),
					Size = keGiDkjvH(0, 232, 0, 265),
					BorderSizePixel = 2,
					BackgroundColor3 = ybqEvbYIw(17, 21, 27),
				})

				aXsuNvBE["Glow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					ImageColor3 = OkLOYtRHm,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.699999988079071,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					Size = keGiDkjvH(1, 25, 1, 25),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "http://www.roblox.com/asset/?id=18245826428",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					ZIndex = -1,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
				})
				aXsuNvBE["Glow"]:AddToTheme({ImageColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					Color = OkLOYtRHm,
					LineJoinMode = Enum.LineJoinMode.Miter,
				}):AddToTheme({Color= "Accent" })

				aXsuNvBE["Alpha"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = iKnspdwtTSDH(0, 1),
					BorderSizePixel = 0,
					Position = keGiDkjvH(0, 8, 1, -35),
					Size = keGiDkjvH(1, -16, 0, 10),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = OkLOYtRHm,
				})

				aXsuNvBE["Checkers"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Alpha"].Instance,
					Name = "\0",
					ScaleType = Enum.ScaleType.Tile,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					TileSize = keGiDkjvH(0, 6, 0, 6),
					Image = "http://www.roblox.com/asset/?id=18274452449",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 1, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Checkers"].Instance,
					Name = "\0",
					Transparency = BHBoHFKZBWJ({
						wmZytpMBcGpL(0, 1),
						wmZytpMBcGpL(0.37, 0.5),
						wmZytpMBcGpL(1, 0),
					}),
				})

				aXsuNvBE["AlphaDragger"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Alpha"].Instance,
					Name = "\0",
					Size = keGiDkjvH(0, 2, 1, 0),
					Position = keGiDkjvH(0, 8, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["AlphaDragger"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Hue"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = iKnspdwtTSDH(1, 0),
					BorderSizePixel = 0,
					Position = keGiDkjvH(1, -7, 0, 8),
					Size = keGiDkjvH(0, 10, 1, -59),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				aXsuNvBE["HueInline"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["Hue"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Size = keGiDkjvH(1, 0, 1, 0),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["HueInline"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 0, 0)),
						WUxYPIsR(0.17, ybqEvbYIw(255, 255, 0)),
						WUxYPIsR(0.33, ybqEvbYIw(0, 255, 0)),
						WUxYPIsR(0.5, ybqEvbYIw(0, 255, 255)),
						WUxYPIsR(0.67, ybqEvbYIw(0, 0, 255)),
						WUxYPIsR(0.83, ybqEvbYIw(255, 0, 255)),
						WUxYPIsR(1, ybqEvbYIw(255, 0, 0)),
					}),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Hue"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["HueDragger"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Hue"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundTransparency = -0.009999999776482582,
					Position = keGiDkjvH(0, 0, 0, 8),
					Size = keGiDkjvH(1, 0, 0, 2),
					ZIndex = 3,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["HueDragger"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Palette"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Position = keGiDkjvH(0, 8, 0, 8),
					Size = keGiDkjvH(1, -31, 1, -59),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = OkLOYtRHm,
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Palette"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Saturation"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Palette"].Instance,
					Name = "\0",
					Size = keGiDkjvH(1, 0, 1, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Saturation"].Instance,
					Name = "\0",
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 1), wmZytpMBcGpL(1, 0) }),
				})

				aXsuNvBE["Value"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Palette"].Instance,
					Name = "\0",
					Size = keGiDkjvH(1, 0, 1, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(0, 0, 0),
				})

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Value"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 1), wmZytpMBcGpL(1, 0) }),
				})

				aXsuNvBE["PaletteDragger"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Palette"].Instance,
					Name = "\0",
					Size = keGiDkjvH(0, 2, 0, 2),
					Position = keGiDkjvH(0, 8, 0, 8),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["PaletteDragger"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["HexInput"] = gaLDMUsM:Create("TextBox", {Parent= aXsuNvBE["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					ClearTextOnFocus = false,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AnchorPoint = iKnspdwtTSDH(0, 1),
					Size = keGiDkjvH(1, -16, 0, 20),
					PlaceholderColor3 = ybqEvbYIw(255, 255, 255),
					Position = keGiDkjvH(0, 8, 1, -7),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["HexInput"]:AddToTheme({TextColor3= "Text", BackgroundColor3 = "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["HexInput"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["ColorpickerWindow2"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.UnusedHolder.Instance,
					Name = "\0",
					Position = keGiDkjvH(0, 0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0, 50, 0, 20),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
					AutomaticSize = Enum.AutomaticSize.Y,
				})
				aXsuNvBE["ColorpickerWindow2"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["ColorpickerWindow2"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["ColorpickerWindow2"].Instance,
					Name = "\0",
					Padding = ZRxtzEskBOxd(0, 2),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			end

			local JajXcJOvqb = function(Name, Callback)
				local IYfeJAndtT = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["ColorpickerWindow2"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = Name,
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				IYfeJAndtT:AddToTheme({TextColor3= "Text" })

				IYfeJAndtT:Connect("MouseButton1Down", function()
					Callback()
					lirFIIvqOova:SetOpen2(false)
				end)

				return IYfeJAndtT
			end

			JajXcJOvqb("Copy", function()
				local kJodOzkYyChG = mlIZjubgNQ(lirFIIvqOova.Color.R * 255)
				local kDcqlQdET = mlIZjubgNQ(lirFIIvqOova.Color.G * 255)
				local MOPIpnPECO = mlIZjubgNQ(lirFIIvqOova.Color.B * 255)

				setclipboard(kJodOzkYyChG .. ", " .. kDcqlQdET .. ", " .. MOPIpnPECO)
				PYMBJvUCOh.CopiedColor = kJodOzkYyChG .. ", " .. kDcqlQdET .. ", " .. MOPIpnPECO
			end)
			JajXcJOvqb("Paste", function()
				if PYMBJvUCOh.CopiedColor then
					local kJodOzkYyChG, kDcqlQdET, MOPIpnPECO = PYMBJvUCOh.CopiedColor:match("(%d+),%s*(%d+),%s*(%d+)")
					kJodOzkYyChG, kDcqlQdET, MOPIpnPECO = liisJTFQukG(kJodOzkYyChG), liisJTFQukG(kDcqlQdET), liisJTFQukG(MOPIpnPECO)

					lirFIIvqOova:Set({ kJodOzkYyChG, kDcqlQdET, MOPIpnPECO }, lirFIIvqOova.Alpha)
				end
			end)

			local liNlxTav = false
			local WDCpkgBRzY = false
			local DNIYrGYzCZS = false

			local lbtiqelzvhe = false
			local BVSofntMPCJ

			local mAidgDuDF

			function lirFIIvqOova:Get()
				return lirFIIvqOova.Color, lirFIIvqOova.Alpha
			end

			function lirFIIvqOova:SetOpen(Bool)
				if lbtiqelzvhe then
					return
				end

				lirFIIvqOova.IsOpen = Bool

				lbtiqelzvhe = true

				if lirFIIvqOova.IsOpen then
					aXsuNvBE["ColorpickerWindow"].Instance.Visible = true
					aXsuNvBE["ColorpickerWindow"].Instance.Parent = PYMBJvUCOh.Holder.Instance

					BVSofntMPCJ = GgtrVFeG.RenderStepped:Connect(function()
						aXsuNvBE["ColorpickerWindow"].Instance.Position = keGiDkjvH(
							0,
							aXsuNvBE["ColorpickerButton"].Instance.AbsolutePosition.X,
							0,
							aXsuNvBE["ColorpickerButton"].Instance.AbsolutePosition.Y
								+ aXsuNvBE["ColorpickerButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)

					for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.OpenFrames do
						if BEBEAVTqVC ~= lirFIIvqOova then
							BEBEAVTqVC:SetOpen(false)
						end
					end

					PYMBJvUCOh.OpenFrames[lirFIIvqOova] = lirFIIvqOova
				else
					if PYMBJvUCOh.OpenFrames[lirFIIvqOova] then
						PYMBJvUCOh.OpenFrames[lirFIIvqOova] = nil
					end

					if BVSofntMPCJ then
						BVSofntMPCJ:Disconnect()
						BVSofntMPCJ = nil
					end
				end

				local gPgbXpywRKA = aXsuNvBE["ColorpickerWindow"].Instance:GetDescendants()
				tJopVXlm(gPgbXpywRKA, aXsuNvBE["ColorpickerWindow"].Instance)

				local WgxhdbUDPOBb

				for udqfjGdZsfFL, BEBEAVTqVC in gPgbXpywRKA do
					local yosjrPzqnp = FVSWOKYqRyR:GetProperty(BEBEAVTqVC)

					if not yosjrPzqnp then
						continue
					end

					if not BEBEAVTqVC.ClassName:find("UI") then
						BEBEAVTqVC.ZIndex = lirFIIvqOova.IsOpen and 104 or 1
						aXsuNvBE["Glow"].Instance.ZIndex = lirFIIvqOova.IsOpen and 103 or 1
					end

					if type(yosjrPzqnp) == "table" then
						for _, Property in yosjrPzqnp do
							WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, Property, Bool, PYMBJvUCOh.FadeSpeed)
						end
					else
						WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, yosjrPzqnp, Bool, PYMBJvUCOh.FadeSpeed)
					end
				end

				WgxhdbUDPOBb.Tween.Completed:Connect(function()
					lbtiqelzvhe = false
					aXsuNvBE["ColorpickerWindow"].Instance.Visible = lirFIIvqOova.IsOpen
					task.wait(0.2)
					aXsuNvBE["ColorpickerWindow"].Instance.Parent = not lirFIIvqOova.IsOpen
							and PYMBJvUCOh.UnusedHolder.Instance
						or PYMBJvUCOh.Holder.Instance
				end)
			end

			function lirFIIvqOova:SetOpen2(Bool)
				lirFIIvqOova.IsOpen2 = Bool
				if Bool then
					aXsuNvBE["ColorpickerWindow2"].Instance.Visible = true
					aXsuNvBE["ColorpickerWindow2"].Instance.Parent = PYMBJvUCOh.Holder.Instance

					mAidgDuDF = GgtrVFeG.RenderStepped:Connect(function()
						aXsuNvBE["ColorpickerWindow2"].Instance.Position = keGiDkjvH(
							0,
							aXsuNvBE["ColorpickerButton"].Instance.AbsolutePosition.X
								+ aXsuNvBE["ColorpickerButton"].Instance.AbsoluteSize.X,
							0,
							aXsuNvBE["ColorpickerButton"].Instance.AbsolutePosition.Y
								+ aXsuNvBE["ColorpickerButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)
				else
					if mAidgDuDF then
						mAidgDuDF:Disconnect()
						mAidgDuDF = nil
					end

					aXsuNvBE["ColorpickerWindow2"].Instance.Visible = false
					aXsuNvBE["ColorpickerWindow2"].Instance.Parent = PYMBJvUCOh.UnusedHolder.Instance
				end
			end

			function lirFIIvqOova:SlidePalette(Input)
				if not Input or not liNlxTav then
					return
				end

				local vCfJjGkzH = CjSozEPtYIva(
					1
						- (Input.Position.X - aXsuNvBE["Palette"].Instance.AbsolutePosition.X)
							/ aXsuNvBE["Palette"].Instance.AbsoluteSize.X,
					0,
					1
				)
				local bnALVYKPd = CjSozEPtYIva(
					1
						- (Input.Position.Y - aXsuNvBE["Palette"].Instance.AbsolutePosition.Y)
							/ aXsuNvBE["Palette"].Instance.AbsoluteSize.Y,
					0,
					1
				)

				lirFIIvqOova.Saturation = vCfJjGkzH
				lirFIIvqOova.Value = bnALVYKPd

				local SqvLDRYFJVC = CjSozEPtYIva(
					(Input.Position.X - aXsuNvBE["Palette"].Instance.AbsolutePosition.X)
						/ aXsuNvBE["Palette"].Instance.AbsoluteSize.X,
					0,
					0.99
				)
				local buAQOktFJI = CjSozEPtYIva(
					(Input.Position.Y - aXsuNvBE["Palette"].Instance.AbsolutePosition.Y)
						/ aXsuNvBE["Palette"].Instance.AbsoluteSize.Y,
					0,
					0.99
				)

				aXsuNvBE["PaletteDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(SqvLDRYFJVC, 0, buAQOktFJI, 0) }
				)
				lirFIIvqOova:Update()
			end

			function lirFIIvqOova:SlideHue(Input)
				if not Input or not WDCpkgBRzY then
					return
				end

				local bnALVYKPd = CjSozEPtYIva(
					(Input.Position.Y - aXsuNvBE["Hue"].Instance.AbsolutePosition.Y) / aXsuNvBE["Hue"].Instance.AbsoluteSize.Y,
					0,
					1
				)

				lirFIIvqOova.Hue = bnALVYKPd

				local buAQOktFJI = CjSozEPtYIva(
					(Input.Position.Y - aXsuNvBE["Hue"].Instance.AbsolutePosition.Y) / aXsuNvBE["Hue"].Instance.AbsoluteSize.Y,
					0,
					0.99
				)

				aXsuNvBE["HueDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(0, 0, buAQOktFJI, 0) }
				)
				lirFIIvqOova:Update()
			end

			function lirFIIvqOova:SlideAlpha(Input)
				if not Input or not DNIYrGYzCZS then
					return
				end

				local vCfJjGkzH = CjSozEPtYIva(
					(Input.Position.X - aXsuNvBE["Alpha"].Instance.AbsolutePosition.X)
						/ aXsuNvBE["Alpha"].Instance.AbsoluteSize.X,
					0,
					1
				)

				lirFIIvqOova.Alpha = vCfJjGkzH

				local SqvLDRYFJVC = CjSozEPtYIva(
					(Input.Position.X - aXsuNvBE["Alpha"].Instance.AbsolutePosition.X)
						/ aXsuNvBE["Alpha"].Instance.AbsoluteSize.X,
					0,
					0.99
				)

				aXsuNvBE["AlphaDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(SqvLDRYFJVC, 0, 0, 0) }
				)
				lirFIIvqOova:Update(true)
			end

			function lirFIIvqOova:Update(IsFromAlpha)
				local DqLHTEUGxB, kcunoeSOtg, BEBEAVTqVC = lirFIIvqOova.Hue, lirFIIvqOova.Saturation, lirFIIvqOova.Value
				lirFIIvqOova.Color = XGKWAiyW(DqLHTEUGxB, kcunoeSOtg, BEBEAVTqVC)
				lirFIIvqOova.HexValue = lirFIIvqOova.Color:ToHex()

				PYMBJvUCOh.Flags[lirFIIvqOova.Flag] = {Alpha= lirFIIvqOova.Alpha,
					Color = lirFIIvqOova.Color,
					HexValue = lirFIIvqOova.HexValue,
				}

				aXsuNvBE["ColorpickerButton"]:Tween(nil, {BackgroundColor3= lirFIIvqOova.Color })
				aXsuNvBE["Palette"]:Tween(nil, {BackgroundColor3= XGKWAiyW(DqLHTEUGxB, 1, 1) })
				aXsuNvBE["HexInput"].Instance.Text = "#" .. lirFIIvqOova.HexValue

				if not IsFromAlpha then
					aXsuNvBE["Alpha"]:Tween(nil, {BackgroundColor3= lirFIIvqOova.Color })
				end

				if Data.Callback then
					PYMBJvUCOh:SafeCall(Data.Callback, lirFIIvqOova.Color, lirFIIvqOova.Alpha)
				end
			end

			function lirFIIvqOova:Set(Color, Alpha)
				if type(Color) == "table" then
					Color = ybqEvbYIw(Color[1], Color[2], Color[3])
				elseif type(Color) == "string" then
					Color = TfJIHldJmFaR(Color)
				end

				lirFIIvqOova.Hue, lirFIIvqOova.Saturation, lirFIIvqOova.Value = Color:ToHSV()
				lirFIIvqOova.Alpha = Alpha or 0

				local aIXwEMxiRRCE = CjSozEPtYIva(1 - lirFIIvqOova.Saturation, 0, 0.99)
				local bXAofSQbFW = CjSozEPtYIva(1 - lirFIIvqOova.Value, 0, 0.99)

				local shVFIcUlbKC = CjSozEPtYIva(lirFIIvqOova.Alpha, 0, 0.99)

				local ncGZZraQh = CjSozEPtYIva(lirFIIvqOova.Hue, 0, 0.99)

				aXsuNvBE["PaletteDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(aIXwEMxiRRCE, 0, bXAofSQbFW, 0) }
				)
				aXsuNvBE["HueDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(0, 0, ncGZZraQh, 0) }
				)
				aXsuNvBE["AlphaDragger"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Position= keGiDkjvH(shVFIcUlbKC, 0, 0, 0) }
				)
				lirFIIvqOova:Update(false)
			end

			local ZRdLneNte

			aXsuNvBE["Palette"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					liNlxTav = true
					lirFIIvqOova:SlidePalette(Input)

					if ZRdLneNte then 
						return 
					end

					ZRdLneNte = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							liNlxTav = false

							ZRdLneNte:Disconnect()
							ZRdLneNte = nil
						end
					end)
				end
			end)

			local LiqcpKzw

			aXsuNvBE["HueInline"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					WDCpkgBRzY = true
					lirFIIvqOova:SlideHue(Input)

					if LiqcpKzw then 
						return 
					end

					LiqcpKzw = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							WDCpkgBRzY = false

							LiqcpKzw:Disconnect()
							LiqcpKzw = nil
						end
					end)
				end
			end)

			local NTCvReHpRI

			aXsuNvBE["Alpha"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					DNIYrGYzCZS = true
					lirFIIvqOova:SlideAlpha(Input)

					if NTCvReHpRI then 
						return
					end

					NTCvReHpRI = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							DNIYrGYzCZS = false

							NTCvReHpRI:Disconnect()
							NTCvReHpRI = nil
						end
					end)
				end
			end)

			aXsuNvBE["HexInput"]:Connect("FocusLost", function()
				lirFIIvqOova:Set(EJJFGJzBaV(aXsuNvBE["HexInput"].Instance.Text), lirFIIvqOova.Alpha)
			end)

			local gfgyqZrcy = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local TGAEZBJhPxL = function(Object, Column)
				local DDOxzolyng = Column

				local uyOGurmqnLK = DDOxzolyng.AbsolutePosition
				local kNGyXOplFsX = uyOGurmqnLK + DDOxzolyng.AbsoluteSize

				local LXYsFhDBCwC = Object.AbsolutePosition
				local ccDONWjdNqCy = LXYsFhDBCwC + Object.AbsoluteSize

				return gfgyqZrcy(LXYsFhDBCwC, uyOGurmqnLK) or gfgyqZrcy(kNGyXOplFsX, ccDONWjdNqCy)
			end

			aXsuNvBE["ColorpickerButton"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and lirFIIvqOova.IsOpen then
					lirFIIvqOova.IsOpen = not TGAEZBJhPxL(
						aXsuNvBE["ColorpickerWindow"].Instance,
						Data.Section.Items["Section"].Instance.Parent
					)
					aXsuNvBE["ColorpickerWindow"].Instance.Visible = lirFIIvqOova.IsOpen
				end
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
					if liNlxTav then
						lirFIIvqOova:SlidePalette(Input)
					elseif WDCpkgBRzY then
						lirFIIvqOova:SlideHue(Input)
					elseif DNIYrGYzCZS then
						lirFIIvqOova:SlideAlpha(Input)
					end
				end
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					if not lirFIIvqOova.IsOpen then
						return
					end

					if
						PYMBJvUCOh:IsMouseOverFrame(aXsuNvBE["ColorpickerWindow"])
						or PYMBJvUCOh:IsMouseOverFrame(aXsuNvBE["ColorpickerWindow2"])
					then
						return
					end

					lirFIIvqOova:SetOpen(false)
					lirFIIvqOova:SetOpen2(false)
				end
			end)

			aXsuNvBE["ColorpickerButton"]:Connect("MouseButton1Down", function()
				lirFIIvqOova:SetOpen(not lirFIIvqOova.IsOpen)
			end)

			aXsuNvBE["ColorpickerButton"]:Connect("MouseButton2Down", function()
				lirFIIvqOova:SetOpen2(not lirFIIvqOova.IsOpen2)
			end)

			if Data.Default then
				lirFIIvqOova:Set(Data.Default, Data.Alpha)
			end

			PYMBJvUCOh.SetFlags[lirFIIvqOova.Flag] = function(Color, Alpha)
				lirFIIvqOova:Set(Color, Alpha)
			end

			return lirFIIvqOova, aXsuNvBE
		end

		PYMBJvUCOh.CreateKeybind = function(PypkHNpYF, Data)
			local kAHDsahreDvJ = {IsOpen= false,

				Key = "",
				Toggled = false,
				Mode = "",

				Flag = Data.Flag,

				Picking = false,
				Value = "",
			}

			local YpMclaPsibFd
			if PYMBJvUCOh.KeyList then
				YpMclaPsibFd = PYMBJvUCOh.KeyList:Add("", "")
			end

			local aXsuNvBE = {}
			do
				aXsuNvBE["KeyButton"] = gaLDMUsM:Create("TextButton", {Parent= Data.Parent.Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.5,
					Text = "Unbound",
					AutoButtonColor = false,
					Size = keGiDkjvH(0, 0, 0, 15),
					BorderSizePixel = 0,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["KeyButton"]:AddToTheme({TextColor3= "Text", BackgroundColor3 = "Element" })

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["KeyButton"].Instance,
					Name = "\0",
					PaddingRight = ZRxtzEskBOxd(0, 8),
					PaddingLeft = ZRxtzEskBOxd(0, 8),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["KeyButton"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["KeybindWindow"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.UnusedHolder.Instance,
					Name = "\0",
					Visible = false,
					Position = keGiDkjvH(0, 114, 0, 35),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					Size = keGiDkjvH(0, 78, 0, 66),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["KeybindWindow"]:AddToTheme({BackgroundColor3= "Element" })

				aXsuNvBE["Toggle"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Position = keGiDkjvH(0, 2, 0, 2),
					Size = keGiDkjvH(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["Toggle"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(200, 200, 200)),
					}),
				})

				aXsuNvBE["ToggleStroke"] = gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				aXsuNvBE["ToggleStroke"]:AddToTheme({Color= "Border" })

				aXsuNvBE["ToggleLiner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					Size = keGiDkjvH(0, 1, 1, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["ToggleLiner"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["ToggleText"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "Toggle",
					AutomaticSize = Enum.AutomaticSize.X,
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 7, 0.5, 0),
					BorderSizePixel = 0,
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["ToggleText"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["Hold"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 2, 0, 22),
					Size = keGiDkjvH(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["Hold"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Hold"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(200, 200, 200)),
					}),
				})

				aXsuNvBE["HoldStroke"] = gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Hold"].Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				aXsuNvBE["HoldStroke"]:AddToTheme({Color= "Border" })

				aXsuNvBE["HoldLiner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Hold"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(0, 1, 1, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["HoldLiner"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["HoldText"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Hold"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = "Hold",
					AutomaticSize = Enum.AutomaticSize.X,
					Size = keGiDkjvH(0, 0, 0, 15),
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 10, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["HoldText"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["AlwaysOn"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 2, 0, 44),
					Size = keGiDkjvH(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["AlwaysOn"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(200, 200, 200)),
					}),
				})

				aXsuNvBE["AlwaysOnStroke"] = gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["AlwaysOn"].Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				aXsuNvBE["AlwaysOnStroke"]:AddToTheme({Color= "Border" })

				aXsuNvBE["AlwaysOnLiner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["AlwaysOn"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(0, 1, 1, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["AlwaysOnLiner"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["AlwaysOnText"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["AlwaysOn"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = "Always On",
					AutomaticSize = Enum.AutomaticSize.X,
					Size = keGiDkjvH(0, 0, 0, 15),
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 10, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["AlwaysOnText"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["KeyButton"]:OnHover(function()
					aXsuNvBE["KeyButton"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["KeyButton"]:OnHoverLeave(function()
					aXsuNvBE["KeyButton"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)
			end

			local jSBaAXKaCQrE = function()
				if YpMclaPsibFd then
					YpMclaPsibFd:SetText(Data.Name, kAHDsahreDvJ.Value)
					YpMclaPsibFd:SetStatus(kAHDsahreDvJ.Toggled)
				end
			end

			local uzsHvXVOsdv = {
				["Toggle"] = { aXsuNvBE["Toggle"], aXsuNvBE["ToggleText"], aXsuNvBE["ToggleStroke"], aXsuNvBE["ToggleLiner"] },
				["Hold"] = { aXsuNvBE["Hold"], aXsuNvBE["HoldText"], aXsuNvBE["HoldStroke"], aXsuNvBE["HoldLiner"] },
				["Always On"] = {
					aXsuNvBE["AlwaysOn"],
					aXsuNvBE["AlwaysOnText"],
					aXsuNvBE["AlwaysOnStroke"],
					aXsuNvBE["AlwaysOnLiner"],
				},
			}

			function kAHDsahreDvJ:Get()
				return kAHDsahreDvJ.Mode, kAHDsahreDvJ.Key, kAHDsahreDvJ.Toggled
			end

			local lbtiqelzvhe = false
			local BVSofntMPCJ

			function kAHDsahreDvJ:SetOpen(Bool)
				if lbtiqelzvhe then
					return
				end

				kAHDsahreDvJ.IsOpen = Bool

				lbtiqelzvhe = true

				if kAHDsahreDvJ.IsOpen then
					aXsuNvBE["KeybindWindow"].Instance.Visible = true
					aXsuNvBE["KeybindWindow"].Instance.Parent = PYMBJvUCOh.Holder.Instance

					BVSofntMPCJ = GgtrVFeG.RenderStepped:Connect(function()
						aXsuNvBE["KeybindWindow"].Instance.Position = keGiDkjvH(
							0,
							aXsuNvBE["KeyButton"].Instance.AbsolutePosition.X,
							0,
							aXsuNvBE["KeyButton"].Instance.AbsolutePosition.Y
								+ aXsuNvBE["KeyButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)

					if not lbtiqelzvhe then
						for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.OpenFrames do
							if BEBEAVTqVC ~= kAHDsahreDvJ then
								BEBEAVTqVC:SetOpen(false)
							end
						end

						PYMBJvUCOh.OpenFrames[kAHDsahreDvJ] = kAHDsahreDvJ
					end
				else
					if not lbtiqelzvhe then
						if PYMBJvUCOh.OpenFrames[kAHDsahreDvJ] then
							PYMBJvUCOh.OpenFrames[kAHDsahreDvJ] = nil
						end
					end

					if BVSofntMPCJ then
						BVSofntMPCJ:Disconnect()
						BVSofntMPCJ = nil
					end
				end

				local gPgbXpywRKA = aXsuNvBE["KeybindWindow"].Instance:GetDescendants()
				tJopVXlm(gPgbXpywRKA, aXsuNvBE["KeybindWindow"].Instance)

				local WgxhdbUDPOBb

				for udqfjGdZsfFL, BEBEAVTqVC in gPgbXpywRKA do
					local yosjrPzqnp = FVSWOKYqRyR:GetProperty(BEBEAVTqVC)

					if not yosjrPzqnp then
						continue
					end

					if type(yosjrPzqnp) == "table" then
						for _, Property in yosjrPzqnp do
							WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, Property, Bool, PYMBJvUCOh.FadeSpeed)
						end
					else
						WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, yosjrPzqnp, Bool, PYMBJvUCOh.FadeSpeed)
					end
				end

				WgxhdbUDPOBb.Tween.Completed:Connect(function()
					lbtiqelzvhe = false
					aXsuNvBE["KeybindWindow"].Instance.Visible = kAHDsahreDvJ.IsOpen
					task.wait(0.2)
					aXsuNvBE["KeybindWindow"].Instance.Parent = not kAHDsahreDvJ.IsOpen and PYMBJvUCOh.UnusedHolder.Instance
						or PYMBJvUCOh.Holder.Instance
				end)
			end

			function kAHDsahreDvJ:Set(Key)
				if ksFUDmyXEp(EJJFGJzBaV(Key), "Enum") then
					kAHDsahreDvJ.Key = EJJFGJzBaV(Key)

					Key = Key.Name == "Backspace" and "None" or Key.Name

					local BRtPGIppxrB = vBVDCQLcSwM[kAHDsahreDvJ.Key] or VYanDjTkR(Key, "Enum.", "") or "None"
					local FNxmDafSUld = VYanDjTkR(VYanDjTkR(BRtPGIppxrB, "KeyCode.", ""), "UserInputType.", "")
						or "None"

					kAHDsahreDvJ.Value = FNxmDafSUld
					aXsuNvBE["KeyButton"].Instance.Text = FNxmDafSUld

					PYMBJvUCOh.Flags[kAHDsahreDvJ.Flag] = {Mode= kAHDsahreDvJ.Mode,
						Key = kAHDsahreDvJ.Key,
						Toggled = kAHDsahreDvJ.Toggled,
					}

					if Data.Callback then
						PYMBJvUCOh:SafeCall(Data.Callback, kAHDsahreDvJ.Toggled)
					end

					jSBaAXKaCQrE()
				elseif type(Key) == "table" then
					local SwJWIbHSsU = Key.Key == "Backspace" and "None" or Key.Key
					kAHDsahreDvJ.Key = EJJFGJzBaV(Key.Key)

					if Key.Mode then
						kAHDsahreDvJ.Mode = Key.Mode
						kAHDsahreDvJ:SetMode(Key.Mode)
					else
						kAHDsahreDvJ.Mode = "Toggle"
						kAHDsahreDvJ:SetMode("Toggle")
					end

					local BRtPGIppxrB = vBVDCQLcSwM[kAHDsahreDvJ.Key] or VYanDjTkR(EJJFGJzBaV(SwJWIbHSsU), "Enum.", "") or SwJWIbHSsU
					local FNxmDafSUld = BRtPGIppxrB
							and VYanDjTkR(VYanDjTkR(BRtPGIppxrB, "KeyCode.", ""), "UserInputType.", "")
						or "None"

					FNxmDafSUld = VYanDjTkR(VYanDjTkR(BRtPGIppxrB, "KeyCode.", ""), "UserInputType.", "")

					kAHDsahreDvJ.Value = FNxmDafSUld
					aXsuNvBE["KeyButton"].Instance.Text = FNxmDafSUld

					if Key.Toggled then
						kAHDsahreDvJ:Press(Key.Toggled, true)
					end

					if Data.Callback then
						PYMBJvUCOh:SafeCall(Data.Callback, kAHDsahreDvJ.Toggled)
					end

					jSBaAXKaCQrE()
				elseif wTYmJuDf({ "Toggle", "Hold", "Always" }, Key) then
					kAHDsahreDvJ.Mode = Key
					kAHDsahreDvJ:SetMode(kAHDsahreDvJ.Mode)

					if Data.Callback then
						PYMBJvUCOh:SafeCall(Data.Callback, kAHDsahreDvJ.Toggled)
					end

					jSBaAXKaCQrE()
				elseif type(Key) == "boolean" then
					kAHDsahreDvJ:Press(Key)
				end

				kAHDsahreDvJ.Picking = false
			end

			function kAHDsahreDvJ:Press(Bool)
				if kAHDsahreDvJ.Mode == "Toggle" then
					kAHDsahreDvJ.Toggled = not kAHDsahreDvJ.Toggled
				elseif kAHDsahreDvJ.Mode == "Hold" then
					kAHDsahreDvJ.Toggled = Bool
				elseif kAHDsahreDvJ.Mode == "Always" then
					kAHDsahreDvJ.Toggled = true
				end

				PYMBJvUCOh.Flags[kAHDsahreDvJ.Flag] = {Mode= kAHDsahreDvJ.Mode,
					Key = kAHDsahreDvJ.Key,
					Toggled = kAHDsahreDvJ.Toggled,
				}

				if Data.Callback then
					PYMBJvUCOh:SafeCall(Data.Callback, kAHDsahreDvJ.Toggled)
				end

				jSBaAXKaCQrE()
			end

			function kAHDsahreDvJ:SetMode(Mode)
				for udqfjGdZsfFL, BEBEAVTqVC in uzsHvXVOsdv do
					if udqfjGdZsfFL == Mode then
						BEBEAVTqVC[1]:Tween(nil, {BackgroundTransparency= 0 })
						BEBEAVTqVC[4]:Tween(nil, {BackgroundTransparency= 0 })
						BEBEAVTqVC[2]:Tween(nil, {TextTransparency= 0 })
						BEBEAVTqVC[3]:Tween(nil, {Transparency= 0 })
					else
						BEBEAVTqVC[1]:Tween(nil, {BackgroundTransparency= 1 })
						BEBEAVTqVC[4]:Tween(nil, {BackgroundTransparency= 1 })
						BEBEAVTqVC[2]:Tween(nil, {TextTransparency= 0.4 })
						BEBEAVTqVC[3]:Tween(nil, {Transparency= 1 })
					end
				end

				PYMBJvUCOh.Flags[kAHDsahreDvJ.Flag] = {Mode= kAHDsahreDvJ.Mode,
					Key = kAHDsahreDvJ.Key,
					Toggled = kAHDsahreDvJ.Toggled,
				}

				if Data.Callback then
					PYMBJvUCOh:SafeCall(Data.Callback, kAHDsahreDvJ.Toggled)
				end

				jSBaAXKaCQrE()
			end

			local gfgyqZrcy = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local TGAEZBJhPxL = function(Object, Column)
				local DDOxzolyng = Column

				local uyOGurmqnLK = DDOxzolyng.AbsolutePosition
				local kNGyXOplFsX = uyOGurmqnLK + DDOxzolyng.AbsoluteSize

				local LXYsFhDBCwC = Object.AbsolutePosition
				local ccDONWjdNqCy = LXYsFhDBCwC + Object.AbsoluteSize

				return gfgyqZrcy(LXYsFhDBCwC, uyOGurmqnLK) or gfgyqZrcy(kNGyXOplFsX, ccDONWjdNqCy)
			end

			aXsuNvBE["KeyButton"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and kAHDsahreDvJ.IsOpen then
					kAHDsahreDvJ.IsOpen =
						not TGAEZBJhPxL(aXsuNvBE["KeybindWindow"].Instance, Data.Section.Items["Section"].Instance.Parent)
					aXsuNvBE["KeybindWindow"].Instance.Visible = kAHDsahreDvJ.IsOpen
				end
			end)

			aXsuNvBE["KeyButton"]:Connect("MouseButton1Click", function()
				kAHDsahreDvJ.Picking = true

				aXsuNvBE["KeyButton"].Instance.Text = "."
				PYMBJvUCOh:Thread(function()
					local EuwJRBOw = 1

					while true do
						if not kAHDsahreDvJ.Picking then
							break
						end

						if EuwJRBOw == 4 then
							EuwJRBOw = 1
						end

						aXsuNvBE["KeyButton"].Instance.Text = EuwJRBOw == 1 and "."
							or EuwJRBOw == 2 and ".."
							or EuwJRBOw == 3 and "..."
						EuwJRBOw += 1
						task.wait(0.4)
					end
				end)

				local YVyxGagQRph
				YVyxGagQRph = iwUZWTTfTft.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.Keyboard then
						kAHDsahreDvJ:Set(Input.KeyCode)
					else
						kAHDsahreDvJ:Set(Input.UserInputType)
					end

					YVyxGagQRph:Disconnect()
					YVyxGagQRph = nil
				end)
			end)

			aXsuNvBE["KeyButton"]:Connect("MouseButton2Down", function()
				kAHDsahreDvJ:SetOpen(not kAHDsahreDvJ.IsOpen)
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputBegan, function(Input)
				if kAHDsahreDvJ.Value == "None" then
					return
				end

				if EJJFGJzBaV(Input.KeyCode) == kAHDsahreDvJ.Key then
					if kAHDsahreDvJ.Mode == "Toggle" then
						kAHDsahreDvJ:Press()
					elseif kAHDsahreDvJ.Mode == "Hold" then
						kAHDsahreDvJ:Press(true)
					elseif kAHDsahreDvJ.Mode == "Always" then
						kAHDsahreDvJ:Press(true)
					end
				elseif EJJFGJzBaV(Input.UserInputType) == kAHDsahreDvJ.Key then
					if kAHDsahreDvJ.Mode == "Toggle" then
						kAHDsahreDvJ:Press()
					elseif kAHDsahreDvJ.Mode == "Hold" then
						kAHDsahreDvJ:Press(true)
					elseif kAHDsahreDvJ.Mode == "Always" then
						kAHDsahreDvJ:Press(true)
					end
				end

				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if not kAHDsahreDvJ.IsOpen then
						return
					end

					if PYMBJvUCOh:IsMouseOverFrame(aXsuNvBE["KeybindWindow"]) then
						return
					end

					kAHDsahreDvJ:SetOpen(false)
				end
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputEnded, function(Input)
				if kAHDsahreDvJ.Value == "None" then
					return
				end

				if EJJFGJzBaV(Input.KeyCode) == kAHDsahreDvJ.Key then
					if kAHDsahreDvJ.Mode == "Hold" then
						kAHDsahreDvJ:Press(false)
					elseif kAHDsahreDvJ.Mode == "Always" then
						kAHDsahreDvJ:Press(true)
					end
				elseif EJJFGJzBaV(Input.UserInputType) == kAHDsahreDvJ.Key then
					if kAHDsahreDvJ.Mode == "Hold" then
						kAHDsahreDvJ:Press(false)
					elseif kAHDsahreDvJ.Mode == "Always" then
						kAHDsahreDvJ:Press(true)
					end
				end
			end)

			aXsuNvBE["Toggle"]:Connect("MouseButton1Down", function()
				kAHDsahreDvJ.Mode = "Toggle"
				kAHDsahreDvJ:SetMode("Toggle")
			end)

			aXsuNvBE["Hold"]:Connect("MouseButton1Down", function()
				kAHDsahreDvJ.Mode = "Hold"
				kAHDsahreDvJ:SetMode("Hold")
			end)

			aXsuNvBE["AlwaysOn"]:Connect("MouseButton1Down", function()
				kAHDsahreDvJ.Mode = "Always"
				kAHDsahreDvJ:SetMode("Always On")
			end)

			if Data.Default then
				kAHDsahreDvJ:Set({Key= Data.Default, Mode = Data.Mode or "Toggle", Toggled = Data.Toggled })
			elseif YpMclaPsibFd then
				YpMclaPsibFd:SetText(Data.Name or "", "Unbound")
				YpMclaPsibFd:SetStatus(false)
			end

			PYMBJvUCOh.SetFlags[kAHDsahreDvJ.Flag] = function(BEBEAVTqVC)
				kAHDsahreDvJ:Set(BEBEAVTqVC)
			end

			return kAHDsahreDvJ, aXsuNvBE
		end

		PYMBJvUCOh.Watermark = function(PypkHNpYF, _)
			local KlIDyGNgpOoP = {}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Watermark"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.Holder.Instance,
					Name = "\0",
					AnchorPoint = iKnspdwtTSDH(0.5, 0),
					Position = keGiDkjvH(0.5, 0, 0, 25),
					BorderColor3 = ybqEvbYIw(0, 34, 37),
					Size = keGiDkjvH(0, 0, 0, 30),
					BorderSizePixel = 2,
					BackgroundColor3 = ybqEvbYIw(17, 21, 27),
					ZIndex = 5,
					AutomaticSize = Enum.AutomaticSize.X,
				})
				aXsuNvBE["Watermark"]:AddToTheme({BackgroundColor3= "Background 1" })

				aXsuNvBE["UIStroke"] = gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Watermark"].Instance,
					Name = "\0",
					Color = OkLOYtRHm,
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				aXsuNvBE["UIStroke"]:AddToTheme({Color= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["UIStroke"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({
						wmZytpMBcGpL(0, 0),
						wmZytpMBcGpL(0.696, 0.2749999761581421),
						wmZytpMBcGpL(0.84, 0.574999988079071),
						wmZytpMBcGpL(1, 1),
					}),
				})

				aXsuNvBE["Glow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Watermark"].Instance,
					Name = "\0",
					ImageColor3 = OkLOYtRHm,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					Size = keGiDkjvH(1, 25, 1, 25),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					ZIndex = 4,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
				})
				aXsuNvBE["Glow"]:AddToTheme({ImageColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Watermark"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "dopamine.wtf | gg/VJXXXd5UzP",
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 10, 0, 7),
					BorderSizePixel = 0,
					ZIndex = 5,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })
			end

			aXsuNvBE["Watermark"]:MakeDraggable(function()
				return PYMBJvUCOh.MainFrame and PYMBJvUCOh.MainFrame.Visible == true
			end)

			PYMBJvUCOh.WatermarkInstance = aXsuNvBE["Watermark"]

			function KlIDyGNgpOoP:SetText(Text)
				aXsuNvBE["Text"].Instance.Text = Text
			end

			function KlIDyGNgpOoP:SetVisibility(Bool)
				aXsuNvBE["Watermark"].Instance.Visible = Bool
			end

			return KlIDyGNgpOoP
		end

		PYMBJvUCOh.KeybindList = function(PypkHNpYF)
			local vZdvDOFQchW = {}
			PypkHNpYF.KeyList = vZdvDOFQchW

			local aXsuNvBE = {}
			do
				aXsuNvBE["KeybindList"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.Holder.Instance,
					Name = "\0",
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Position = keGiDkjvH(0, 20, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = ybqEvbYIw(24, 28, 36),
				})
				aXsuNvBE["KeybindList"]:AddToTheme({BackgroundColor3= "Background 2" })

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["KeybindList"].Instance,
					Name = "\0",
					PaddingTop = ZRxtzEskBOxd(0, 9),
					PaddingBottom = ZRxtzEskBOxd(0, 9),
					PaddingRight = ZRxtzEskBOxd(0, 9),
					PaddingLeft = ZRxtzEskBOxd(0, 9),
				})

				aXsuNvBE["Liner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["KeybindList"].Instance,
					Name = "\0",
					Position = keGiDkjvH(0, -9, 0, -9),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 18, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["Liner"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["Glow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Liner"].Instance,
					Name = "\0",
					ImageColor3 = OkLOYtRHm,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = OkLOYtRHm,
					Size = keGiDkjvH(0, 113, 1, 8),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
				})
				aXsuNvBE["Glow"]:AddToTheme({ImageColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				aXsuNvBE["Title"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["KeybindList"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "Keybinds",
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = keGiDkjvH(0, 0, 0, 15),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Title"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["Liner2"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["KeybindList"].Instance,
					Name = "\0",
					Position = keGiDkjvH(0, 0, 0, 21),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 0, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(46, 52, 61),
				})
				aXsuNvBE["Liner2"]:AddToTheme({BackgroundColor3= "Border" })

				aXsuNvBE["Content"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["KeybindList"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 0, 28),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["Content"].Instance,
					Name = "\0",
					Padding = ZRxtzEskBOxd(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

			gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["KeybindList"].Instance,
				Name = "\0",
				Color = ybqEvbYIw(46, 52, 61),
				LineJoinMode = Enum.LineJoinMode.Miter,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}):AddToTheme({Color= "Border" })
			end

			aXsuNvBE["KeybindList"]:MakeDraggable(function()
				return PYMBJvUCOh.MainFrame and PYMBJvUCOh.MainFrame.Visible == true
			end)

			PYMBJvUCOh.KeybindListInstance = aXsuNvBE["KeybindList"]

			function vZdvDOFQchW:SetVisibility(Bool)
				aXsuNvBE["KeybindList"].Instance.Visible = Bool
			end

			function vZdvDOFQchW:Add(Name, Key)
				local tdmGJxioGNKB = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Content"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = Name .. " [" .. Key .. "]",
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				tdmGJxioGNKB:AddToTheme({TextColor3= "Text" })

				function tdmGJxioGNKB:SetText(Name, Key)
					tdmGJxioGNKB.Instance.Text = Name .. " [" .. Key .. "]"
				end

				function tdmGJxioGNKB:SetStatus(Bool)
					if tdmGJxioGNKB.Instance.Text:find("Menu Keybind") then
						tdmGJxioGNKB.Instance.Visible = false
						return
					end
					tdmGJxioGNKB.Instance.Visible = Bool
				end

				return tdmGJxioGNKB
			end

			return vZdvDOFQchW
		end


		PYMBJvUCOh.Notification = function(PypkHNpYF, Name, uwqhWVZHOfOK)
			local aXsuNvBE = {}
			do
				aXsuNvBE["Notification"] = gaLDMUsM:Create("Frame", {Parent= PypkHNpYF.NotifHolder.Instance,
					Name = "\0",
					Size = keGiDkjvH(0, 20, 0, 20),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = ybqEvbYIw(24, 28, 36),
				})
				aXsuNvBE["Notification"]:AddToTheme({BackgroundColor3= "Inline" })

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["Notification"].Instance,
					Name = "\0",
					PaddingTop = ZRxtzEskBOxd(0, 7),
					PaddingBottom = ZRxtzEskBOxd(0, 7),
					PaddingRight = ZRxtzEskBOxd(0, 7),
					PaddingLeft = ZRxtzEskBOxd(0, 7),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Notification"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = Name,
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Notification"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })
			end

			local TiWJldvA = aXsuNvBE["Notification"].Instance.AbsoluteSize

			for udqfjGdZsfFL, BEBEAVTqVC in aXsuNvBE do
				if BEBEAVTqVC.Instance:IsA("Frame") then
					BEBEAVTqVC.Instance.BackgroundTransparency = 1
				elseif BEBEAVTqVC.Instance:IsA("TextLabel") then
					BEBEAVTqVC.Instance.TextTransparency = 1
				end
			end

			aXsuNvBE["Notification"].Instance.AutomaticSize = Enum.AutomaticSize.None

			PYMBJvUCOh:Thread(function()
				for udqfjGdZsfFL, BEBEAVTqVC in aXsuNvBE do
					if BEBEAVTqVC.Instance:IsA("Frame") then
						BEBEAVTqVC:Tween(nil, {BackgroundTransparency= 0 })
					elseif BEBEAVTqVC.Instance:IsA("TextLabel") then
						BEBEAVTqVC:Tween(nil, {TextTransparency= 0 })
					end
				end

				aXsuNvBE["Notification"]:Tween(nil, {Size= keGiDkjvH(0, TiWJldvA.X, 0, TiWJldvA.Y) })

				task.delay(uwqhWVZHOfOK + 0.1, function()
					for udqfjGdZsfFL, BEBEAVTqVC in aXsuNvBE do
						if BEBEAVTqVC.Instance:IsA("Frame") then
							BEBEAVTqVC:Tween(nil, {BackgroundTransparency= 1 })
						elseif BEBEAVTqVC.Instance:IsA("TextLabel") then
							BEBEAVTqVC:Tween(nil, {TextTransparency= 1 })
						end
					end

					aXsuNvBE["Notification"]:Tween(nil, {Size= keGiDkjvH(0, 0, 0, 0) })

					task.wait(0.5)
					aXsuNvBE["Notification"]:Clean()
				end)
			end)
		end

		PYMBJvUCOh.Window = function(PypkHNpYF, Data)
			Data = Data or {}

			local YDDFvPzlbtr = CWuhaNGbeSy.ViewportSize
			local QyQUluiFXvx = math.floor(YDDFvPzlbtr.X * 0.9)
			local foLLMMgsr = math.floor(YDDFvPzlbtr.Y * 0.75)
			local NFLWtLFsQS = math.floor(math.min(YDDFvPzlbtr.X, YDDFvPzlbtr.Y) * 0.08)
			local xMLcIThtZZz = math.floor(NFLWtLFsQS * 0.33)

			local wTCNhmrX = {Name= uAtNKRGvWg,
				Logo = Data.Logo or Data.logo or ZaQsBHqbchw,

				Pages = {},
				Items = {},
				IsOpen = false,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["MainFrame"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.Holder.Instance,
					Name = "\0",
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Position = keGiDkjvH(0.5, 0, 0.6, 0),
					BorderColor3 = ybqEvbYIw(0, 34, 37),
					Size = not ViEAFeQPtQ and keGiDkjvH(0, 543, 0, 624) or keGiDkjvH(0, QyQUluiFXvx, 0, foLLMMgsr),
					BorderSizePixel = 2,
					BackgroundColor3 = ybqEvbYIw(17, 21, 27),
				})
				aXsuNvBE["MainFrame"]:AddToTheme({BackgroundColor3= "Background 1" })
				PYMBJvUCOh.MainFrame = aXsuNvBE["MainFrame"].Instance

				aXsuNvBE["MainFrame"]:MakeDraggable()

				aXsuNvBE["UIStroke"] = gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["MainFrame"].Instance,
					Name = "\0",
					Color = OkLOYtRHm,
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				aXsuNvBE["UIStroke"]:AddToTheme({Color= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["UIStroke"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({
						wmZytpMBcGpL(0, 0),
						wmZytpMBcGpL(0.696, 0.2749999761581421),
						wmZytpMBcGpL(0.84, 0.574999988079071),
						wmZytpMBcGpL(1, 1),
					}),
				})

				aXsuNvBE["Inline"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["MainFrame"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 1, 0, 1),
					BorderColor3 = ybqEvbYIw(0, 34, 37),
					Size = keGiDkjvH(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(0, 34, 37),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Window Outline" })

				aXsuNvBE["Logo"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					ImageColor3 = ybqEvbYIw(202, 243, 255),
					ScaleType = Enum.ScaleType.Fit,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Image = "rbxassetid://" .. wTCNhmrX.Logo,
					BackgroundTransparency = 1,
					AnchorPoint = iKnspdwtTSDH(0.5, 0),
					Position = keGiDkjvH(0.5, 0, 0, 3),
					Size = keGiDkjvH(0, 48, 0, 48),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Logo"]:AddToTheme({ImageColor3= "Accent" })

				aXsuNvBE["Title"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = uAtNKRGvWg,
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
Position = keGiDkjvH(0, 8, 0, 35),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = ybqEvbYIw(255, 255, 255),
			})
			aXsuNvBE["Title"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["UIDLabel"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					TextTransparency = 0.4,
					Text = EJJFGJzBaV(jiJNiCvG),
					AnchorPoint = iKnspdwtTSDH(1, 0),
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(1, -8, 0, 19),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					ZIndex = 5,
				})
				aXsuNvBE["UIDLabel"]:AddToTheme({TextColor3= "Text" })

aXsuNvBE["DiscordButton"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["Inline"].Instance,
				Name = "\0",
				FontFace = PYMBJvUCOh.Font,
				TextColor3 = ybqEvbYIw(88, 101, 242),
				BorderColor3 = ybqEvbYIw(0, 0, 0),
				Text = "Discord",
				AutoButtonColor = false,
				AnchorPoint = iKnspdwtTSDH(1, 0),
				Size = keGiDkjvH(0, 0, 0, 15),
				BackgroundTransparency = 1,
				Position = keGiDkjvH(1, -8, 0, 36),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					ZIndex = 5,
				})
				aXsuNvBE["DiscordButton"]:Connect("MouseButton1Click", function()
					CnNOmZmbEvte(setclipboard, "https://discord.gg/VJXXXd5UzP")
				end)

				aXsuNvBE["Content"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 7, 0, 55),
					ClipsDescendants = true,
					Size = keGiDkjvH(1, -14, 1, -62),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Content"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Pages"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 0, 0, 30),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["Pages"].Instance,
					Name = "\0",
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					Padding = ZRxtzEskBOxd(0, 1),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				aXsuNvBE["Glow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["MainFrame"].Instance,
					Name = "\0",
					ImageColor3 = OkLOYtRHm,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					Size = keGiDkjvH(1, 25, 1, 25),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					ZIndex = -1,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
				})
				aXsuNvBE["Glow"]:AddToTheme({ImageColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				if ViEAFeQPtQ then
				aXsuNvBE["MobileButton"] = gaLDMUsM:Create("ImageButton", {Parent= PYMBJvUCOh.Holder.Instance,
						Name = "\0",
						Image = "rbxassetid://" .. wTCNhmrX.Logo,
						BackgroundColor3 = Color3.fromRGB(24, 24, 27),
						AnchorPoint = iKnspdwtTSDH(1, 1),
						Position = keGiDkjvH(1, -xMLcIThtZZz, 1, -xMLcIThtZZz),
						Size = keGiDkjvH(0, NFLWtLFsQS, 0, NFLWtLFsQS),
						BorderSizePixel = 0,
						ScaleType = Enum.ScaleType.Fit,
						ZIndex = 100,
					})

					gaLDMUsM:Create("UICorner", {Parent= aXsuNvBE["MobileButton"].Instance,
						CornerRadius = ZRxtzEskBOxd(1, 0),
					})

					gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["MobileButton"].Instance,
						Color = Color3.fromRGB(0, 191, 255),
						Thickness = math.max(2, math.floor(NFLWtLFsQS * 0.05)),
					})

					local bKJRczfPEJ
					aXsuNvBE["MobileButton"].Instance.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
							bKJRczfPEJ = Input.Position
						end
					end)

					aXsuNvBE["MobileButton"].Instance.InputEnded:Connect(function(Input)
						if (Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1) and bKJRczfPEJ then
							local tjNyWkho = (Input.Position - bKJRczfPEJ).Magnitude
							if tjNyWkho < 10 then
								wTCNhmrX:SetOpen(not wTCNhmrX.IsOpen)
							end
							bKJRczfPEJ = nil
						end
					end)

					aXsuNvBE["MobileButton"]:MakeDraggable()
				end

			wTCNhmrX.Items = aXsuNvBE
			end

			-- Snow effect system
			local PFDcHwSeI = {}
			wTCNhmrX.SnowContainer = nil
			local XerxDUyUqIUM = false
			local iZpvXwjsm = nil
			PYMBJvUCOh.SnowEnabled = false

			local YohxuHlYKQht = 80

			local function zjYDgvNcRT(firstTime)
				for _, wfvXiJSd in PFDcHwSeI do
					wfvXiJSd.Frame:Clean()
				end
				PFDcHwSeI = {}

				wTCNhmrX.SnowContainer = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.Holder.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 0, 0),
					Size = keGiDkjvH(1, 0, 1, 0),
					ZIndex = -2,
					BorderSizePixel = 0,
				})

				local sIoARWlKGuTJ = Random.new()
				for i = 1, YohxuHlYKQht do
					local GGmizlMUjX = sIoARWlKGuTJ:NextNumber(2, 5)
					local PEWuPiSCswE = sIoARWlKGuTJ:NextNumber(0, 1)
					local rZIQTfIsKLTC = firstTime and sIoARWlKGuTJ:NextNumber(0, 1) or -0.05

					local wfvXiJSd = gaLDMUsM:Create("Frame", {Parent= wTCNhmrX.SnowContainer.Instance,
						Name = "\0",
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
						BackgroundTransparency = 0,
						Size = keGiDkjvH(0, GGmizlMUjX, 0, GGmizlMUjX),
						Position = keGiDkjvH(PEWuPiSCswE, 0, rZIQTfIsKLTC, 0),
						ZIndex = -2,
						BorderSizePixel = 0,
					})

					gaLDMUsM:Create("UICorner", {Parent= wfvXiJSd.Instance,
						CornerRadius = ZRxtzEskBOxd(1, 0),
					})

					PFDcHwSeI[i] = {Frame= wfvXiJSd,
						Speed = sIoARWlKGuTJ:NextNumber(0.03, 0.08),
						Size = GGmizlMUjX,
						X = PEWuPiSCswE,
						Y = rZIQTfIsKLTC,
						Drift = sIoARWlKGuTJ:NextNumber(-0.02, 0.02),
					}
				end
			end

			local function crKCTUCGPtPG()
				if XerxDUyUqIUM or not PYMBJvUCOh or not PYMBJvUCOh.SnowEnabled then return end
				XerxDUyUqIUM = true
				if #PFDcHwSeI == 0 then
					zjYDgvNcRT(true)
				end
				if wTCNhmrX.SnowContainer then
					wTCNhmrX.SnowContainer.Instance.Visible = true
				end

				iZpvXwjsm = GgtrVFeG.RenderStepped:Connect(function(dt)
					if not XerxDUyUqIUM or not PYMBJvUCOh or not PYMBJvUCOh.SnowEnabled or not wTCNhmrX.SnowContainer then
						return
					end

					for _, wfvXiJSd in PFDcHwSeI do
						wfvXiJSd.Y = wfvXiJSd.Y + wfvXiJSd.Speed * dt
						if wfvXiJSd.Y > 1 then
							wfvXiJSd.Y = -wfvXiJSd.Size / 600
							wfvXiJSd.X = Random.new():NextNumber(0, 1)
						end

						wfvXiJSd.X = wfvXiJSd.X + wfvXiJSd.Drift * dt
						if wfvXiJSd.X < 0 then wfvXiJSd.X = 1 end
						if wfvXiJSd.X > 1 then wfvXiJSd.X = 0 end

						wfvXiJSd.Frame.Instance.Position = keGiDkjvH(wfvXiJSd.X, 0, wfvXiJSd.Y, 0)
					end
				end)
			end

			local function HkxLTMNr()
				XerxDUyUqIUM = false
				if iZpvXwjsm then
					iZpvXwjsm:Disconnect()
					iZpvXwjsm = nil
				end
				if wTCNhmrX.SnowContainer then
					wTCNhmrX.SnowContainer.Instance.Visible = false
				end
			end

			wTCNhmrX.StartSnow = crKCTUCGPtPG
			wTCNhmrX.StopSnow = HkxLTMNr

			-- Background Blur effect
			local pilqjIEgUe = QajQeTLyeF.new("BlurEffect")
			pilqjIEgUe.Name = "MenuBlur"
			pilqjIEgUe.Size = 0
			pilqjIEgUe.Parent = FWncGKZA
			wTCNhmrX.Blur = pilqjIEgUe
			PYMBJvUCOh.BlurEffect = pilqjIEgUe
			PYMBJvUCOh.BlurEnabled = true

			-- Menu Background Snow
			wTCNhmrX.MenuSnowContainer = nil
			local FegWTxOHzazz = {}
			local WyJCsCvHq = false
			local ZvIDqvLLEoAe = nil
			PYMBJvUCOh.MenuSnowEnabled = true

			local NAOrXgdryEwA = 40

			local function ONuXBWgyNYgb(firstTime)
				for _, wfvXiJSd in FegWTxOHzazz do
					wfvXiJSd.Frame:Clean()
				end
				FegWTxOHzazz = {}

				wTCNhmrX.MenuSnowContainer = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Inline"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 0, 0),
					Size = keGiDkjvH(1, 0, 1, 0),
					ZIndex = 1,
					ClipsDescendants = true,
					BorderSizePixel = 0,
				})

				local sIoARWlKGuTJ = Random.new()
				for i = 1, NAOrXgdryEwA do
					local GGmizlMUjX = sIoARWlKGuTJ:NextNumber(1.5, 4)
					local PEWuPiSCswE = sIoARWlKGuTJ:NextNumber(0, 1)
					local rZIQTfIsKLTC = firstTime and sIoARWlKGuTJ:NextNumber(0, 1) or -0.05

					local wfvXiJSd = gaLDMUsM:Create("Frame", {Parent= wTCNhmrX.MenuSnowContainer.Instance,
						Name = "\0",
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
						BackgroundTransparency = 0,
						Size = keGiDkjvH(0, GGmizlMUjX, 0, GGmizlMUjX),
						Position = keGiDkjvH(PEWuPiSCswE, 0, rZIQTfIsKLTC, 0),
						ZIndex = 1,
						BorderSizePixel = 0,
					})

					gaLDMUsM:Create("UICorner", {Parent= wfvXiJSd.Instance,
						CornerRadius = ZRxtzEskBOxd(1, 0),
					})

					FegWTxOHzazz[i] = {Frame= wfvXiJSd,
						Speed = sIoARWlKGuTJ:NextNumber(0.02, 0.06),
						Size = GGmizlMUjX,
						X = PEWuPiSCswE,
						Y = rZIQTfIsKLTC,
						Drift = sIoARWlKGuTJ:NextNumber(-0.015, 0.015),
					}
				end
			end

			local function AQLzyguVN()
				if WyJCsCvHq or not PYMBJvUCOh or not PYMBJvUCOh.MenuSnowEnabled then return end
				WyJCsCvHq = true
				if #FegWTxOHzazz == 0 then
					ONuXBWgyNYgb(true)
				end
				if wTCNhmrX.MenuSnowContainer then
					wTCNhmrX.MenuSnowContainer.Instance.Visible = true
				end

				ZvIDqvLLEoAe = GgtrVFeG.RenderStepped:Connect(function(dt)
					if not WyJCsCvHq or not PYMBJvUCOh or not PYMBJvUCOh.MenuSnowEnabled or not wTCNhmrX.MenuSnowContainer then
						return
					end

					for _, wfvXiJSd in FegWTxOHzazz do
						wfvXiJSd.Y = wfvXiJSd.Y + wfvXiJSd.Speed * dt
						if wfvXiJSd.Y > 1 then
							wfvXiJSd.Y = -wfvXiJSd.Size / 600
							wfvXiJSd.X = Random.new():NextNumber(0, 1)
						end

						wfvXiJSd.X = wfvXiJSd.X + wfvXiJSd.Drift * dt
						if wfvXiJSd.X < 0 then wfvXiJSd.X = 1 end
						if wfvXiJSd.X > 1 then wfvXiJSd.X = 0 end

						wfvXiJSd.Frame.Instance.Position = keGiDkjvH(wfvXiJSd.X, 0, wfvXiJSd.Y, 0)
					end
				end)
			end

			local function OSxONIGx()
				WyJCsCvHq = false
				if ZvIDqvLLEoAe then
					ZvIDqvLLEoAe:Disconnect()
					ZvIDqvLLEoAe = nil
				end
				if wTCNhmrX.MenuSnowContainer then
					wTCNhmrX.MenuSnowContainer.Instance.Visible = false
				end
			end

			wTCNhmrX.StartMenuSnow = AQLzyguVN
			wTCNhmrX.StopMenuSnow = OSxONIGx

			-- Fade overlay for universal fade
			wTCNhmrX.FadeOverlay = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["MainFrame"].Instance,
				Name = "\0",
				BackgroundColor3 = ybqEvbYIw(0, 0, 0),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Size = keGiDkjvH(1, 0, 1, 0),
				ZIndex = 99999,
				Visible = true,
			})

			local lbtiqelzvhe = false

			function wTCNhmrX:SetCenter()
				local hmPiwGnX = aXsuNvBE["MainFrame"].Instance.AbsolutePosition
				task.wait()
				aXsuNvBE["MainFrame"].Instance.AnchorPoint = iKnspdwtTSDH(0, 0)

				aXsuNvBE["MainFrame"].Instance.Position = keGiDkjvH(0, hmPiwGnX.X, 0, hmPiwGnX.Y)
			end

			function wTCNhmrX:SetOpen(Bool, PPJdKSqKY, GSkGUYvGnQ)
				PPJdKSqKY = PPJdKSqKY or 1.2
				GSkGUYvGnQ = GSkGUYvGnQ or 0.4
				local eqDhsaMQcX = Bool and PPJdKSqKY or GSkGUYvGnQ
				for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.OpenFrames do
					BEBEAVTqVC:SetOpen(false)
				end

				if lbtiqelzvhe then
					return
				end

				lbtiqelzvhe = true
				wTCNhmrX.IsOpen = Bool

				if Bool then
					if PYMBJvUCOh.BlurEnabled and wTCNhmrX.Blur then
						LEDBMpPYoqoV:Create(wTCNhmrX.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size= 15 }):Play()
				end
				crKCTUCGPtPG()
				AQLzyguVN()
				else
					HkxLTMNr()
					OSxONIGx()
					if wTCNhmrX.Blur then
						LEDBMpPYoqoV:Create(wTCNhmrX.Blur, TweenInfo.new(eqDhsaMQcX, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size= 0 }):Play()
					end
				end

				local ZuGSAShXhrw = wTCNhmrX.FadeOverlay
				if Bool then
					aXsuNvBE["MainFrame"].Instance.Visible = true
					ZuGSAShXhrw.Instance.BackgroundTransparency = 0
					ZuGSAShXhrw.Instance.Visible = true
					local XdrcZLnaBgea = ZuGSAShXhrw:Tween(TweenInfo.new(eqDhsaMQcX, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency= 1 })
					if XdrcZLnaBgea and XdrcZLnaBgea.Tween then
						XdrcZLnaBgea.Tween.Completed:Connect(function()
							ZuGSAShXhrw.Instance.Visible = false
							lbtiqelzvhe = false
						end)
					else
						lbtiqelzvhe = false
					end
				else
					ZuGSAShXhrw.Instance.BackgroundTransparency = 1
					ZuGSAShXhrw.Instance.Visible = true
					local XdrcZLnaBgea = ZuGSAShXhrw:Tween(TweenInfo.new(eqDhsaMQcX, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency= 0 })
					if XdrcZLnaBgea and XdrcZLnaBgea.Tween then
						XdrcZLnaBgea.Tween.Completed:Connect(function()
							aXsuNvBE["MainFrame"].Instance.Visible = false
							ZuGSAShXhrw.Instance.Visible = false
							lbtiqelzvhe = false
						end)
					else
						aXsuNvBE["MainFrame"].Instance.Visible = false
						ZuGSAShXhrw.Instance.Visible = false
						lbtiqelzvhe = false
					end
				end
			end

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputBegan, function(Input)
				if
					EJJFGJzBaV(Input.KeyCode) == PYMBJvUCOh.MenuKeybind
					or EJJFGJzBaV(Input.UserInputType) == PYMBJvUCOh.MenuKeybind
				then
					wTCNhmrX:SetOpen(not wTCNhmrX.IsOpen)
				end
			end)

			wTCNhmrX:SetCenter()
			task.wait()
			wTCNhmrX:SetOpen(true)
			return setmetatable(wTCNhmrX, PYMBJvUCOh)
		end

		PYMBJvUCOh.Page = function(PypkHNpYF, Data)
			Data = Data or {}

			local WsNlHHZh = {Window= PypkHNpYF,

				Name = Data.Name or Data.name or "Page",
				Columns = Data.Columns or Data.columns or 2,

				Items = {},
				ColumnsData = {},
				Active = false,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Inactive"] = gaLDMUsM:Create("TextButton", {Parent= WsNlHHZh.Window.Items["Pages"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = keGiDkjvH(0, 0, 1, 0),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Inactive"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Liner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Inactive"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(0, 0, 0, 1),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["Liner"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["Glow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Liner"].Instance,
					Name = "\0",
					Visible = false,
					ImageTransparency = 0.5,
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
					ScaleType = Enum.ScaleType.Slice,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					ImageColor3 = OkLOYtRHm,
					Size = keGiDkjvH(1, 8, 1, 8),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Glow"]:AddToTheme({ImageColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Inactive"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = WsNlHHZh.Name,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = keGiDkjvH(0, 0, 0, 15),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["TextGlow"] = gaLDMUsM:Create("ImageLabel", {Parent= aXsuNvBE["Text"].Instance,
					Name = "\0",
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 1,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					Size = keGiDkjvH(1, 8, 1, 8),
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 3),
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = UEjZwwXqE(iKnspdwtTSDH(21, 21), iKnspdwtTSDH(79, 79)),
				})
				aXsuNvBE["TextGlow"]:AddToTheme({ImageColor3= "Text" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["TextGlow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = BHBoHFKZBWJ({ wmZytpMBcGpL(0, 0), wmZytpMBcGpL(1, 1) }),
				})

				aXsuNvBE["Hide"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Inactive"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AnchorPoint = iKnspdwtTSDH(0, 1),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 1, 1),
					Size = keGiDkjvH(1, 0, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(17, 21, 27),
				})
				aXsuNvBE["Hide"]:AddToTheme({BackgroundColor3= "Background 1" })

				aXsuNvBE["Page"] = gaLDMUsM:Create("Frame", {Parent= PYMBJvUCOh.UnusedHolder.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 0, 80),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Visible = false,
					Size = keGiDkjvH(1, 0, 1, -35),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["Page"].Instance,
					Name = "\0",
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalFlex = Enum.UIFlexAlignment.Fill,
				})

				for udqfjGdZsfFL = 1, WsNlHHZh.Columns do
					local wWVOKuzf = gaLDMUsM:Create("ScrollingFrame", {Parent= aXsuNvBE["Page"].Instance,
						Name = "\0",
						ScrollBarImageColor3 = ybqEvbYIw(0, 0, 0),
						Active = true,
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						BorderColor3 = ybqEvbYIw(0, 0, 0),
						ScrollBarThickness = 0,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 100, 0, 100),
						CanvasSize = keGiDkjvH(0, 0, 0, 0),
						BorderSizePixel = 0,
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					})

					gaLDMUsM:Create("UIPadding", {Parent= wWVOKuzf.Instance,
						Name = "\0",
						PaddingTop = ZRxtzEskBOxd(0, 5),
						PaddingBottom = ZRxtzEskBOxd(0, 8),
						PaddingRight = ZRxtzEskBOxd(0, 8),
						PaddingLeft = ZRxtzEskBOxd(0, 8),
					})

					gaLDMUsM:Create("UIListLayout", {Parent= wWVOKuzf.Instance,
						Name = "\0",
						Padding = ZRxtzEskBOxd(0, 12),
						SortOrder = Enum.SortOrder.LayoutOrder,
					})

					WsNlHHZh.ColumnsData[udqfjGdZsfFL] = wWVOKuzf
				end

				WsNlHHZh.Items = aXsuNvBE
			end

			local lbtiqelzvhe = false

			function WsNlHHZh:Turn(Bool)
				if lbtiqelzvhe then
					return
				end

				WsNlHHZh.Active = Bool

				lbtiqelzvhe = true
				aXsuNvBE["Page"].Instance.Visible = Bool
				aXsuNvBE["Page"].Instance.Parent = Bool and WsNlHHZh.Window.Items["Content"].Instance
					or PYMBJvUCOh.UnusedHolder.Instance

				if WsNlHHZh.Active then
					aXsuNvBE["Liner"]:Tween(
						TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{BackgroundTransparency= 0, Size = keGiDkjvH(1, 0, 0, 1) }
					)
					aXsuNvBE["TextGlow"]:Tween(nil, {ImageTransparency= 0.7 })
					aXsuNvBE["Text"]:Tween(nil, {TextTransparency= 0 })
					aXsuNvBE["Hide"]:Tween(nil, {BackgroundTransparency= 0 })

					aXsuNvBE["Page"]:Tween(
						TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{Position= keGiDkjvH(0, 0, 0, 35) }
					)
				else
					aXsuNvBE["Liner"]:Tween(
						TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{BackgroundTransparency= 0, Size = keGiDkjvH(0, 0, 0, 1) }
					)
					aXsuNvBE["TextGlow"]:Tween(nil, {ImageTransparency= 1 })
					aXsuNvBE["Text"]:Tween(nil, {TextTransparency= 0.4 })
					aXsuNvBE["Hide"]:Tween(nil, {BackgroundTransparency= 1 })

					aXsuNvBE["Page"]:Tween(
						TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{Position= keGiDkjvH(0, 0, 0, 80) }
					)
				end

				lbtiqelzvhe = false
			end

			aXsuNvBE["Inactive"]:Connect("MouseButton1Down", function()
				for udqfjGdZsfFL, BEBEAVTqVC in WsNlHHZh.Window.Pages do
					if BEBEAVTqVC == WsNlHHZh and WsNlHHZh.Active then
						return
					end

					BEBEAVTqVC:Turn(BEBEAVTqVC == WsNlHHZh)
				end
			end)

			if #WsNlHHZh.Window.Pages == 0 then
				WsNlHHZh:Turn(true)
			end

			tJopVXlm(WsNlHHZh.Window.Pages, WsNlHHZh)
			return setmetatable(WsNlHHZh, PYMBJvUCOh.Pages)
		end

		PYMBJvUCOh.Pages.Section = function(PypkHNpYF, Data)
			Data = Data or {}

			local tXAbJaAFL = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF,

				Name = Data.Name or Data.name or "Section",
				Side = Data.Side or Data.side or 1,

				Items = {},
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Section"] = gaLDMUsM:Create("Frame", {Parent= tXAbJaAFL.Page.ColumnsData[tXAbJaAFL.Side].Instance,
					Name = "\0",
					Size = keGiDkjvH(1, 0, 0, 40),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = ybqEvbYIw(19, 25, 31),
				})
				aXsuNvBE["Section"]:AddToTheme({BackgroundColor3= "Inline" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Section"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["Section"].Instance,
					Name = "\0",
					PaddingBottom = ZRxtzEskBOxd(0, 8),
				})

				aXsuNvBE["Topbar"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Section"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 0, 0, 25),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(19, 25, 31),
				})
				aXsuNvBE["Topbar"]:AddToTheme({BackgroundColor3= "Inline" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Topbar"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(165, 165, 165)),
					}),
				})

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["Topbar"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Liner"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Topbar"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0, 1, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["Liner"]:AddToTheme({BackgroundColor3= "Accent" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Liner"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(171, 171, 171)),
					}),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Topbar"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = tXAbJaAFL.Name,
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 8, 0.5, -1),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["Content"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Section"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 8, 0, 35),
					Size = keGiDkjvH(1, -16, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["Content"].Instance,
					Name = "\0",
					Padding = ZRxtzEskBOxd(0, 6),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				tXAbJaAFL.Items = aXsuNvBE
			end

			return setmetatable(tXAbJaAFL, PYMBJvUCOh.Sections)
		end

		PYMBJvUCOh.Sections.Toggle = function(PypkHNpYF, Data)
			Data = Data or {}

			local AJvtiUTBGl = Data.Risk or Data.risk or nil
			local jmnTSWWiIKGf = Data.Tooltip or Data.tooltip or nil

			local fYrqKvrD = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Data.Name or Data.name or "Toggle",
				Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
				Default = Data.Default or Data.default or false,
				Callback = Data.Callback or Data.callback or function() end,

				Value = false,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Toggle"] = gaLDMUsM:Create("TextButton", {Parent= fYrqKvrD.Section.Items["Content"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 0, 15),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				aXsuNvBE["IndicatorOutline"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Position = keGiDkjvH(0, 0, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0, 12, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["IndicatorOutline"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["IndicatorOutline"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["IndicatorInline"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["IndicatorOutline"].Instance,
					Name = "\0",
					AnchorPoint = iKnspdwtTSDH(0.5, 0.5),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0.5, 0, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0, -2, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["IndicatorInline"]:AddToTheme({BackgroundColor3= "Accent" })

				local IxNzOtGTP = AJvtiUTBGl == "detected" and ybqEvbYIw(255, 0, 0) or AJvtiUTBGl == "risky" and ybqEvbYIw(255, 255, 0) or nil

				aXsuNvBE["TextHolder"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Position = keGiDkjvH(0, 20, 0.5, 0),
					Size = keGiDkjvH(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = ZRxtzEskBOxd(0, 4),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TextHolder"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = IxNzOtGTP or ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = fYrqKvrD.Name,
					Size = keGiDkjvH(0, 0, 0, 15),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				if not IxNzOtGTP then
					aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })
				end

				if jmnTSWWiIKGf then
					aXsuNvBE["TooltipIconWrap"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = keGiDkjvH(0, 14, 0, 14),
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					})

					gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						PaddingTop = ZRxtzEskBOxd(0, 2),
					})

					aXsuNvBE["TooltipIcon"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = "?",
						TextColor3 = ybqEvbYIw(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					aXsuNvBE["TooltipFrame"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Toggle"].Instance,
						Name = "\0",
						BackgroundColor3 = ybqEvbYIw(32, 38, 48),
						BorderColor3 = ybqEvbYIw(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					aXsuNvBE["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Color = ybqEvbYIw(46, 52, 61),
					}):AddToTheme({Color= "Border" })

					gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = jmnTSWWiIKGf,
						TextColor3 = ybqEvbYIw(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

					if not ViEAFeQPtQ then
						aXsuNvBE["TooltipIcon"]:OnHover(function()
							local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
							local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
							local hEhVoxbtnT = aXsuNvBE["Toggle"].Instance.AbsolutePosition
							local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
							local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - hEhVoxbtnT.X - mChhtsmmp.X / 2
							local lXLxuxGssrMs = gJvPqsNV.Y - hEhVoxbtnT.Y + ggvMkywx.Y + 8
							aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
							aXsuNvBE["TooltipFrame"].Instance.Visible = true
						end)

						aXsuNvBE["TooltipIcon"]:OnHoverLeave(function()
							aXsuNvBE["TooltipFrame"].Instance.Visible = false
						end)
					else
						aXsuNvBE["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
								local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
								local hEhVoxbtnT = aXsuNvBE["Toggle"].Instance.AbsolutePosition
								local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
								local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - hEhVoxbtnT.X - mChhtsmmp.X / 2
								local lXLxuxGssrMs = gJvPqsNV.Y - hEhVoxbtnT.Y + ggvMkywx.Y + 8
								aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
								aXsuNvBE["TooltipFrame"].Instance.Visible = not aXsuNvBE["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

				aXsuNvBE["SubElements"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Toggle"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AnchorPoint = iKnspdwtTSDH(1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(1, 0, 0, 0),
					Size = keGiDkjvH(0, 0, 1, 0),
					ZIndex = 2,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["SubElements"].Instance,
					Name = "\0",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Padding = ZRxtzEskBOxd(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				aXsuNvBE["Toggle"]:OnHover(function()
					-- if Toggle.Value then return end
					aXsuNvBE["IndicatorOutline"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["Toggle"]:OnHoverLeave(function()
					-- if Toggle.Value then return end
					aXsuNvBE["IndicatorOutline"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)
			end

			function fYrqKvrD:Get()
				return fYrqKvrD.Value
			end

			function fYrqKvrD:Set(BEBEAVTqVC)
				fYrqKvrD.Value = BEBEAVTqVC
				PYMBJvUCOh.Flags[fYrqKvrD.Flag] = BEBEAVTqVC

				if fYrqKvrD.Value then
					aXsuNvBE["IndicatorInline"]:Tween(
						TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{BackgroundTransparency= 0, Size = keGiDkjvH(1, -2, 1, -2) }
					)
				else
					aXsuNvBE["IndicatorInline"]:Tween(
						TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{BackgroundTransparency= 1, Size = keGiDkjvH(0, -2, 0, -2) }
					)
				end

				if fYrqKvrD.Callback then
					PYMBJvUCOh:SafeCall(fYrqKvrD.Callback, fYrqKvrD.Value)
				end
			end

			function fYrqKvrD:Colorpicker(Data)
				Data = Data or {}

				local lirFIIvqOova = {Window= fYrqKvrD.Window,
					Page = fYrqKvrD.Page,
					Section = fYrqKvrD.Section,

					Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
					Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
					Alpha = Data.Alpha or Data.alpha or 0,
					Callback = Data.Callback or Data.callback or function() end,
				}

				local xANSEPIilSZb, hHMuuvknE = PYMBJvUCOh:CreateColorpicker({Parent= aXsuNvBE["SubElements"],
					Page = lirFIIvqOova.Page,
					Flag = lirFIIvqOova.Flag,
					Section = lirFIIvqOova.Section,
					Default = lirFIIvqOova.Default,
					Alpha = lirFIIvqOova.Alpha,
					Callback = lirFIIvqOova.Callback,
				})

				return xANSEPIilSZb
			end

				function fYrqKvrD:Keybind(Data)
					Data = Data or {}

					local kAHDsahreDvJ = {Window= fYrqKvrD.Window,
						Page = fYrqKvrD.Page,
						Section = fYrqKvrD.Section,

						Name = Data.Name or Data.name or "Keybind",
						Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
						Default = Data.Default or Data.default,
						Callback = Data.Callback or Data.callback or function() end,
						Mode = Data.Mode or Data.mode or "Toggle",
					}

				local oqOViKCW, aXsuNvBE = PYMBJvUCOh:CreateKeybind({Name= fYrqKvrD.Name,
					Parent = aXsuNvBE["SubElements"],
					Flag = kAHDsahreDvJ.Flag,
					Section = kAHDsahreDvJ.Section,
					Default = kAHDsahreDvJ.Default,
					Mode = kAHDsahreDvJ.Mode,
					Callback = kAHDsahreDvJ.Callback,
				})

				return oqOViKCW
			end

			function fYrqKvrD:SetVisibility(Bool)
				aXsuNvBE["Toggle"].Instance.Visible = Bool
			end

			aXsuNvBE["Toggle"]:Connect("MouseButton1Down", function()
				fYrqKvrD:Set(not fYrqKvrD.Value)
			end)

			fYrqKvrD:Set(fYrqKvrD.Default)

			PYMBJvUCOh.SetFlags[fYrqKvrD.Flag] = function(BEBEAVTqVC)
				fYrqKvrD:Set(BEBEAVTqVC)
			end

			return fYrqKvrD
		end

		PYMBJvUCOh.Sections.Button = function(PypkHNpYF, Data)
			Data = Data or {}

			local AJvtiUTBGl = Data.Risk or Data.risk or nil
			local IxNzOtGTP = AJvtiUTBGl == "detected" and ybqEvbYIw(255, 0, 0) or AJvtiUTBGl == "risky" and ybqEvbYIw(255, 255, 0) or nil

			local iaCrLYjW = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Data.Name or Data.name or "Button",
				Callback = Data.Callback or Data.callback or function() end,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Button"] = gaLDMUsM:Create("TextButton", {Parent= iaCrLYjW.Section.Items["Content"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = IxNzOtGTP or ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = iaCrLYjW.Name,
					AutoButtonColor = false,
					Size = keGiDkjvH(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["Button"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIGradient", {Parent= aXsuNvBE["Button"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(199, 199, 199)),
					}),
				})

				aXsuNvBE["Button"]:OnHover(function()
					aXsuNvBE["Button"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["Button"]:OnHoverLeave(function()
					aXsuNvBE["Button"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)

			end

			function iaCrLYjW:SetVisibility(Bool)
				aXsuNvBE["Button"].Instance.Visible = Bool
			end

			function iaCrLYjW:Press()
				if not PYMBJvUCOh or not PYMBJvUCOh.Theme then return end
				aXsuNvBE["Button"]:ChangeItemTheme({BackgroundColor3= "Accent" })
				aXsuNvBE["Button"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Accent })
				PYMBJvUCOh:SafeCall(iaCrLYjW.Callback)
				task.wait(0.1)
				if not PYMBJvUCOh or not PYMBJvUCOh.Theme then return end
				aXsuNvBE["Button"]:ChangeItemTheme({BackgroundColor3= "Element" })
				aXsuNvBE["Button"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
			end

			aXsuNvBE["Button"]:Connect("MouseButton1Down", function()
				iaCrLYjW:Press()
			end)

			return iaCrLYjW
		end

		PYMBJvUCOh.Sections.Slider = function(PypkHNpYF, Data)
			Data = Data or {}

			local AJvtiUTBGl = Data.Risk or Data.risk or nil
			local IxNzOtGTP = AJvtiUTBGl == "detected" and ybqEvbYIw(255, 0, 0) or AJvtiUTBGl == "risky" and ybqEvbYIw(255, 255, 0) or nil
			local jmnTSWWiIKGf = Data.Tooltip or Data.tooltip or nil

			local FeaEnXXcBGx = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Data.Name or Data.name or "Slider",
				Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
				Min = Data.Min or Data.min or 0,
				Decimals = Data.Decimals or Data.decimals or 1,
				Suffix = Data.Suffix or Data.suffix or "",
				Max = Data.Max or Data.max or 100,
				Default = Data.Default or Data.Default or 0,
				Callback = Data.Callback or Data.callback or function() end,

				Value = 0,
				Sliding = false,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Slider"] = gaLDMUsM:Create("Frame", {Parent= FeaEnXXcBGx.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 0, 0, 35),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

			aXsuNvBE["TextHolder"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Slider"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = keGiDkjvH(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = ZRxtzEskBOxd(0, 4),
				})

			aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TextHolder"].Instance,
				Name = "\0",
				FontFace = PYMBJvUCOh.Font,
				TextColor3 = IxNzOtGTP or ybqEvbYIw(255, 255, 255),
				BorderColor3 = ybqEvbYIw(0, 0, 0),
				Text = FeaEnXXcBGx.Name,
				BackgroundTransparency = 1,
				Size = keGiDkjvH(0, 0, 0, 15),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = ybqEvbYIw(255, 255, 255),
			})
			if not IxNzOtGTP then
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })
			end

			if jmnTSWWiIKGf then
					aXsuNvBE["TooltipIconWrap"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = keGiDkjvH(0, 14, 0, 14),
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					})

					gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						PaddingTop = ZRxtzEskBOxd(0, 2),
					})

					aXsuNvBE["TooltipIcon"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = "?",
						TextColor3 = ybqEvbYIw(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					aXsuNvBE["TooltipFrame"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Slider"].Instance,
						Name = "\0",
						BackgroundColor3 = ybqEvbYIw(32, 38, 48),
						BorderColor3 = ybqEvbYIw(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					aXsuNvBE["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Color = ybqEvbYIw(46, 52, 61),
					}):AddToTheme({Color= "Border" })

					gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = jmnTSWWiIKGf,
						TextColor3 = ybqEvbYIw(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

				if not ViEAFeQPtQ then
						aXsuNvBE["TooltipIcon"]:OnHover(function()
							local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
							local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
							local UEXjRkaLuq = aXsuNvBE["Slider"].Instance.AbsolutePosition
							local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
							local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - UEXjRkaLuq.X - mChhtsmmp.X / 2
							local lXLxuxGssrMs = gJvPqsNV.Y - UEXjRkaLuq.Y + ggvMkywx.Y + 8
							aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
							aXsuNvBE["TooltipFrame"].Instance.Visible = true
						end)

						aXsuNvBE["TooltipIcon"]:OnHoverLeave(function()
							aXsuNvBE["TooltipFrame"].Instance.Visible = false
						end)
					else
						aXsuNvBE["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
								local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
								local UEXjRkaLuq = aXsuNvBE["Slider"].Instance.AbsolutePosition
								local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
								local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - UEXjRkaLuq.X - mChhtsmmp.X / 2
								local lXLxuxGssrMs = gJvPqsNV.Y - UEXjRkaLuq.Y + ggvMkywx.Y + 8
								aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
								aXsuNvBE["TooltipFrame"].Instance.Visible = not aXsuNvBE["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

			aXsuNvBE["RealSlider"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["Slider"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = iKnspdwtTSDH(0, 1),
					Position = keGiDkjvH(0, 0, 1, 0),
					Size = keGiDkjvH(1, 0, 0, 12),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["RealSlider"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["RealSlider"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Accent"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["RealSlider"].Instance,
					Name = "\0",
					Position = keGiDkjvH(0, 1, 0, 1),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0.5, 0, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				aXsuNvBE["Accent"]:AddToTheme({BackgroundColor3= "Accent" })

				aXsuNvBE["Value"] = gaLDMUsM:Create("TextBox", {Parent= aXsuNvBE["Slider"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					Active = false,
					TextTransparency = 0.5,
					AnchorPoint = iKnspdwtTSDH(1, 0),
					TextSize = 14,
					Size = keGiDkjvH(0, 0, 0, 15),
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "50s",
					Selectable = false,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(1, 0, 0, 0),
					BorderSizePixel = 0,
					ClearTextOnFocus = false,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Value"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["RealSlider"]:OnHover(function()
					aXsuNvBE["RealSlider"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["RealSlider"]:OnHoverLeave(function()
					aXsuNvBE["RealSlider"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)
			end

			function FeaEnXXcBGx:Get()
				return FeaEnXXcBGx.Value
			end

			function FeaEnXXcBGx:Set(BEBEAVTqVC)
				FeaEnXXcBGx.Value = CjSozEPtYIva(PYMBJvUCOh:Round(BEBEAVTqVC, FeaEnXXcBGx.Decimals), FeaEnXXcBGx.Min, FeaEnXXcBGx.Max)
				PYMBJvUCOh.Flags[FeaEnXXcBGx.Flag] = FeaEnXXcBGx.Value

				aXsuNvBE["Accent"]:Tween(
					TweenInfo.new(PYMBJvUCOh.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{Size= keGiDkjvH((FeaEnXXcBGx.Value - FeaEnXXcBGx.Min) / (FeaEnXXcBGx.Max - FeaEnXXcBGx.Min), -2, 1, -2) }
				)
				aXsuNvBE["Value"].Instance.Text = FBSOheevaVg("%s%s", FeaEnXXcBGx.Value, FeaEnXXcBGx.Suffix)

				if FeaEnXXcBGx.Value <= FeaEnXXcBGx.Min then
					aXsuNvBE["Accent"].Instance.Visible = false
				else
					aXsuNvBE["Accent"].Instance.Visible = true
				end

				if FeaEnXXcBGx.Callback then
					PYMBJvUCOh:SafeCall(FeaEnXXcBGx.Callback, FeaEnXXcBGx.Value)
				end
			end

			local VrXGyhUqFGxq

			aXsuNvBE["RealSlider"]:Connect("InputBegan", function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					FeaEnXXcBGx.Sliding = true

					local JWRuqPEHnH = (Input.Position.X - aXsuNvBE["RealSlider"].Instance.AbsolutePosition.X)
						/ aXsuNvBE["RealSlider"].Instance.AbsoluteSize.X
					local BEBEAVTqVC = ((FeaEnXXcBGx.Max - FeaEnXXcBGx.Min) * JWRuqPEHnH) + FeaEnXXcBGx.Min

					FeaEnXXcBGx:Set(BEBEAVTqVC)

					if VrXGyhUqFGxq then return end 

					VrXGyhUqFGxq = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then 
							FeaEnXXcBGx.Sliding = false

							if VrXGyhUqFGxq then
								VrXGyhUqFGxq:Disconnect()
								VrXGyhUqFGxq = nil
							end
						end
					end)
				end
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
					if FeaEnXXcBGx.Sliding then
						local JWRuqPEHnH = (Input.Position.X - aXsuNvBE["RealSlider"].Instance.AbsolutePosition.X)
							/ aXsuNvBE["RealSlider"].Instance.AbsoluteSize.X
						local BEBEAVTqVC = ((FeaEnXXcBGx.Max - FeaEnXXcBGx.Min) * JWRuqPEHnH) + FeaEnXXcBGx.Min

						FeaEnXXcBGx:Set(BEBEAVTqVC)
					end
				end
			end)

			if FeaEnXXcBGx.Default then
				FeaEnXXcBGx:Set(FeaEnXXcBGx.Default)
			end

			PYMBJvUCOh.SetFlags[FeaEnXXcBGx.Flag] = function(BEBEAVTqVC)
				FeaEnXXcBGx:Set(BEBEAVTqVC)
			end

			return FeaEnXXcBGx
		end

		PYMBJvUCOh.Sections.Dropdown = function(PypkHNpYF, Data)
			Data = Data or {}

			local AJvtiUTBGl = Data.Risk or Data.risk or nil
			local jmnTSWWiIKGf = Data.Tooltip or Data.tooltip or nil

			local zQxgedOFI = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Data.Name or Data.name or "Dropdown",
				Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
				Items = Data.Items or Data.items or Data.Options or Data.options or { "One", "Two", "Three" },
				Default = Data.Default or Data.default or nil,
				MaxSize = Data.MaxSize or Data.maxsize or 75,
				Callback = Data.Callback or Data.callback or function() end,
				Multi = Data.Multi or Data.multi or false,

				Options = {},
				Value = {},
				IsOpen = false,
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Dropdown"] = gaLDMUsM:Create("Frame", {Parent= zQxgedOFI.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 0, 45),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

			local IxNzOtGTP = AJvtiUTBGl == "detected" and ybqEvbYIw(255, 0, 0) or AJvtiUTBGl == "risky" and ybqEvbYIw(255, 255, 0) or nil

			aXsuNvBE["TextHolder"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Dropdown"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = keGiDkjvH(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = ZRxtzEskBOxd(0, 4),
				})

			aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TextHolder"].Instance,
				Name = "\0",
				FontFace = PYMBJvUCOh.Font,
				TextColor3 = IxNzOtGTP or ybqEvbYIw(255, 255, 255),
				BorderColor3 = ybqEvbYIw(0, 0, 0),
				Text = zQxgedOFI.Name,
				BackgroundTransparency = 1,
				Size = keGiDkjvH(0, 0, 0, 15),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = ybqEvbYIw(255, 255, 255),
			})
			if not IxNzOtGTP then
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })
			end

			if jmnTSWWiIKGf then
					aXsuNvBE["TooltipIconWrap"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = keGiDkjvH(0, 14, 0, 14),
						BackgroundColor3 = ybqEvbYIw(255, 255, 255),
					})

					gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						PaddingTop = ZRxtzEskBOxd(0, 2),
					})

					aXsuNvBE["TooltipIcon"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = "?",
						TextColor3 = ybqEvbYIw(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					aXsuNvBE["TooltipFrame"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Dropdown"].Instance,
						Name = "\0",
						BackgroundColor3 = ybqEvbYIw(32, 38, 48),
						BorderColor3 = ybqEvbYIw(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					aXsuNvBE["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Color = ybqEvbYIw(46, 52, 61),
					}):AddToTheme({Color= "Border" })

					gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = PYMBJvUCOh.Font,
						Text = jmnTSWWiIKGf,
						TextColor3 = ybqEvbYIw(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = keGiDkjvH(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

				if not ViEAFeQPtQ then
						aXsuNvBE["TooltipIcon"]:OnHover(function()
							local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
							local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
							local NvqTWUmTBEm = aXsuNvBE["Dropdown"].Instance.AbsolutePosition
							local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
							local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - NvqTWUmTBEm.X - mChhtsmmp.X / 2
							local lXLxuxGssrMs = gJvPqsNV.Y - NvqTWUmTBEm.Y + ggvMkywx.Y + 8
							aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
							aXsuNvBE["TooltipFrame"].Instance.Visible = true
						end)

						aXsuNvBE["TooltipIcon"]:OnHoverLeave(function()
							aXsuNvBE["TooltipFrame"].Instance.Visible = false
						end)
					else
						aXsuNvBE["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local gJvPqsNV = aXsuNvBE["TooltipIcon"].Instance.AbsolutePosition
								local ggvMkywx = aXsuNvBE["TooltipIcon"].Instance.AbsoluteSize
								local NvqTWUmTBEm = aXsuNvBE["Dropdown"].Instance.AbsolutePosition
								local mChhtsmmp = aXsuNvBE["TooltipFrame"].Instance.AbsoluteSize
								local dGeGxxxvGQ = (gJvPqsNV.X + ggvMkywx.X / 2) - NvqTWUmTBEm.X - mChhtsmmp.X / 2
								local lXLxuxGssrMs = gJvPqsNV.Y - NvqTWUmTBEm.Y + ggvMkywx.Y + 8
								aXsuNvBE["TooltipFrame"].Instance.Position = keGiDkjvH(0, dGeGxxxvGQ, 0, lXLxuxGssrMs)
								aXsuNvBE["TooltipFrame"].Instance.Visible = not aXsuNvBE["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

			aXsuNvBE["RealDropdown"] = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["Dropdown"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = iKnspdwtTSDH(0, 1),
					Position = keGiDkjvH(0, 0, 1, 0),
					Size = keGiDkjvH(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["RealDropdown"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["RealDropdown"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Value"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["RealDropdown"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "-",
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					Size = keGiDkjvH(1, -16, 0, 15),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = keGiDkjvH(0, 4, 0.5, 0),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Value"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["OptionHolder"] = gaLDMUsM:Create("TextButton", {Parent= PYMBJvUCOh.Holder.Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					Visible = false,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					Position = keGiDkjvH(0, 0, 1, 0),
					Size = keGiDkjvH(1, 0, 0, 130),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["OptionHolder"]:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIStroke", {Parent= aXsuNvBE["OptionHolder"].Instance,
					Name = "\0",
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({Color= "Border" })

				aXsuNvBE["Search"] = gaLDMUsM:Create("TextBox", {Parent= aXsuNvBE["OptionHolder"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.5,
					Text = "",
					Size = keGiDkjvH(1, -8, 0, 15),
					Position = keGiDkjvH(0, 4, 0, 4),
					BorderSizePixel = 0,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					BackgroundTransparency = 1,
					PlaceholderColor3 = ybqEvbYIw(255, 255, 255),
					TextXAlignment = Enum.TextXAlignment.Left,
					PlaceholderText = "Search..",
					TextSize = 12,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Search"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["Holder"] = gaLDMUsM:Create("ScrollingFrame", {Parent= aXsuNvBE["OptionHolder"].Instance,
					Name = "\0",
					Active = true,
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					BorderSizePixel = 0,
					CanvasSize = keGiDkjvH(0, 0, 0, 0),
					ScrollBarImageColor3 = ybqEvbYIw(46, 52, 61),
					MidImage = "rbxassetid://93024691806056",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ScrollBarThickness = 4,
					Size = keGiDkjvH(1, -4, 1, -26),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 0, 0, 22),
					BottomImage = "rbxassetid://93024691806056",
					TopImage = "rbxassetid://93024691806056",
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Holder"]:AddToTheme({ScrollBarImageColor3= "Border" })

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["Holder"].Instance,
					Name = "\0",
					PaddingTop = ZRxtzEskBOxd(0, 6),
					PaddingBottom = ZRxtzEskBOxd(0, 6),
					PaddingRight = ZRxtzEskBOxd(0, 10),
					PaddingLeft = ZRxtzEskBOxd(0, 6),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["Holder"].Instance,
					Name = "\0",
					Padding = ZRxtzEskBOxd(0, 6),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				aXsuNvBE["RealDropdown"]:OnHover(function()
					aXsuNvBE["RealDropdown"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["RealDropdown"]:OnHoverLeave(function()
					aXsuNvBE["RealDropdown"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)
			end

			function zQxgedOFI:Get()
				return zQxgedOFI.Value
			end

			function zQxgedOFI:Set(Option)
				if Data.Multi then
					if type(Option) ~= "table" then
						return
					end

					zQxgedOFI.Value = Option
					PYMBJvUCOh.Flags[zQxgedOFI.Flag] = Option

					for udqfjGdZsfFL, BEBEAVTqVC in Option do
						local CrdadsFgLFLW = zQxgedOFI.Options[BEBEAVTqVC]

						if not CrdadsFgLFLW then
							continue
						end

						CrdadsFgLFLW.Selected = true
						CrdadsFgLFLW:Toggle("Active")
					end

					aXsuNvBE["Value"].Instance.Text = ZnmZpBTrprY(Option, ", ")
				else
					if not zQxgedOFI.Options[Option] then
						return
					end

					local CrdadsFgLFLW = zQxgedOFI.Options[Option]

					zQxgedOFI.Value = Option
					PYMBJvUCOh.Flags[zQxgedOFI.Flag] = Option

					for udqfjGdZsfFL, BEBEAVTqVC in zQxgedOFI.Options do
						if BEBEAVTqVC ~= CrdadsFgLFLW then
							BEBEAVTqVC.Selected = false
							BEBEAVTqVC:Toggle("Inactive")
						else
							BEBEAVTqVC.Selected = true
							BEBEAVTqVC:Toggle("Active")
						end
					end

					aXsuNvBE["Value"].Instance.Text = Option
				end

				if zQxgedOFI.Callback then
					PYMBJvUCOh:SafeCall(zQxgedOFI.Callback, zQxgedOFI.Value)
				end
			end

			local gfgyqZrcy = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local TGAEZBJhPxL = function(Object, Column)
				local DDOxzolyng = Column

				local uyOGurmqnLK = DDOxzolyng.AbsolutePosition
				local kNGyXOplFsX = uyOGurmqnLK + DDOxzolyng.AbsoluteSize

				local LXYsFhDBCwC = Object.AbsolutePosition
				local ccDONWjdNqCy = LXYsFhDBCwC + Object.AbsoluteSize

				return gfgyqZrcy(LXYsFhDBCwC, uyOGurmqnLK) or gfgyqZrcy(kNGyXOplFsX, ccDONWjdNqCy)
			end

			aXsuNvBE["RealDropdown"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and zQxgedOFI.IsOpen then
					zQxgedOFI.IsOpen =
						not TGAEZBJhPxL(aXsuNvBE["OptionHolder"].Instance, zQxgedOFI.Section.Items["Section"].Instance.Parent)
					aXsuNvBE["OptionHolder"].Instance.Visible = zQxgedOFI.IsOpen
				end
			end)

			local lbtiqelzvhe = false
			local BVSofntMPCJ

			function zQxgedOFI:SetOpen(Bool)
				if lbtiqelzvhe then
					return
				end

				zQxgedOFI.IsOpen = Bool
				lbtiqelzvhe = true

				if Bool then
					aXsuNvBE["OptionHolder"].Instance.Visible = true
					aXsuNvBE["OptionHolder"].Instance.Parent = PYMBJvUCOh.Holder.Instance

					BVSofntMPCJ = GgtrVFeG.RenderStepped:Connect(function()
						aXsuNvBE["OptionHolder"].Instance.Position = keGiDkjvH(
							0,
							aXsuNvBE["RealDropdown"].Instance.AbsolutePosition.X,
							0,
							aXsuNvBE["RealDropdown"].Instance.AbsolutePosition.Y
								+ aXsuNvBE["RealDropdown"].Instance.AbsoluteSize.Y
								+ 65
						)

						aXsuNvBE["OptionHolder"].Instance.Size =
							keGiDkjvH(0, aXsuNvBE["RealDropdown"].Instance.AbsoluteSize.X, 0, zQxgedOFI.MaxSize)
					end)

					for udqfjGdZsfFL, BEBEAVTqVC in PYMBJvUCOh.OpenFrames do
						if BEBEAVTqVC ~= zQxgedOFI then
							BEBEAVTqVC:SetOpen(false)
						end
					end

					PYMBJvUCOh.OpenFrames[zQxgedOFI] = zQxgedOFI
				else
					if BVSofntMPCJ then
						BVSofntMPCJ:Disconnect()
						BVSofntMPCJ = nil
					end

					if PYMBJvUCOh.OpenFrames[zQxgedOFI] then
						PYMBJvUCOh.OpenFrames[zQxgedOFI] = nil
					end
				end

				local xGkvwRICQszt = aXsuNvBE["OptionHolder"].Instance:GetDescendants()
				tJopVXlm(xGkvwRICQszt, aXsuNvBE["OptionHolder"].Instance)

				local WgxhdbUDPOBb

				for udqfjGdZsfFL, BEBEAVTqVC in xGkvwRICQszt do
					local yosjrPzqnp = FVSWOKYqRyR:GetProperty(BEBEAVTqVC)

					if not yosjrPzqnp then
						continue
					end

					if not BEBEAVTqVC.ClassName:find("UI") then
						BEBEAVTqVC.ZIndex = zQxgedOFI.IsOpen and 10 or 1
					end

					if type(yosjrPzqnp) == "table" then
						for _, Property in yosjrPzqnp do
							WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, Property, Bool, 0.2)
						end
					else
						WgxhdbUDPOBb = FVSWOKYqRyR:FadeItem(BEBEAVTqVC, yosjrPzqnp, Bool, 0.2)
					end
				end

				PYMBJvUCOh:Connect(WgxhdbUDPOBb.Tween.Completed, function()
					lbtiqelzvhe = false
					aXsuNvBE["OptionHolder"].Instance.Visible = zQxgedOFI.IsOpen
					task.wait(0.2)
					aXsuNvBE["OptionHolder"].Instance.Parent = not zQxgedOFI.IsOpen and PYMBJvUCOh.UnusedHolder.Instance
						or PYMBJvUCOh.Holder.Instance
				end)
			end

			function zQxgedOFI:Add(Option)
				local JjLVnjginU = type(Option) == "table" and Option.Name or Option
				local wFAYbGscu = type(Option) == "table" and Option.Risk or nil
				local ZtMwDqqXY = wFAYbGscu == "detected" and ybqEvbYIw(255, 0, 0) or wFAYbGscu == "risky" and ybqEvbYIw(255, 255, 0) or nil

				local WFcDXOBpNeY = gaLDMUsM:Create("TextButton", {Parent= aXsuNvBE["Holder"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(0, 0, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				WFcDXOBpNeY:AddToTheme({BackgroundColor3= "Element" })

				gaLDMUsM:Create("UIGradient", {Parent= WFcDXOBpNeY.Instance,
					Name = "\0",
					Rotation = -90,
					Color = GyIeRdRLaGL({
						WUxYPIsR(0, ybqEvbYIw(255, 255, 255)),
						WUxYPIsR(1, ybqEvbYIw(200, 200, 200)),
					}),
				})

				local rIcEoOHvNU = gaLDMUsM:Create("UIStroke", {Parent= WFcDXOBpNeY.Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = ybqEvbYIw(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				rIcEoOHvNU:AddToTheme({Color= "Border" })

				local RJajHCRr = gaLDMUsM:Create("Frame", {Parent= WFcDXOBpNeY.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(0, 1, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = OkLOYtRHm,
				})
				RJajHCRr:AddToTheme({BackgroundColor3= "Accent" })

				local WGLvlxvmS = gaLDMUsM:Create("TextLabel", {Parent= WFcDXOBpNeY.Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ZtMwDqqXY or ybqEvbYIw(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = JjLVnjginU,
					Size = keGiDkjvH(0, 0, 0, 15),
					AnchorPoint = iKnspdwtTSDH(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(0, 10, 0.5, 0),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				if not ZtMwDqqXY then
					WGLvlxvmS:AddToTheme({TextColor3= "Text" })
				end

				local CrdadsFgLFLW = {Button= WFcDXOBpNeY,
					Selected = false,
					Name = JjLVnjginU,
					Risk = wFAYbGscu,
					Text = WGLvlxvmS,
					Liner = RJajHCRr,
					Stroke = rIcEoOHvNU,
				}

				function CrdadsFgLFLW:Toggle(Status)
					if Status == "Active" then
						CrdadsFgLFLW.Liner:Tween(nil, {BackgroundTransparency= 0, Size = keGiDkjvH(0, 1, 1, 0) })
						CrdadsFgLFLW.Text:Tween(nil, {TextTransparency= 0 })
						CrdadsFgLFLW.Button:Tween(nil, {BackgroundTransparency= 0 })
						CrdadsFgLFLW.Stroke:Tween(nil, {Transparency= 0 })
					else
						CrdadsFgLFLW.Liner:Tween(nil, {BackgroundTransparency= 1 })
						CrdadsFgLFLW.Text:Tween(nil, {TextTransparency= 0.4 })
						CrdadsFgLFLW.Button:Tween(nil, {BackgroundTransparency= 1 })
						CrdadsFgLFLW.Stroke:Tween(nil, {Transparency= 1 })
					end
				end

				function CrdadsFgLFLW:Set()
					CrdadsFgLFLW.Selected = not CrdadsFgLFLW.Selected

					if Data.Multi then
						local udqfjGdZsfFL = wTYmJuDf(zQxgedOFI.Value, CrdadsFgLFLW.Name)

						if udqfjGdZsfFL then
							QfFxUUYxX(zQxgedOFI.Value, udqfjGdZsfFL)
						else
							tJopVXlm(zQxgedOFI.Value, CrdadsFgLFLW.Name)
						end

						CrdadsFgLFLW:Toggle(udqfjGdZsfFL and "Inactive" or "Active")

						PYMBJvUCOh.Flags[zQxgedOFI.Flag] = zQxgedOFI.Value

						local XmnvKkuQ = #zQxgedOFI.Value > 0 and ZnmZpBTrprY(zQxgedOFI.Value, ", ") or "--"
						aXsuNvBE["Value"].Instance.Text = XmnvKkuQ
					else
						if CrdadsFgLFLW.Selected then
							zQxgedOFI.Value = CrdadsFgLFLW.Name
							PYMBJvUCOh.Flags[zQxgedOFI.Flag] = CrdadsFgLFLW.Name

							CrdadsFgLFLW.Selected = true
							CrdadsFgLFLW:Toggle("Active")

							for udqfjGdZsfFL, BEBEAVTqVC in zQxgedOFI.Options do
								if BEBEAVTqVC ~= CrdadsFgLFLW then
									BEBEAVTqVC.Selected = false
									BEBEAVTqVC:Toggle("Inactive")
								end
							end

							aXsuNvBE["Value"].Instance.Text = CrdadsFgLFLW.Name
						else
							zQxgedOFI.Value = nil
							PYMBJvUCOh.Flags[zQxgedOFI.Flag] = nil

							CrdadsFgLFLW.Selected = false
							CrdadsFgLFLW:Toggle("Inactive")

							aXsuNvBE["Value"].Instance.Text = "-"
						end
					end

					if zQxgedOFI.Callback then
						PYMBJvUCOh:SafeCall(zQxgedOFI.Callback, zQxgedOFI.Value)
					end
				end

				CrdadsFgLFLW.Button:Connect("MouseButton1Down", function()
					CrdadsFgLFLW:Set()
				end)

				zQxgedOFI.Options[CrdadsFgLFLW.Name] = CrdadsFgLFLW
				return CrdadsFgLFLW
			end

			function zQxgedOFI:Remove(Option)
				local CrdadsFgLFLW = zQxgedOFI.Options[Option]
				if CrdadsFgLFLW then
					CrdadsFgLFLW.Button:Clean()
					zQxgedOFI.Options[Option] = nil
				end
			end

			function zQxgedOFI:Refresh(NcrDkYDRtn)
				for udqfjGdZsfFL, BEBEAVTqVC in zQxgedOFI.Options do
					zQxgedOFI:Remove(BEBEAVTqVC.Name)
				end

				for udqfjGdZsfFL, BEBEAVTqVC in NcrDkYDRtn do
					zQxgedOFI:Add(BEBEAVTqVC)
				end
			end

			for udqfjGdZsfFL, BEBEAVTqVC in zQxgedOFI.Items do
				zQxgedOFI:Add(BEBEAVTqVC)
			end

			aXsuNvBE["RealDropdown"]:Connect("MouseButton1Down", function()
				zQxgedOFI:SetOpen(not zQxgedOFI.IsOpen)
			end)

			PYMBJvUCOh:Connect(iwUZWTTfTft.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					if not zQxgedOFI.IsOpen then
						return
					end

					if PYMBJvUCOh:IsMouseOverFrame(aXsuNvBE["OptionHolder"]) then
						return
					end

					zQxgedOFI:SetOpen(false)
				end
			end)

			local xioAGvgrjt

			aXsuNvBE["Search"]:Connect("Focused", function()
				xioAGvgrjt = GgtrVFeG.RenderStepped:Connect(function()
					for udqfjGdZsfFL, BEBEAVTqVC in zQxgedOFI.Options do
						if aXsuNvBE["Search"].Instance.Text ~= "" then
							if
								ksFUDmyXEp(
									QDiHRqlcnd(BEBEAVTqVC.Name),
									PYMBJvUCOh:EscapePattern(QDiHRqlcnd(aXsuNvBE["Search"].Instance.Text))
								)
							then
								BEBEAVTqVC.Button.Instance.Visible = true
							else
								BEBEAVTqVC.Button.Instance.Visible = false
							end
						else
							BEBEAVTqVC.Button.Instance.Visible = true
						end
					end
				end)
			end)

			aXsuNvBE["Search"]:Connect("FocusLost", function()
				if xioAGvgrjt then
					xioAGvgrjt:Disconnect()
					xioAGvgrjt = nil
				end
			end)

			PYMBJvUCOh.SetFlags[zQxgedOFI.Flag] = function(BEBEAVTqVC)
				zQxgedOFI:Set(BEBEAVTqVC)
			end

			if zQxgedOFI.Default then
				zQxgedOFI:Set(zQxgedOFI.Default)
			end

			return zQxgedOFI
		end

		PYMBJvUCOh.Sections.Label = function(PypkHNpYF, Name)
			local FYHNasyDeyK = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Name or "Label",
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Label"] = gaLDMUsM:Create("Frame", {Parent= FYHNasyDeyK.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = keGiDkjvH(1, 0, 0, 15),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Label"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = FYHNasyDeyK.Name,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					Size = keGiDkjvH(0, 0, 0, 15),
					BorderSizePixel = 0,
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["SubElements"] = gaLDMUsM:Create("Frame", {Parent= aXsuNvBE["Label"].Instance,
					Name = "\0",
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					AnchorPoint = iKnspdwtTSDH(1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = keGiDkjvH(1, 0, 0, 0),
					Size = keGiDkjvH(0, 0, 1, 0),
					ZIndex = 2,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				gaLDMUsM:Create("UIListLayout", {Parent= aXsuNvBE["SubElements"].Instance,
					Name = "\0",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Padding = ZRxtzEskBOxd(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			end

			function FYHNasyDeyK:SetText(Text)
				Text = EJJFGJzBaV(Text)
				aXsuNvBE["Text"].Instance.Text = Text
			end

			function FYHNasyDeyK:SetVisibility(Bool)
				aXsuNvBE["Label"].Instance.Visible = Bool
			end

			function FYHNasyDeyK:Colorpicker(Data)
				Data = Data or {}

				local lirFIIvqOova = {Window= FYHNasyDeyK.Window,
					Page = FYHNasyDeyK.Page,
					Section = FYHNasyDeyK.Section,

					Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
					Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
					Alpha = Data.Alpha or Data.alpha or 0,
					Callback = Data.Callback or Data.callback or function() end,
				}

				local xANSEPIilSZb, hHMuuvknE = PYMBJvUCOh:CreateColorpicker({Parent= aXsuNvBE["SubElements"],
					Page = lirFIIvqOova.Page,
					Flag = lirFIIvqOova.Flag,
					Section = lirFIIvqOova.Section,
					Default = lirFIIvqOova.Default,
					Alpha = lirFIIvqOova.Alpha,
					Callback = lirFIIvqOova.Callback,
				})

				return xANSEPIilSZb
			end

				function FYHNasyDeyK:Keybind(Data)
					Data = Data or {}

					local kAHDsahreDvJ = {Window= FYHNasyDeyK.Window,
						Page = FYHNasyDeyK.Page,
						Section = FYHNasyDeyK.Section,

						Name = Data.Name or Data.name or "Keybind",
						Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
						Default = Data.Default or Data.default,
						Callback = Data.Callback or Data.callback or function() end,
						Mode = Data.Mode or Data.mode or "Toggle",
					}

				local oqOViKCW, aXsuNvBE = PYMBJvUCOh:CreateKeybind({Name= kAHDsahreDvJ.Name,
					Parent = aXsuNvBE["SubElements"],
					Flag = kAHDsahreDvJ.Flag,
					Section = kAHDsahreDvJ.Section,
					Default = kAHDsahreDvJ.Default,
					Mode = kAHDsahreDvJ.Mode,
					Callback = kAHDsahreDvJ.Callback,
				})

				return oqOViKCW
			end

			return FYHNasyDeyK
		end

		PYMBJvUCOh.Sections.Textbox = function(PypkHNpYF, Data)
			Data = Data or {}

			local vZvKFtBmOWm = {Window= PypkHNpYF.Window,
				Page = PypkHNpYF.Page,
				Section = PypkHNpYF,

				Name = Data.Name or Data.name or "Textbox",
				Flag = Data.Flag or Data.flag or PYMBJvUCOh:NextFlag(),
				Default = Data.Default or Data.default or "",
				Callback = Data.Callback or Data.callback or function() end,
				Placeholder = Data.Placeholder or Data.placeholder or "...",
				Finished = Data.Finished or Data.finished or false,
				Numeric = Data.Numeric or Data.numeric or false,

				Value = "",
			}

			local aXsuNvBE = {}
			do
				aXsuNvBE["Textbox"] = gaLDMUsM:Create("Frame", {Parent= vZvKFtBmOWm.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Size = keGiDkjvH(1, 0, 0, 20),
					BorderSizePixel = 0,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})

				aXsuNvBE["Input"] = gaLDMUsM:Create("TextBox", {Parent= aXsuNvBE["Textbox"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					CursorPosition = -1,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = "",
					Size = keGiDkjvH(0.6000000238418579, 0, 1, 0),
					BorderSizePixel = 0,
					PlaceholderColor3 = ybqEvbYIw(185, 185, 185),
					TextXAlignment = Enum.TextXAlignment.Left,
					PlaceholderText = vZvKFtBmOWm.Placeholder,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(32, 38, 48),
				})
				aXsuNvBE["Input"]:AddToTheme({TextColor3= "Text",
					PlaceholderColor3 = "Inactive Text",
					BackgroundColor3 = "Element",
				})

				gaLDMUsM:Create("UIPadding", {Parent= aXsuNvBE["Input"].Instance,
					Name = "\0",
					PaddingLeft = ZRxtzEskBOxd(0, 6),
				})

				aXsuNvBE["Text"] = gaLDMUsM:Create("TextLabel", {Parent= aXsuNvBE["Textbox"].Instance,
					Name = "\0",
					FontFace = PYMBJvUCOh.Font,
					TextColor3 = ybqEvbYIw(255, 255, 255),
					BorderColor3 = ybqEvbYIw(0, 0, 0),
					Text = vZvKFtBmOWm.Name,
					AnchorPoint = iKnspdwtTSDH(1, 0),
					Size = keGiDkjvH(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = keGiDkjvH(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = ybqEvbYIw(255, 255, 255),
				})
				aXsuNvBE["Text"]:AddToTheme({TextColor3= "Text" })

				aXsuNvBE["Input"]:OnHover(function()
					aXsuNvBE["Input"]:Tween(
						nil,
						{BackgroundColor3= PYMBJvUCOh:GetLighterColor(PYMBJvUCOh.Theme.Element, 1.35) }
					)
				end)

				aXsuNvBE["Input"]:OnHoverLeave(function()
					aXsuNvBE["Input"]:Tween(nil, {BackgroundColor3= PYMBJvUCOh.Theme.Element })
				end)
			end

			function vZvKFtBmOWm:Get()
				return vZvKFtBmOWm.Value
			end

			function vZvKFtBmOWm:SetVisibility(Bool)
				aXsuNvBE["Textbox"].Instance.Visible = Bool
			end

			function vZvKFtBmOWm:Set(BEBEAVTqVC)
				if vZvKFtBmOWm.Numeric then
					if (not liisJTFQukG(BEBEAVTqVC)) and RiQdNRCyr(EJJFGJzBaV(BEBEAVTqVC)) > 0 then
						BEBEAVTqVC = vZvKFtBmOWm.Value
					end
				end

				vZvKFtBmOWm.Value = BEBEAVTqVC
				aXsuNvBE["Input"].Instance.Text = BEBEAVTqVC
				PYMBJvUCOh.Flags[vZvKFtBmOWm.Flag] = BEBEAVTqVC

				if vZvKFtBmOWm.Callback then
					PYMBJvUCOh:SafeCall(vZvKFtBmOWm.Callback, vZvKFtBmOWm.Value)
				end
			end

			if vZvKFtBmOWm.Finished then
				aXsuNvBE["Input"]:Connect("FocusLost", function(PressedEnterQuestionMark)
					if PressedEnterQuestionMark then
						vZvKFtBmOWm:Set(aXsuNvBE["Input"].Instance.Text)
					end
				end)
			else
				aXsuNvBE["Input"].Instance:GetPropertyChangedSignal("Text"):Connect(function()
					vZvKFtBmOWm:Set(aXsuNvBE["Input"].Instance.Text)
				end)
			end

			if vZvKFtBmOWm.Default then
				vZvKFtBmOWm:Set(vZvKFtBmOWm.Default)
			end

			PYMBJvUCOh.SetFlags[vZvKFtBmOWm.Flag] = function(BEBEAVTqVC)
				vZvKFtBmOWm:Set(BEBEAVTqVC)
			end

			return vZvKFtBmOWm
		end

		PYMBJvUCOh.CreateSettingsPage = function(PypkHNpYF, wTCNhmrX, vZdvDOFQchW, KlIDyGNgpOoP)
			local OLWyPWalCNRv = wTCNhmrX:Page({Name= "Settings", Columns = 2 })
			local LDSXFKiEsjcl = OLWyPWalCNRv:Section({Name= "Settings", Side = 1 })
			do
				LDSXFKiEsjcl:Button({Name= "Unload",
					Callback = function()
						PYMBJvUCOh:Unload()
					end,
				})

				LDSXFKiEsjcl:Toggle({Name= "Watermark",
					Flag = "Watermark",
					Default = true,
					Callback = function(BEBEAVTqVC)
						KlIDyGNgpOoP:SetVisibility(BEBEAVTqVC)
					end,
				})

				LDSXFKiEsjcl:Toggle({Name= "Keybind List",
					Flag = "Keybind list",
					Default = true,
					Callback = function(BEBEAVTqVC)
						vZdvDOFQchW:SetVisibility(BEBEAVTqVC)
					end,
				})

				LDSXFKiEsjcl:Toggle({Name= "Background Blur",
					Flag = "Background Blur",
					Default = true,
					Callback = function(BEBEAVTqVC)
						PYMBJvUCOh.BlurEnabled = BEBEAVTqVC
						if BEBEAVTqVC and wTCNhmrX.IsOpen and wTCNhmrX.Blur then
							LEDBMpPYoqoV:Create(wTCNhmrX.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size= 15 }):Play()
						elseif not BEBEAVTqVC and wTCNhmrX.Blur then
							LEDBMpPYoqoV:Create(wTCNhmrX.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size= 0 }):Play()
						end
					end,
				})

				LDSXFKiEsjcl:Toggle({Name= "Snow Background Effect",
					Flag = "Snow Background Effect",
					Default = false,
					Callback = function(BEBEAVTqVC)
						PYMBJvUCOh.SnowEnabled = BEBEAVTqVC
						if BEBEAVTqVC then
							if wTCNhmrX.SnowContainer then
								wTCNhmrX.SnowContainer.Instance.Visible = true
							end
							if wTCNhmrX.IsOpen then
								wTCNhmrX.StartSnow()
							end
						else
							wTCNhmrX.StopSnow()
						end
					end,
				})

				LDSXFKiEsjcl:Toggle({Name= "Menu Background Snow",
					Flag = "Menu Background Snow",
					Default = true,
					Callback = function(BEBEAVTqVC)
						PYMBJvUCOh.MenuSnowEnabled = BEBEAVTqVC
						if BEBEAVTqVC then
							if wTCNhmrX.MenuSnowContainer then
								wTCNhmrX.MenuSnowContainer.Instance.Visible = true
							end
							if wTCNhmrX.IsOpen then
								wTCNhmrX.StartMenuSnow()
							end
						else
							wTCNhmrX.StopMenuSnow()
						end
					end,
				})

				LDSXFKiEsjcl:Label("Menu Keybind"):Keybind({Name= "Menu Keybind",
					Flag = "MenuKeybind",
					Default = PYMBJvUCOh.MenuKeybind,
					Mode = "Toggle",
					Callback = function()
						PYMBJvUCOh.MenuKeybind = PYMBJvUCOh.Flags["MenuKeybind"].Key
					end,
				})


			end

			if ViEAFeQPtQ then
				local UHLyTXhghKMD = OLWyPWalCNRv:Section({Name= "Mobile", Side = 2 })
				UHLyTXhghKMD:Label("CONFIGS NOT SUPPORTED FOR MOBILE")
			else
				local IPOJCeqQFQM = OLWyPWalCNRv:Section({Name= "Configs", Side = 2 })
				do
					local siEcuozek
					local rGQJrVfIpXv

					local rBwBmSoiWMS = IPOJCeqQFQM:Dropdown({Name= "Profiles list",
						Flag = "Profiles list",
						Multi = false,
						Items = {},
						Callback = function(BEBEAVTqVC)
							rGQJrVfIpXv = BEBEAVTqVC
						end,
					})

					IPOJCeqQFQM:Textbox({Name= "Config name",
						Default = "",
						Flag = "ConfigName",
						Placeholder = "...",
						Callback = function(BEBEAVTqVC)
							siEcuozek = BEBEAVTqVC
						end,
					})

					IPOJCeqQFQM:Button({Name= "Create",
						Callback = function()
							if siEcuozek ~= "" then
								if not isfile(PYMBJvUCOh.Folders.Configs .. "/" .. siEcuozek .. ".json") then
									writefile(PYMBJvUCOh.Folders.Configs .. "/" .. siEcuozek .. ".json", PYMBJvUCOh:GetConfig())
									PYMBJvUCOh:RefreshConfigsList(rBwBmSoiWMS)
									PYMBJvUCOh:Notification("Created config " .. siEcuozek .. ".json", 5)
								end
							end
						end,
					})

					IPOJCeqQFQM:Button({Name= "Delete",
						Callback = function()
							if rGQJrVfIpXv ~= nil then
								delfile(PYMBJvUCOh.Folders.Configs .. "/" .. rGQJrVfIpXv .. ".json")
								PYMBJvUCOh:RefreshConfigsList(rBwBmSoiWMS)
								PYMBJvUCOh:Notification("Deleted config " .. rGQJrVfIpXv .. ".json", 5, ybqEvbYIw(255, 0, 0))
							end
						end,
					})

					IPOJCeqQFQM:Button({Name= "Load",
						Callback = function()
							if rGQJrVfIpXv ~= nil then
								local oNoeIYdYXYO, Result = PYMBJvUCOh:LoadConfig(
									readfile(PYMBJvUCOh.Folders.Configs .. "/" .. rGQJrVfIpXv .. ".json")
								)
								if oNoeIYdYXYO then
									PYMBJvUCOh:Notification("Loaded config " .. rGQJrVfIpXv .. ".json", 5)
								else
									PYMBJvUCOh:Notification("Failed to load config " .. rGQJrVfIpXv .. ".json", 5)
								end
							end
						end,
					})

					IPOJCeqQFQM:Button({Name= "Save",
						Callback = function()
							if rGQJrVfIpXv ~= nil then
								writefile(PYMBJvUCOh.Folders.Configs .. "/" .. rGQJrVfIpXv .. ".json", PYMBJvUCOh:GetConfig())
								PYMBJvUCOh:Notification("Saved config " .. rGQJrVfIpXv .. ".json", 5)
							end
						end,
					})

					IPOJCeqQFQM:Button({Name= "Refresh",
						Callback = function()
							PYMBJvUCOh:RefreshConfigsList(rBwBmSoiWMS)
						end,
					})

					PYMBJvUCOh:RefreshConfigsList(rBwBmSoiWMS)
				end
			end

		end
	end
end

-- Executor support check
local tUAMeIxeLQhD = CnNOmZmbEvte(identifyexecutor) and identifyexecutor() or "Unknown"

local eVnYUQey = {Volcano= true, Bunni = true, Seliware = true, Krnl = true,
	Volt = true, Swift = true, Valex = true, Potassium = true,
	Wave = true, Hydrogen = true, ["Synapse Z"] = true,
}

local CMEkFJlUx = {Madium= true, Real = true, Velocity = true,
}

local InSDALAhEg = {MacSploit= true, Xeno = true, Solara = true,
}

-- MessageBox is self-contained (defined at the top of this file)

if ViEAFeQPtQ then
	sEAejVYOKGwS.Show({Position= UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your on Mobile not ALL Features will be working/supported",
		MessageBoxIcon = "Warning",
		MessageBoxButtons = "OK",
	})
end

if InSDALAhEg[tUAMeIxeLQhD] then
	sEAejVYOKGwS.Show({Position= UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your Executor Is NOT Supported",
		MessageBoxIcon = "Error",
		MessageBoxButtons = "OK",
	})
	return
end

if CMEkFJlUx[tUAMeIxeLQhD] then
	sEAejVYOKGwS.Show({Position= UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your Executor Is NOT FULLY Supported May Be Laggy/Detected",
		MessageBoxIcon = "Warning",
		MessageBoxButtons = "OK",
	})
end

getgenv().Library = PYMBJvUCOh
PYMBJvUCOh:ChangeTheme("Accent",          Color3.fromRGB(0, 191, 255))  --// original purple accent
PYMBJvUCOh:ChangeTheme("Background",      Color3.fromRGB(12,  12,  12))   --// darker bg
PYMBJvUCOh:ChangeTheme("Inline",          Color3.fromRGB(18,  18,  18))   --// section bg
PYMBJvUCOh:ChangeTheme("Page Background", Color3.fromRGB(20,  20,  20))   --// tab bg
PYMBJvUCOh:ChangeTheme("Element",         Color3.fromRGB(26,  26,  26))   --// toggle/slider bg
PYMBJvUCOh:ChangeTheme("Hovered Element", Color3.fromRGB(35,  35,  35))   --// hover
PYMBJvUCOh:ChangeTheme("Border",          Color3.fromRGB(10,  10,  10))   --// outer border
PYMBJvUCOh:ChangeTheme("Outline",         Color3.fromRGB(38,  38,  38))   --// inner outline
PYMBJvUCOh:ChangeTheme("Text",            Color3.fromRGB(230, 230, 230))  --// text
PYMBJvUCOh:ChangeTheme("Gradient",        Color3.fromRGB(180, 180, 180))  --// gradient end
PYMBJvUCOh:ChangeTheme("Text Stroke",     Color3.fromRGB(0,   0,   0))    --// text stroke

--// nooo
local tIaaQtZjO = PYMBJvUCOh.GetConfig
PYMBJvUCOh.GetConfig = function(PypkHNpYF)
    local EEBHziCzP = tIaaQtZjO(PypkHNpYF)
    --// append our custom positions
    local MTjjQAas, uOABKytelU = CnNOmZmbEvte(function() return game:GetService("HttpService"):JSONDecode(EEBHziCzP) end)
    if MTjjQAas and type(uOABKytelU) == "table" then
        --// moderator list position
        if StaffListGui then
            local QbdYVBpiWBzb = StaffListGui:FindFirstChildOfClass("Frame")
            if QbdYVBpiWBzb then
                uOABKytelU["__modlist_pos_x"] = QbdYVBpiWBzb.Position.X.Offset
                uOABKytelU["__modlist_pos_y"] = QbdYVBpiWBzb.Position.Y.Offset
            end
        end
        --// armor viewer position
        if JQwtIHUVb then
            uOABKytelU["__armor_pos_x"] = JQwtIHUVb.Position.X.Offset
            uOABKytelU["__armor_pos_y"] = JQwtIHUVb.Position.Y.Offset
        end
        local VzPDEguPmc, OUOTgFJz = CnNOmZmbEvte(function() return game:GetService("HttpService"):JSONEncode(uOABKytelU) end)
        if VzPDEguPmc then return OUOTgFJz end
    end
    return EEBHziCzP
end

local ZqEqMFuPIO = PYMBJvUCOh.LoadConfig
PYMBJvUCOh.LoadConfig = function(PypkHNpYF, EEBHziCzP)
    local DGLlFuqP = ZqEqMFuPIO(PypkHNpYF, EEBHziCzP)
    --// restore our custom positions
    local MTjjQAas, uOABKytelU = CnNOmZmbEvte(function() return game:GetService("HttpService"):JSONDecode(EEBHziCzP) end)
    if MTjjQAas and type(uOABKytelU) == "table" then
        if uOABKytelU["__modlist_pos_x"] and StaffListGui then
            local QbdYVBpiWBzb = StaffListGui:FindFirstChildOfClass("Frame")
            if QbdYVBpiWBzb then
                QbdYVBpiWBzb.Position = UDim2.new(0, uOABKytelU["__modlist_pos_x"], 0, uOABKytelU["__modlist_pos_y"] or 0)
            end
        end
        if uOABKytelU["__armor_pos_x"] and JQwtIHUVb then
            JQwtIHUVb.Position = UDim2.new(0, uOABKytelU["__armor_pos_x"], 0, uOABKytelU["__armor_pos_y"] or 12)
        end
    end
    return DGLlFuqP
end

--// sync "custom uis" with library theme whenever accent changes
local jPBnTGkPep = PYMBJvUCOh.ChangeTheme
PYMBJvUCOh.ChangeTheme = function(PypkHNpYF, theme, qPZbwlbqt)
    jPBnTGkPep(PypkHNpYF, theme, qPZbwlbqt)
    if theme == "Accent" then
        --// update armor viewer accent
        CnNOmZmbEvte(function()
            for _, v in uofVwpDUZ(JQwtIHUVb:GetDescendants()) do
                if v:IsA("Frame") and v.BackgroundColor3 == PYMBJvUCOh.Theme.Accent then
                    v.BackgroundColor3 = qPZbwlbqt
                end
            end
        end)
        --// update moderator list accent
        CnNOmZmbEvte(function()
            if StaffListGui then
                for _, v in uofVwpDUZ(StaffListGui:GetDescendants()) do
                    if v:IsA("Frame") and v.BackgroundColor3 == PYMBJvUCOh.Theme.Accent then
                        v.BackgroundColor3 = qPZbwlbqt
                    end
                end
            end
        end)
    end
end

do --// client bypass // i did not make this tysm to ham or wtv hes name is and i- i i am iron man
    for _, f in getgc() do
        if typeof(f) == "function" and string.find(debug.info(f, "s"), "RayCastHandler") then
            hookfunction(f, function()
                return task.wait(9e9)
            end)
        end
    end
end

local TPwMvSZSYKvg = {GameName= "Rost Alpha", Modules = {}, Globals = {} }
local EnziqNRwERb = {}
local MSCwwCyQ = {}

function safeRun(func)
    local MTjjQAas, qzEJGhZrt = ufXYctZcvy(func, function(e) return e end)
    if not MTjjQAas then
        local QjLpwJSxhEk = EJJFGJzBaV(qzEJGhZrt)
        CnNOmZmbEvte(function() PYMBJvUCOh:Notification("Error | " .. EJJFGJzBaV(QjLpwJSxhEk), 5) end)
    end
end
--// Modules
    local WzuRBlWDxxqo = cloneref(game:GetService("Workspace"))
    local hakkyTINia = game:GetService("SoundService")
    local kViDmXEEMSQC = cloneref(game:GetService("RunService"))
    local hYObRRfN = cloneref(game:GetService("ReplicatedStorage"))
    local adyftbHws = cloneref(game:GetService("Players"))
    local eekqtcHo = cloneref(game:GetService("UserInputService"))
    local GhqoKAAdu = cloneref(game:GetService("TweenService"))
    local RvVIuAQxmpzD = cloneref(game:GetService("Stats"))
    local RRFBmwArrTZ = cloneref(game:GetService("Teams"))
    local qMCUXHmYafaH = cloneref(game:GetService("Lighting"))
    local roYsyRHsV = RRFBmwArrTZ:GetTeams()
    local vdmlnNdl = WzuRBlWDxxqo["CurrentCamera"]
    local VoTftHXQdJA = vdmlnNdl["ViewportSize"]
    local DXWugHbKILJ = adyftbHws["LocalPlayer"]
    local ynbVfuzfB = DXWugHbKILJ["Name"]
    local dUETjKVVhR = DXWugHbKILJ.Character or DXWugHbKILJ.CharacterAdded:Wait()
    TPwMvSZSYKvg.Globals.ClientCharacter = dUETjKVVhR
    local rrxuanfvD = DXWugHbKILJ:GetMouse()
    local dCVGvQJPz = qMCUXHmYafaH:FindFirstChildOfClass("Sky") or cloneref(QajQeTLyeF.new("Sky", qMCUXHmYafaH))
    local bMkpdMwDXu = {SkyboxBk= dCVGvQJPz.SkyboxBk, SkyboxDn = dCVGvQJPz.SkyboxDn, SkyboxFt = dCVGvQJPz.SkyboxFt,
        SkyboxLf = dCVGvQJPz.SkyboxLf, SkyboxRt = dCVGvQJPz.SkyboxRt, SkyboxUp = dCVGvQJPz.SkyboxUp,
    }
    local mwYBnJooI = qMCUXHmYafaH:FindFirstChildOfClass("ColorCorrectionEffect")
            or cloneref(QajQeTLyeF.new("ColorCorrectionEffect", qMCUXHmYafaH))
    local dADuefaDUNe, hmKpBHFHBJpS, QZJyBogfHOtK, szXEOvbLNRN, nHCJjTFLz = {}, {}, {}, {},  {};
    local VLEqgwfvmzaF= {};
    local pSEhPXmu = adyftbHws.LocalPlayer
--//

--// cache
    local XwZyPNbEU = {ClockTime= qMCUXHmYafaH.ClockTime,
        FogEnd = qMCUXHmYafaH.FogEnd,
        Ambient = qMCUXHmYafaH.Ambient,
        OutdoorAmbient = qMCUXHmYafaH.OutdoorAmbient
    }

    local IBveTBsoN = qMCUXHmYafaH:FindFirstChild("Atmosphere")
    if IBveTBsoN then
        XwZyPNbEU.Density = IBveTBsoN.Density
        XwZyPNbEU.Offset = IBveTBsoN.Offset
        XwZyPNbEU.Glare = IBveTBsoN.Glare
        XwZyPNbEU.Haze = IBveTBsoN.Haze
    end

    local pSEhPXmu = DXWugHbKILJ
    local MFXailgzVUGA = nil
    local eQaaJKzsri = nil
    local BdxvaCFFPR = nil

    function waitForCharacter()
        MFXailgzVUGA = pSEhPXmu.Character or pSEhPXmu.CharacterAdded:Wait()
        eQaaJKzsri = MFXailgzVUGA:WaitForChild("HumanoidRootPart")
        BdxvaCFFPR = MFXailgzVUGA:WaitForChild("Humanoid")
        TPwMvSZSYKvg.Globals.ClientCharacter = MFXailgzVUGA
    end
    
    pSEhPXmu.CharacterAdded:Connect(function()
        waitForCharacter()
        if TPwMvSZSYKvg.Globals.RaycastParams then
            TPwMvSZSYKvg.Globals.RaycastParams.FilterDescendantsInstances = {
                apAMQyQhUl.CurrentCamera,
                TPwMvSZSYKvg.Globals.ClientCharacter,
            }
        end
    end)
--//
local WkEAKzlwbR = game:GetService("RunService")
local eekqtcHo = game:GetService("UserInputService")
local IEsOFFDBr = game:GetService("Players").LocalPlayer
local vdmlnNdl = apAMQyQhUl.CurrentCamera
local ZAgIMIcNT

WkEAKzlwbR.Heartbeat:Connect(function(tjNyWkho)
	ZAgIMIcNT = IEsOFFDBr.Character
	local EIsPKrNh = ZAgIMIcNT and ZAgIMIcNT:FindFirstChild("HumanoidRootPart")
	local diVhMYGuCra = ZAgIMIcNT and ZAgIMIcNT:FindFirstChildOfClass("Humanoid")

	local HwklDphOo = false
	if diVhMYGuCra and EIsPKrNh then 
		if EnziqNRwERb["FlyEnabled"] and EnziqNRwERb["FlyKeybind"] and EnziqNRwERb["FlyKeybind"].active then
			HwklDphOo = true
			task.spawn(function()
				if diVhMYGuCra and diVhMYGuCra.Health > 0 then
					local zDzPFEBgcF = EnziqNRwERb["FlySpeed"] or 1
					local mZNYkcit = tjNyWkho * zDzPFEBgcF * 3
					local NTJdxHhbj = diVhMYGuCra.MoveDirection

					if eekqtcHo:IsKeyDown(Enum.KeyCode.E) then
						NTJdxHhbj = NTJdxHhbj + Vector3.new(0, 1, 0)
					end
					if eekqtcHo:IsKeyDown(Enum.KeyCode.LeftControl) then
						NTJdxHhbj = NTJdxHhbj + Vector3.new(0, -1, 0)
					end
					if eekqtcHo:IsKeyDown(Enum.KeyCode.W) then
						NTJdxHhbj = NTJdxHhbj + Vector3.new(0, vdmlnNdl.CFrame.LookVector.Y, 0)
					end
					if eekqtcHo:IsKeyDown(Enum.KeyCode.S) then
						NTJdxHhbj = NTJdxHhbj + Vector3.new(0, -vdmlnNdl.CFrame.LookVector.Y, 0)
					end

					local oNOOmWmyCcA = NTJdxHhbj * mZNYkcit
					local GjYgamGJo = EIsPKrNh.CFrame.Position + oNOOmWmyCcA
					diVhMYGuCra.PlatformStand = false
					EIsPKrNh.Velocity = Vector3.zero
					EIsPKrNh.CFrame = CFrame.new(GjYgamGJo, GjYgamGJo + Vector3.new(vdmlnNdl.CFrame.LookVector.X, 0, vdmlnNdl.CFrame.LookVector.Z))
				end
			end)
		end

		if EnziqNRwERb["FlyEnabled"] and HwklDphOo then
			local lNmzNUWHuq = EIsPKrNh.Position
			local mPPXWCokOKyi = RaycastParams.new()
			mPPXWCokOKyi.FilterType = Enum.RaycastFilterType.Exclude
			mPPXWCokOKyi.FilterDescendantsInstances = {ZAgIMIcNT}
			mPPXWCokOKyi.IgnoreWater = true
			
			local GkDVeLgrPbEt = apAMQyQhUl:Raycast(lNmzNUWHuq, Vector3.new(0, -1000, 0), mPPXWCokOKyi)
			if GkDVeLgrPbEt and GkDVeLgrPbEt.Distance > 12 then
				task.spawn(function()
					local kmIZvOIMM = EIsPKrNh.Velocity
					for _, Part in uofVwpDUZ(ZAgIMIcNT:GetChildren()) do
						if Part:IsA("BasePart") or Part:IsA("MeshPart") then
							Part.Velocity = Vector3.new(0, -9999, 0)
						end
					end
					WkEAKzlwbR.RenderStepped:Wait()
					for _, Part in uofVwpDUZ(ZAgIMIcNT:GetChildren()) do
						if Part:IsA("BasePart") or Part:IsA("MeshPart") then
							Part.Velocity = kmIZvOIMM
						end
					end
				end)
			end
		end
	end
end)
    local neefbESrC = {
        ["Scan"] = "rbxassetid://9305457875",
        ["Scanning-hexagon"] = "rbxassetid://89067318",
        ["Hexagon"] = "rbxassetid://2930247814",
        ["Alien"] = "rbxassetid://459487304",
        ["Triangles"] = "rbxassetid://1478668577",
        ["Illusion"] = "rbxassetid://5841714970",
        ["Ground"] = "rbxassetid://11619804506",
        ["Lasers"] = "rbxassetid://398330154",
        ["Player"] = "rbxassetid://4504366173",
        ["Stars"] = "rbxassetid://4952604311",
        ["Lidar"] = "rbxassetid://965496575",
        ["Pixels"] = "rbxassetid://140652787",
        ["Pixels2"] = "rbxassetid://11780157037",
        ["Lidar2"] = "rbxassetid://13173535584",
        ["CityScan"] = "rbxassetid://951824492",
        ["Clouds"] = "rbxassetid://1723973648",
        ["Rainbow"] = "rbxassetid://10037165803",
        ["Scanning"] = "rbxassetid://5843010904",
        ["Groove"] = "rbxassetid://10785404176",
        ["Waves"] = "rbxassetid://6151763633",
        ["Corrupted"] = "rbxassetid://1212976946",
        ["Tiles"] = "rbxassetid://85065287",
        ["Netflix"] = "rbxassetid://8313072955",
        ["Circle"] = "rbxassetid://13996983074",
        ["Web"] = "rbxassetid://301464986",
        ["Swirl"] = "rbxassetid://8133639623",
        ["Scratches"] = "rbxassetid://4952604311",
        ["Webz"] = "rbxassetid://14410238962",
        ["Pixels3"] = "rbxassetid://12561493608",
        ["Outline"] = "rbxassetid://12361388066",
        ["Webz2"] = "rbxassetid://12646281757",
        ["Outline2"] = "rbxassetid://5125811022",
        ["Akatsuki"] = "rbxassetid://10913193650",
        ["America"] = "rbxassetid://936775406",
        ["Shield Forcefield"] = "rbxassetid://361073795",
        ["Water"] = "rbxasset://textures/water/normal_21.dds",
    };

    local OPrCbgEZmoj = {entry= nil, closest_part = nil, hasshot = false}

    local SDukgEzas = {
        ["Blue Sky"] = { "591058823", "591059876", "591058104", "591057861", "591057625", "591059642" },
        ["Vaporwave"] = { "1417494030", "1417494146", "1417494253", "1417494402", "1417494499", "1417494643" },
        ["Redshift"] = { "401664839", "401664862", "401664960", "401664881", "401664901", "401664936" },
        ["Blaze"] = { "150939022", "150939038", "150939047", "150939056", "150939063", "150939082" },
        ["Among Us"] = { "5752463190", "5752463190", "5752463190", "5752463190", "5752463190", "5752463190" },
        ["Dark Night"] = { "6285719338", "6285721078", "6285722964", "6285724682", "6285726335", "6285730635" },
        ["Bright Pink"] = { "271042516", "271077243", "271042556", "271042310", "271042467", "271077958" },
        ["Purple Sky"] = { "570557514", "570557775", "570557559", "570557620", "570557672", "570557727" },
        ["Galaxy"] = { "15125283003", "15125281008", "15125277539", "15125279325", "15125274388", "15125275800" },
        ["Pinky Sky"] = { "11427769401", "11427770685", "11427769401", "11427769401", "11427769401", "11427771954" },
    }

    local setGBERY = {
        ["Dink"]      = "rbxassetid://988593556";
        ["TF2"]       = "rbxassetid://8255306220";
        ["Gamesense"] = "rbxassetid://4817809188";
        ["Rust"]      = "rbxassetid://1255040462";
        ["Neverlose"] = "rbxassetid://8726881116";
        ["Bubble"]    = "rbxassetid://198598793";
        ["Quake"]     = "rbxassetid://1455817260";
        ["Among-Us"]  = "rbxassetid://7227567562";
        ["Ding"]      = "rbxassetid://2868331684";
        ["Minecraft"] = "rbxassetid://6361963422";
        ["Blackout"]  = "rbxassetid://3748776946";
        ["Osu"]       = "rbxassetid://7151989073";
        ["UWU"]       = "rbxassetid://8679659744";
    };

    local IRnZtCdvAX = {
        ["Double Helix"] = "rbxassetid://1134824633", 
        ["Electric"] = "rbxassetid://446111271",
        ["Electric + Glow"] = "rbxassetid://5864341017", 
        ["Fade"] = "rbxassetid://7136858729",
        ["Pulsate"] = "rbxassetid://5889875399", 
        ["Red Lazer"] = "rbxassetid://6333823534", 
        ["Smoke"] = "rbxassetid://3517446796", 
        ["Warp"] = "rbxassetid://7151778302", 
        ["1"] = "rbxassetid://9150663556",
        ["2"] = "rbxassetid://2950987173",
        ["3"] = "rbxassetid://6511613786",
    };

    for JQNgpxISpJC in YjeanuOKx(IRnZtCdvAX) do 
        table.insert(QZJyBogfHOtK, JQNgpxISpJC) 
    end;


    for v in YjeanuOKx(SDukgEzas) do
        table.insert(nHCJjTFLz, v)
    end

    for JQNgpxISpJC in YjeanuOKx(setGBERY) do 
        table.insert(hmKpBHFHBJpS, JQNgpxISpJC) 
    end;
--//


local RWfoErwyK = {enabled= false,
    pitch = 0,
    yaw = 0,
    keys = {},
    old_type = Enum.CameraType.Custom,
    old_behavior = Enum.MouseBehavior.Default,
}


local SERvoUAhpQo, mZVDeZgI
local TBLVmoTzUXtm = {target= {entry= nil,
        part = nil,
        distance = math.huge,
    },
}   
local aBYganOBEaX = nil
local VhoWNJEV = {player_cache= {},
    drawing_cache = {},

    childadded_connections = {},
    childremoved_connections = {},
    functions = {},
}


local STuUhmXDW = QajQeTLyeF.new("Part")
STuUhmXDW.Size = Vector3.new(2, 0.1, 2)
STuUhmXDW.Anchored = true
STuUhmXDW.BrickColor = BrickColor.new("Black")
STuUhmXDW.CanCollide = true
STuUhmXDW.Name = "Platform"
STuUhmXDW.Parent = WzuRBlWDxxqo
STuUhmXDW.Transparency = 1


local rrGuLpVxB = 0.2
local MmtTAKTW = -1
local mGPITWrxre = -2
local KZvfZOcTZ = 0
local jeODIgmE = 0
local HwKEVmuXs = 0
local RAscSuTpWmN = false

local KDxdFRBz = "rbxassetid://8255306220"
local HlwEnUyLeVc = setGBERY[KDxdFRBz]


function getSoundId(sound)
	if not sound:IsA("Sound") then
		return false
	end

	local JQNgpxISpJC = sound.Name:lower()

	if JQNgpxISpJC:find("headshot") then
		return true
	end

	if JQNgpxISpJC:find("hit") then
		return true
	end

	return false
end


function replaceSounds(fzxvzIUrABxr)
	if not fzxvzIUrABxr then return end
    if not EnziqNRwERb["Hitsounds"] then return end

	for _, ygDhqLRyA in uofVwpDUZ(fzxvzIUrABxr:GetDescendants()) do
		if ygDhqLRyA:IsA("Sound") then
			local JQNgpxISpJC = ygDhqLRyA.Name:lower()
            local VjzfwIpLRprs = getSoundId(ygDhqLRyA)
			if HlwEnUyLeVc and ygDhqLRyA.SoundId ~= HlwEnUyLeVc and VjzfwIpLRprs then
				ygDhqLRyA.SoundId = HlwEnUyLeVc
			end
		end
	end
end


function onCharacterAdded(MFXailgzVUGA)
    MFXailgzVUGA.ChildAdded:Connect(function(child)
        if child:IsA("Tool") then
            if EnziqNRwERb["Hitsounds"] then
                replaceSounds(child)
            end
        end
    end)
end

if DXWugHbKILJ.Character then
    onCharacterAdded(DXWugHbKILJ.Character)
end

DXWugHbKILJ.CharacterAdded:Connect(onCharacterAdded)

local TiTLfqQyKGb = require(hYObRRfN.Modules.RunHandler)

TiTLfqQyKGb.CanRun = true

hookfunction(TiTLfqQyKGb.stopRun, function()
	return
end)

--// Sprint speed: disabled in favor of CFrame stepping speed hack method
--// run_service.Heartbeat:Connect(function()
--//     local spd = flags["Sprint Speed"]
--//     if spd and spd ~= 27 then
--//         --// patch the run speed constant in RunHandler.run (index 19 = 20.8 default)
--//         pcall(function() setconstant(RunHandler.run, 19, spd) end)
--//     end
--// end)


kViDmXEEMSQC.RenderStepped:Connect(function()
	if EnziqNRwERb["NoJumpi"] then
		if not jumpScript or not jumpScript.Parent then
			jumpScript = DXWugHbKILJ.PlayerGui:FindFirstChild("JumpCooldown")
		end
		if jumpScript and not jumpScript.Disabled then
			jumpScript.Disabled = true
		end
	elseif jumpScript then
		jumpScript.Disabled = false
		jumpScript = nil
	end
end)

--// reset jumpScript on respawn so it gets re-found in PlayerGui
DXWugHbKILJ.CharacterAdded:Connect(function()
    jumpScript = nil
end)


local LufnzLTer = hYObRRfN
	:WaitForChild("Gun")
	:WaitForChild("Scripts")
	:WaitForChild("RecoilHandler")

local RrBojzxrAZp = require(LufnzLTer)

local bRbqsRbC = RrBojzxrAZp.nextStep
local izoKpvjdzjXS = false

function applyRecoilHook()
	if izoKpvjdzjXS then return end
	izoKpvjdzjXS = true

	RrBojzxrAZp.nextStep = function(PypkHNpYF, ...)
		if EnziqNRwERb["NoRecoil"] then
			return
		else
            return bRbqsRbC(PypkHNpYF, ...)
        end
	end
end

function removeRecoilHook()
	if not izoKpvjdzjXS then return end
	izoKpvjdzjXS = false
	RrBojzxrAZp.nextStep = bRbqsRbC
end



local SoOLyizUijMH = false

local xCzLyilOyXe = false

local LDWmIPgEUyy = require(hYObRRfN.Gun.Scripts.GunClient)
local gIRxxjgNlf = require(hYObRRfN.Tool.Scripts.ToolClient)

local HPDBMVAukbRD = LDWmIPgEUyy.updateServerCharacterRotation
local HqiPmPhDy = gIRxxjgNlf.updateServerCharacterRotation


local function pZiIlfKACAUK()
    local llMHnyrdyz = {
        math.rad(-89),
        math.rad(89),
        math.rad(-70),
        math.rad(70),
        math.rad(-45),
        math.rad(45)
    }
    return llMHnyrdyz[math.random(1, #llMHnyrdyz)]
end

local iUjYuDFQhb = {
    -89, 
     89, 
    -70,
     70,
    -45,
     45
}

local mAMIjfRqgrdS = hYObRRfN.Tool.Remotes


local function DQDylVLzBBfF(PypkHNpYF, ...)
    if not xCzLyilOyXe then
        return HPDBMVAukbRD(PypkHNpYF, ...)
    end

    local sxUemtEVpsfN = vdmlnNdl.CFrame

    local eTdWGJcdtFR =
        CFrame.new(sxUemtEVpsfN.Position)
        * CFrame.Angles(pZiIlfKACAUK(), 0, 0)

    vdmlnNdl.CFrame = eTdWGJcdtFR
    local DGLlFuqP = HPDBMVAukbRD(PypkHNpYF, ...)
    vdmlnNdl.CFrame = sxUemtEVpsfN

    return DGLlFuqP
end

local function GDMJouODuE(PypkHNpYF)
    if not xCzLyilOyXe or not PypkHNpYF or not PypkHNpYF.Id then
        return HqiPmPhDy(PypkHNpYF)
    end

    local RCZVWkJL = math.rad(iUjYuDFQhb[math.random(1, #iUjYuDFQhb)])

    local DLZdQDzFSHZ = buffer.create(8)
    buffer.writeu32(DLZdQDzFSHZ, 0, PypkHNpYF.Id)
    buffer.writef32(DLZdQDzFSHZ, 4, RCZVWkJL)

    mAMIjfRqgrdS.UpdateCharacterRotation:FireServer(DLZdQDzFSHZ)
end

function EnableFakePitch()
    if SoOLyizUijMH then return end
    SoOLyizUijMH = true
    xCzLyilOyXe = true

    LDWmIPgEUyy.updateServerCharacterRotation = DQDylVLzBBfF
    gIRxxjgNlf.updateServerCharacterRotation = GDMJouODuE
end

function DisableFakePitch()
    if not SoOLyizUijMH then return end
    SoOLyizUijMH = false
    xCzLyilOyXe = false

    LDWmIPgEUyy.updateServerCharacterRotation = HPDBMVAukbRD
    gIRxxjgNlf.updateServerCharacterRotation = HqiPmPhDy
end




FxZPgFdT = require(hYObRRfN.Gun.Scripts.GunBase)

originalcanFire = FxZPgFdT.canFire
originalfire = FxZPgFdT.fire

nlNCMUvncLiY = false

--////// RELOAD INDICATOR
do
    local gyNByhnbUDW = QajQeTLyeF.new("ScreenGui")
    gyNByhnbUDW.Name = "ReloadIndicator"
    gyNByhnbUDW.ResetOnSpawn = false
    gyNByhnbUDW.IgnoreGuiInset = true
    gyNByhnbUDW.DisplayOrder = 998
    gyNByhnbUDW.Parent = gethui and gethui() or game:GetService("CoreGui")

    local tzpgIjLnU = QajQeTLyeF.new("Frame")
    tzpgIjLnU.Name = "ReloadHolder"
    tzpgIjLnU.AnchorPoint = Vector2.new(0.5, 1)
    tzpgIjLnU.Position = UDim2.new(0.5, 0, 1, -80)
    tzpgIjLnU.Size = UDim2.new(0, 160, 0, 16)
    tzpgIjLnU.BackgroundTransparency = 1
    tzpgIjLnU.Visible = false
    tzpgIjLnU.Parent = gyNByhnbUDW

    --//// background track
    local lluckVbBQXVr = QajQeTLyeF.new("Frame")
    lluckVbBQXVr.Size = UDim2.new(1, 0, 0, 6)
    lluckVbBQXVr.Position = UDim2.new(0, 0, 0.5, -3)
    lluckVbBQXVr.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    lluckVbBQXVr.BorderSizePixel = 0
    lluckVbBQXVr.Parent = tzpgIjLnU
    local DnyykfLrd = QajQeTLyeF.new("UICorner"); DnyykfLrd.CornerRadius = UDim.new(1,0); DnyykfLrd.Parent = lluckVbBQXVr
    local HuTAmmwccgB = QajQeTLyeF.new("UIStroke"); HuTAmmwccgB.Color = Color3.fromRGB(0,0,0); HuTAmmwccgB.Thickness = 1; HuTAmmwccgB.Parent = lluckVbBQXVr

    --//// fill bar
    local gUaSgKXtTOn = QajQeTLyeF.new("Frame")
    gUaSgKXtTOn.Size = UDim2.new(0, 0, 1, 0)
    gUaSgKXtTOn.BackgroundColor3 = Color3.fromRGB(255, 200, 50)
    gUaSgKXtTOn.BorderSizePixel = 0
    gUaSgKXtTOn.Parent = lluckVbBQXVr
    local nfyyKKCVNG = QajQeTLyeF.new("UICorner"); nfyyKKCVNG.CornerRadius = UDim.new(1,0); nfyyKKCVNG.Parent = gUaSgKXtTOn

    --//// label removed, bar only

    --//// state
    local SGSifmyh = 0
    local gnUwhDvuRUtK = 0
    local gXtMgikxWh = false
    local gMXXiNjdKgs = 0
    local ELaFGVnRSt = false  --//// true if the hook fired this reload (blocks fallback poll)

    --//// hook GunBase reload methods
    local function POhjEWKAhtB(cueXgKtW)
        local lzaciJbwoP = cueXgKtW.reload or cueXgKtW.Reload or cueXgKtW.startReload or cueXgKtW.beginReload
        if not lzaciJbwoP then return end
        local nmqGAdGg = cueXgKtW.reload and "reload" or cueXgKtW.Reload and "Reload" or cueXgKtW.startReload and "startReload" or "beginReload"
        local LZxBJiKE = cueXgKtW[nmqGAdGg]
        cueXgKtW[nmqGAdGg] = function(PypkHNpYF, ...)
            --//// try to read reload time from self
            local PCMGULyJBA = xQtxUXtvoCv(PypkHNpYF, "ReloadTime") or xQtxUXtvoCv(PypkHNpYF, "ReloadDuration")
                     or xQtxUXtvoCv(PypkHNpYF, "reload_time") or xQtxUXtvoCv(PypkHNpYF, "reloadTime") or 2
            SGSifmyh    = tick()
            gnUwhDvuRUtK = PCMGULyJBA
            gXtMgikxWh    = true
            ELaFGVnRSt = true
            local DGLlFuqP = LZxBJiKE(PypkHNpYF, ...)
            return DGLlFuqP
        end
    end
    CnNOmZmbEvte(POhjEWKAhtB, FxZPgFdT)

    --// render on heartbeat
    kViDmXEEMSQC.Heartbeat:Connect(function()
        if not EnziqNRwERb["ReloadIndicator"] then
            tzpgIjLnU.Visible = false
            return
        end

        if gXtMgikxWh then
            local VnvpxuVh = tick() - SGSifmyh
            local aPouEUeFTTt = math.clamp(VnvpxuVh / math.max(gnUwhDvuRUtK, 0.01), 0, 1)

            --// auto-stop when done
            if aPouEUeFTTt >= 1 then
                gXtMgikxWh = false
                ELaFGVnRSt = false
                gMXXiNjdKgs = tick()
                tzpgIjLnU.Visible = false
                return
            end

            tzpgIjLnU.Visible = true
            gUaSgKXtTOn.Size = UDim2.new(aPouEUeFTTt, 0, 1, 0)

            --// color shifts yellow -> green as it fills
            gUaSgKXtTOn.BackgroundColor3 = Color3.fromRGB(
                math.floor(255 * (1 - aPouEUeFTTt) + 0.5),
                math.floor(180 + 75 * aPouEUeFTTt + 0.5),
                50
            )
        else
            tzpgIjLnU.Visible = false
        end
    end)

    --// expose _gunCache reference for the fallback poll above
    --// (set after gun cache do-block runs, so we use a late-bind via getgenv)
    getgenv()._reloadGetCache = function() return _gunCache end
end

function applyHooks()
	if nlNCMUvncLiY then return end
	nlNCMUvncLiY = true
	FxZPgFdT.canFire = function(PypkHNpYF)
		if EnziqNRwERb["ForceShoot"] then
			return true
		end
		return originalcanFire(PypkHNpYF)
	end
end

function removeHooks()
	if not nlNCMUvncLiY then return end
	nlNCMUvncLiY = false
	FxZPgFdT.canFire = originalcanFire
end

--// Gun Mods: rapid fire / full auto
local function ZtlbTEbEGFKR()
    if _isScanning then return end
    _isScanning = true
    
    task.spawn(function()
        _gunCache = {}
        _meleeCache = {}
        
        -- Single getgc loop for both to prevent game freezing
        for _, v in YjeanuOKx(getgc(true)) do
            if type(v) == "table" then
                if xQtxUXtvoCv(v, "FireDelay") ~= nil and xQtxUXtvoCv(v, "FiringOnCooldown") ~= nil and xQtxUXtvoCv(v, "OwnerPlayer") ~= nil then
                    table.insert(_gunCache, v)
                end
                
                if xQtxUXtvoCv(v, "UseDelay") ~= nil and xQtxUXtvoCv(v, "Range") ~= nil and xQtxUXtvoCv(v, "UsingOnCooldown") ~= nil and xQtxUXtvoCv(v, "Destroyed") ~= true then
                    table.insert(_meleeCache, v)
                end
            end
        end
        
        _cachesBuilt = true
        _isScanning = false
    end)
end

local ZWLWRKWS = {}
local djzcHDtFbOsl = {}

local function SlJOKWuKAPo()
    if not _cachesBuilt then return end
    
    if EnziqNRwERb["gun firerate"] == true or EnziqNRwERb["gun auto"] == true then
        local MBpueHvT = EnziqNRwERb["rapid fire speed"] or 3
        for _, v in uofVwpDUZ(_gunCache) do
            CnNOmZmbEvte(function()
                local cueXgKtW = ZWLWRKWS[v] or xQtxUXtvoCv(v, "FireDelay") or 0.2
                ZWLWRKWS[v] = cueXgKtW
                if EnziqNRwERb["gun firerate"] == true then
                    local zMQWbFpljrZy = cueXgKtW / MBpueHvT
                    lqXJCXnZN(v, "FireDelay", zMQWbFpljrZy)
                    if xQtxUXtvoCv(v, "FireRate") ~= nil then
                        lqXJCXnZN(v, "FireRate", math.floor(1 / zMQWbFpljrZy))
                    end
                    lqXJCXnZN(v, "FiringOnCooldown", false)
                end
                if EnziqNRwERb["gun auto"] == true then
                    if xQtxUXtvoCv(v, "FiringType") ~= nil then lqXJCXnZN(v, "FiringType", 2) end
                    if xQtxUXtvoCv(v, "FireMode") ~= nil then lqXJCXnZN(v, "FireMode", "Auto") end
                    if xQtxUXtvoCv(v, "Auto") ~= nil then lqXJCXnZN(v, "Auto", true) end
                end
            end)
        end
    end

    if EnziqNRwERb["MeleeMods"] then        local MBpueHvT = EnziqNRwERb["MeleeSwingSpeed"] or 3
        local IxoTwGWuD = EnziqNRwERb["MeleeSwingRange"] or 5
        for _, v in uofVwpDUZ(_meleeCache) do
            CnNOmZmbEvte(function()
                if xQtxUXtvoCv(v, "Destroyed") == true then return end
                local cueXgKtW = djzcHDtFbOsl[v] or xQtxUXtvoCv(v, "UseDelay") or 0.5
                djzcHDtFbOsl[v] = cueXgKtW
                local zMQWbFpljrZy = cueXgKtW / MBpueHvT
                lqXJCXnZN(v, "UseDelay", zMQWbFpljrZy)
                lqXJCXnZN(v, "UseTime", zMQWbFpljrZy)
                lqXJCXnZN(v, "Range", IxoTwGWuD)
                lqXJCXnZN(v, "CharacterRange", IxoTwGWuD)
                lqXJCXnZN(v, "UsingOnCooldown", false)
            end)
        end
    end
end

local function DbGMFJsISF(oSjnjdBXU)
    -- Trigger on Equip
    oSjnjdBXU.ChildAdded:Connect(function(child)
        if child:IsA("Tool") then
            task.wait(0.1)
            ZtlbTEbEGFKR()
        end
    end)
end

-- Trigger on Rejoin
if DXWugHbKILJ.Character then
    DbGMFJsISF(DXWugHbKILJ.Character)
    ZtlbTEbEGFKR()
end

-- Trigger on Die and Respawn
DXWugHbKILJ.CharacterAdded:Connect(function(oSjnjdBXU)
    _cachesBuilt = false
    DbGMFJsISF(oSjnjdBXU)
    ZtlbTEbEGFKR()
end)

-- Trigger on Teleport
DXWugHbKILJ.OnTeleport:Connect(function()
   _cachesBuilt = false 
end)

-- Apply on Heartbeat
kViDmXEEMSQC.Heartbeat:Connect(SlJOKWuKAPo)

getgenv()._reloadGetCache = function() return _gunCache end

--// GunBase.fire hook: ForceShoot + silent aim distance bypass via Raycast redirect
do
    local MggdLYuIf = FxZPgFdT.fire

    FxZPgFdT.fire = function(PypkHNpYF, ...)
        if EnziqNRwERb["ForceShoot"] then
            PypkHNpYF.FiringOnCooldown = false
        end

        if getgenv().silent and mZVDeZgI then
            local nAGThFqlpH = {...}
            local iEgtdRXZti = false

            for i, v in uofVwpDUZ(nAGThFqlpH) do
                if typeof(v) == "Vector3" and not iEgtdRXZti then
                    local DiYOeWizQKq =
                        TPwMvSZSYKvg.Globals.ManipulationPosition
                        or (mZVDeZgI.Position + Vector3.new(0, 1.5, 0))

                    nAGThFqlpH[i] = DiYOeWizQKq
                    iEgtdRXZti = true

                elseif typeof(v) == "buffer" and not iEgtdRXZti then
                    local DiYOeWizQKq =
                        TPwMvSZSYKvg.Globals.ManipulationPosition
                        or (mZVDeZgI.Position + Vector3.new(0, 1.5, 0))

                    CnNOmZmbEvte(function()
                        buffer.writef32(v, 4,  DiYOeWizQKq.X)
                        buffer.writef32(v, 8,  DiYOeWizQKq.Y)
                        buffer.writef32(v, 12, DiYOeWizQKq.Z)
                    end)

                    iEgtdRXZti = true
                end
            end

            if iEgtdRXZti then
                return MggdLYuIf(PypkHNpYF, table.unpack(nAGThFqlpH))
            end
        end

        return MggdLYuIf(PypkHNpYF, ...)
    end
end

--// manipulation hook removed

Settings = {Hemp= {Enabled= false,
        Color = Color3.fromRGB(0, 255, 0),
        MaxDistance = 300
    },

    iron = {Enabled= false,
        Color = Color3.fromRGB(200, 200, 200),
        MaxDistance = 500
    },

    stone = {Enabled= false,
        Color = Color3.fromRGB(150, 150, 150),
        MaxDistance = 450
    },

    sulfur = {Enabled= false,
        Color = Color3.fromRGB(255, 200, 0),
        MaxDistance = 400
    }
}

local wSruTIdIoR = {Visuals= {PlayerArmorInfoWindow= false
    }
}

--//// STAFF LIST MODULE

local TJnVeYuUAIOs = nil --// exposed for toggle

do
    local JqgAMBNSvOP = game:GetService("Players")
    local ykEkxWDhu = JqgAMBNSvOP.LocalPlayer
    local BfBhbpNYb = game:GetService("TextService")

    local RBWHvvxvoHgQ = 15631191
    local NZxgIUopJEPp = {Admin= true, ["Admin+"] = true, Bob = true }
    local atTuzerOg = {}
    local lSUPBkFvuB = {}

    local kwOLwEoaU = QajQeTLyeF.new("Frame")
    kwOLwEoaU.Name = "AdminList"
    kwOLwEoaU.Parent = PYMBJvUCOh.Holder.Instance
    kwOLwEoaU.AnchorPoint = Vector2.new(0, 0.5)
    kwOLwEoaU.Position = UDim2.new(0, 12, 0.5, 105) 
    kwOLwEoaU.Size = UDim2.new(0, 116, 0, 32)
    kwOLwEoaU.BackgroundColor3 = PYMBJvUCOh.Theme["Background 2"] or PYMBJvUCOh.Theme.Background
    kwOLwEoaU.BorderColor3 = Color3.fromRGB(0, 0, 0)
    kwOLwEoaU.BorderSizePixel = 0
    kwOLwEoaU.Visible = false  --// hidden by default, toggled via UI
    TJnVeYuUAIOs = kwOLwEoaU
    
    local uUWXDPoCs = false
    local LDcTaVfSnY, vIaXMidTy
    
    kwOLwEoaU.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            uUWXDPoCs = true
            LDcTaVfSnY = input.Position
            vIaXMidTy = kwOLwEoaU.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    uUWXDPoCs = false
                end
            end)
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if uUWXDPoCs and input.UserInputType == Enum.UserInputType.MouseMovement then
            local ycFgYxcLnyM = input.Position - LDcTaVfSnY
            kwOLwEoaU.Position = UDim2.new(vIaXMidTy.X.Scale, vIaXMidTy.X.Offset + ycFgYxcLnyM.X, vIaXMidTy.Y.Scale, vIaXMidTy.Y.Offset + ycFgYxcLnyM.Y)
        end
    end)
    
    local tHGdUDyEiVJ = QajQeTLyeF.new("Frame")
    tHGdUDyEiVJ.Parent = kwOLwEoaU
    tHGdUDyEiVJ.Position = UDim2.new(0, -9, 0, -9)
    tHGdUDyEiVJ.Size = UDim2.new(1, 18, 0, 2)
    tHGdUDyEiVJ.BorderSizePixel = 0
    tHGdUDyEiVJ.BackgroundColor3 = PYMBJvUCOh.Theme.Accent
    
    local NUoyYGHpVI = QajQeTLyeF.new("ImageLabel")
    NUoyYGHpVI.Parent = tHGdUDyEiVJ
    NUoyYGHpVI.ImageColor3 = PYMBJvUCOh.Theme.Accent
    NUoyYGHpVI.ScaleType = Enum.ScaleType.Slice
    NUoyYGHpVI.ImageTransparency = 0.5
    NUoyYGHpVI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NUoyYGHpVI.BackgroundColor3 = PYMBJvUCOh.Theme.Accent
    NUoyYGHpVI.Size = UDim2.new(0, 113, 1, 8)
    NUoyYGHpVI.AnchorPoint = Vector2.new(0.5, 0.5)
    NUoyYGHpVI.Image = "rbxassetid://18245826428"
    NUoyYGHpVI.BackgroundTransparency = 1
    NUoyYGHpVI.Position = UDim2.new(0.5, 0, 0.5, 0)
    NUoyYGHpVI.ZIndex = 2
    NUoyYGHpVI.BorderSizePixel = 0
    NUoyYGHpVI.SliceCenter = Rect.new(Vector2.new(21, 21), Vector2.new(79, 79))
    
    local NoscVarDTBtj = QajQeTLyeF.new("TextLabel")
    NoscVarDTBtj.Parent = kwOLwEoaU
    NoscVarDTBtj.FontFace = PYMBJvUCOh.Font
    NoscVarDTBtj.TextColor3 = PYMBJvUCOh.Theme.Text
    NoscVarDTBtj.Text = "Admin Online"
    NoscVarDTBtj.Size = UDim2.new(0, 0, 0, 15)
    NoscVarDTBtj.BackgroundTransparency = 1
    NoscVarDTBtj.BorderSizePixel = 0
    NoscVarDTBtj.TextXAlignment = Enum.TextXAlignment.Left
    NoscVarDTBtj.AutomaticSize = Enum.AutomaticSize.X
    NoscVarDTBtj.TextSize = 14
    
    local lCUTYQmQsNEU = QajQeTLyeF.new("Frame")
    lCUTYQmQsNEU.Parent = kwOLwEoaU
    lCUTYQmQsNEU.Position = UDim2.new(0, 0, 0, 21)
    lCUTYQmQsNEU.Size = UDim2.new(1, 0, 0, 1)
    lCUTYQmQsNEU.BorderSizePixel = 0
    lCUTYQmQsNEU.BackgroundColor3 = PYMBJvUCOh.Theme.Border
    
    local prUzSDkNrv = QajQeTLyeF.new("Frame")
    prUzSDkNrv.Parent = kwOLwEoaU
    prUzSDkNrv.BackgroundTransparency = 1
    prUzSDkNrv.Position = UDim2.new(0, 0, 0, 28)
    prUzSDkNrv.Size = UDim2.new(1, 0, 0, 0)
    prUzSDkNrv.AutomaticSize = Enum.AutomaticSize.Y
    
    local asvMsjMDc = QajQeTLyeF.new("UIListLayout")
    asvMsjMDc.SortOrder = Enum.SortOrder.LayoutOrder
    asvMsjMDc.Padding = UDim.new(0, 4)
    asvMsjMDc.Parent = prUzSDkNrv
    
    local JLfWsnIL = QajQeTLyeF.new("UIPadding")
    JLfWsnIL.PaddingTop = UDim.new(0, 9)
    JLfWsnIL.PaddingBottom = UDim.new(0, 18)
    JLfWsnIL.PaddingRight = UDim.new(0, 9)
    JLfWsnIL.PaddingLeft = UDim.new(0, 9)
    JLfWsnIL.Parent = kwOLwEoaU
    
    local lDTGAWdRmegK = QajQeTLyeF.new("UIStroke")
    lDTGAWdRmegK.Color = PYMBJvUCOh.Theme.Border
    lDTGAWdRmegK.Thickness = 1
    lDTGAWdRmegK.LineJoinMode = Enum.LineJoinMode.Miter
    lDTGAWdRmegK.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    lDTGAWdRmegK.Parent = kwOLwEoaU
    
    local SvHkTsMqAfXD = QajQeTLyeF.new("TextLabel")
    SvHkTsMqAfXD.Parent = prUzSDkNrv
    SvHkTsMqAfXD.FontFace = PYMBJvUCOh.Font
    SvHkTsMqAfXD.TextColor3 = PYMBJvUCOh.Theme.Text
    SvHkTsMqAfXD.Text = "0 admin online"
    SvHkTsMqAfXD.BackgroundTransparency = 1
    SvHkTsMqAfXD.Size = UDim2.new(0, 0, 0, 15)
    SvHkTsMqAfXD.AutomaticSize = Enum.AutomaticSize.X
    SvHkTsMqAfXD.TextSize = 14
    SvHkTsMqAfXD.TextTransparency = 0.4
    
    local function oMVmLzVuy(pSEhPXmu, natRsroaqZ)
        local gABBQlkFhqyo = QajQeTLyeF.new("TextLabel")
        gABBQlkFhqyo.Parent = prUzSDkNrv
        gABBQlkFhqyo.FontFace = PYMBJvUCOh.Font
        gABBQlkFhqyo.TextColor3 = PYMBJvUCOh.Theme.Text
        gABBQlkFhqyo.Text = pSEhPXmu.Name .. " [" .. natRsroaqZ .. "]"
        gABBQlkFhqyo.BackgroundTransparency = 1
        gABBQlkFhqyo.Size = UDim2.new(0, 0, 0, 15)
        gABBQlkFhqyo.AutomaticSize = Enum.AutomaticSize.X
        gABBQlkFhqyo.TextSize = 14
        gABBQlkFhqyo.TextTransparency = 0.4
        
        return gABBQlkFhqyo
    end
    
    local function aRpidCQS(PJsABlOJQZ)
        local MTjjQAas, GGmizlMUjX = CnNOmZmbEvte(function() return BfBhbpNYb:GetTextSize(PJsABlOJQZ, 14, PYMBJvUCOh.Font, Vector2.new(1000, 1000)) end)
        if MTjjQAas then return GGmizlMUjX.X end
        return 116
    end

    local function yXLlnXLPxrez()
        local xXGFEuEk = 0
        for _ in YjeanuOKx(atTuzerOg) do xXGFEuEk = xXGFEuEk + 1 end
        
        SvHkTsMqAfXD.Visible = (xXGFEuEk == 0)
        
        local prgUgBfYK = math.max(aRpidCQS(NoscVarDTBtj.Text), aRpidCQS(SvHkTsMqAfXD.Text))
        for _, gABBQlkFhqyo in YjeanuOKx(lSUPBkFvuB) do
            prgUgBfYK = math.max(prgUgBfYK, aRpidCQS(gABBQlkFhqyo.Text))
        end
        local PhjmhOvs = prgUgBfYK + 18  --// 9px padding each side
        
        local BlgSdnEzxMiU
        if xXGFEuEk == 0 then
            BlgSdnEzxMiU = 15  --// status label height
        else
            BlgSdnEzxMiU = (xXGFEuEk * 19) - 4  --// rows minus final gap
        end
        local znSHPBeTMc = 28 + BlgSdnEzxMiU + 22  --// content offset + content + bottom padding
        kwOLwEoaU.Size = UDim2.new(0, PhjmhOvs, 0, znSHPBeTMc)
    end
    
    local function UZTTJgTqxr(p)
        if p == ykEkxWDhu then return end
        local OxqeXFtBCf, natRsroaqZ = CnNOmZmbEvte(function() return p:GetRoleInGroup(RBWHvvxvoHgQ) end)
        if OxqeXFtBCf and NZxgIUopJEPp[natRsroaqZ] then
            if not atTuzerOg[p] then
                atTuzerOg[p] = natRsroaqZ
                local gABBQlkFhqyo = oMVmLzVuy(p, natRsroaqZ)
                lSUPBkFvuB[p] = gABBQlkFhqyo
                yXLlnXLPxrez()
            end
        end
    end
    
    local function AfMOGjFU(p)
        if atTuzerOg[p] then
            atTuzerOg[p] = nil
            if lSUPBkFvuB[p] then
                lSUPBkFvuB[p]:Destroy()
                lSUPBkFvuB[p] = nil
            end
            yXLlnXLPxrez()
        end
    end
    
    for _, p in uofVwpDUZ(JqgAMBNSvOP:GetPlayers()) do
        task.spawn(UZTTJgTqxr, p)
    end
    
    JqgAMBNSvOP.PlayerAdded:Connect(UZTTJgTqxr)
    JqgAMBNSvOP.PlayerRemoving:Connect(AfMOGjFU)
    
    yXLlnXLPxrez()
end

gigaesp = false

ESP_FOLDER = QajQeTLyeF.new("Folder")
ESP_FOLDER.Name = "ExplosionESP"
ESP_FOLDER.Parent = game:GetService("CoreGui")

explosion_cache = {}

LIFETIME = 20

function createESP(explosion)
	if explosion_cache[explosion] then return end
    if not EnziqNRwERb["BoomNigar"] then return end
	local rrdyXLxLu = QajQeTLyeF.new("Part")
	rrdyXLxLu.Size = Vector3.new(0.1, 0.1, 0.1)
	rrdyXLxLu.Anchored = true
	rrdyXLxLu.CanCollide = false
	rrdyXLxLu.Transparency = 1
	rrdyXLxLu.Name = "ExplosionAnchor"
	rrdyXLxLu.CFrame = CFrame.new(explosion.Position)
	rrdyXLxLu.Parent = apAMQyQhUl

	local rFmIMkGrRo = QajQeTLyeF.new("BillboardGui")
	rFmIMkGrRo.AlwaysOnTop = true
	rFmIMkGrRo.Size = UDim2.fromOffset(120, 40)
	rFmIMkGrRo.Adornee = rrdyXLxLu
	rFmIMkGrRo.Parent = ESP_FOLDER

	local gABBQlkFhqyo = QajQeTLyeF.new("TextLabel")
	gABBQlkFhqyo.Size = UDim2.fromScale(1, 1)
	gABBQlkFhqyo.BackgroundTransparency = 1
	gABBQlkFhqyo.TextStrokeTransparency = 0
	gABBQlkFhqyo.Font = Enum.Font.SourceSansBold
	gABBQlkFhqyo.TextScaled = true
	gABBQlkFhqyo.TextColor3 = EnziqNRwERb["giganigacolar"].Color
	gABBQlkFhqyo.Parent = rFmIMkGrRo

	local jjjUbkGut = tick()

	local AYNGYFppAy
	AYNGYFppAy = kViDmXEEMSQC.RenderStepped:Connect(function()
		if tick() - jjjUbkGut >= LIFETIME then
			AYNGYFppAy:Disconnect()
			rFmIMkGrRo:Destroy()
			rrdyXLxLu:Destroy()
			explosion_cache[explosion] = nil
			return
		end

		local oSjnjdBXU = DXWugHbKILJ.Character
		local eQaaJKzsri = oSjnjdBXU and oSjnjdBXU:FindFirstChild("HumanoidRootPart")
		if eQaaJKzsri then
			gABBQlkFhqyo.Text = ("Explosion\n%dm"):format(
				(eQaaJKzsri.Position - rrdyXLxLu.Position).Magnitude
			)
		end
	end)

	explosion_cache[explosion] = true
end

apAMQyQhUl.DescendantAdded:Connect(function(ygDhqLRyA)
	if ygDhqLRyA:IsA("Explosion") then
		createESP(ygDhqLRyA)
	end
end)

for _, ygDhqLRyA in uofVwpDUZ(apAMQyQhUl:GetDescendants()) do
	if ygDhqLRyA:IsA("Explosion") then
		createESP(ygDhqLRyA)
	end
end


--// no footsteps ass
local SAWFlisaeft = {Enabled= false,
    OldVolumes = setmetatable({}, {__mode= "k" })
}

function SAWFlisaeft:MuteSound(sound)
    if not PypkHNpYF.Enabled then return end
    if not sound:IsA("Sound") then return end

    if PypkHNpYF.OldVolumes[sound] == nil then
        PypkHNpYF.OldVolumes[sound] = sound.Volume
    end

    sound.Volume = 0
    sound:Stop()
end

function SAWFlisaeft:MuteFootstepFolder()
    if not PypkHNpYF.Enabled then return end

    local IZECiIAmlwpS = hakkyTINia:FindFirstChild("FootstepSounds")
    if not IZECiIAmlwpS then return end

    for _, obj in uofVwpDUZ(IZECiIAmlwpS:GetDescendants()) do
        if obj:IsA("Sound") then
            PypkHNpYF:MuteSound(obj)
        end
    end
end

function SAWFlisaeft:MuteCharacter(oSjnjdBXU)
    if not PypkHNpYF.Enabled then return end

    local fzxvzIUrABxr = oSjnjdBXU:FindFirstChild("HumanoidRootPart")
    if not fzxvzIUrABxr then return end

    for _, obj in uofVwpDUZ(fzxvzIUrABxr:GetChildren()) do
        if obj:IsA("Sound") then
            PypkHNpYF:MuteSound(obj)
        end
    end
end

function SAWFlisaeft:Set(LkPCtYFxbPkq)
    PypkHNpYF.Enabled = LkPCtYFxbPkq == true

    if PypkHNpYF.Enabled then
        PypkHNpYF:MuteFootstepFolder()

        if DXWugHbKILJ.Character then
            PypkHNpYF:MuteCharacter(DXWugHbKILJ.Character)
        end
    else
        for sound, oldVolume in YjeanuOKx(PypkHNpYF.OldVolumes) do
            if sound and sound.Parent and sound:IsA("Sound") then
                sound.Volume = oldVolume
            end
        end

        table.clear(PypkHNpYF.OldVolumes)
    end
end

kViDmXEEMSQC.Heartbeat:Connect(function()
    if not SAWFlisaeft.Enabled then return end

    SAWFlisaeft:MuteFootstepFolder()

    if DXWugHbKILJ.Character then
        SAWFlisaeft:MuteCharacter(DXWugHbKILJ.Character)
    end
end)

DXWugHbKILJ.CharacterAdded:Connect(function(oSjnjdBXU)
    task.wait(1)
    SAWFlisaeft:MuteCharacter(oSjnjdBXU)
end)

dodido = false

nigarzzz = nil

--// ZonePlus hookmetamethod REMOVED

--// ESP START
local ABtCAHkeOdTQ = {instances= {},
    espCache = {},
    chamsCache = {},
    objectCache = {},
    conns = {},
    whitelist = {}, 
    blacklist = {}, 
    options = {enabled= false,
        minScaleFactorX = 1,
        maxScaleFactorX = 10,
        minScaleFactorY = 1,
        maxScaleFactorY = 10,
        scaleFactorX = 5,
        scaleFactorY = 6,
        boundingBox = false, 
        boundingBoxDescending = false,
        excludedPartNames = {},
        font = 2,
        fontSize = 13,
        limitDistance = false,
        maxDistance = 1000,
        visibleOnly = false,
        teamCheck = false,
        teamColor = false,
        useCustomTeamColor = false,
        customteamColor = Color3.new(1,1,1),
        fillColor = nil,
        whitelistColor = Color3.new(1, 0, 0),
        outOfViewArrows = false,
        outOfViewArrowsFilled = false,
        outOfViewArrowsSize = 25,
        outOfViewArrowsRadius = 100,
        outOfViewArrowsColor = Color3.new(1, 1, 1),
        outOfViewArrowsTransparency = 0.5,
        outOfViewArrowsOutline = false,
        outOfViewArrowsOutlineFilled = false,
        outOfViewArrowsOutlineColor = Color3.new(1, 1, 1),
        outOfViewArrowsOutlineTransparency = 1,
        names = false,
        nameTransparency = 1,
        nameColor = Color3.new(1, 1, 1),
        boxes = false,
        boxesTransparency = 1,
        boxesColor = Color3.new(1, 0, 0),
        boxFill = false,
        boxFillTransparency = 0.5,
        boxFillColor = Color3.new(1, 0, 0),
        healthBars = false,
        healthBarsSize = 1,
        healthBarsTransparency = 1,
        healthBarsColor = Color3.new(0, 1, 0),
        healthText = false,
        healthTextTransparency = 1,
        healthTextSuffix = "",
        healthTextColor = Color3.new(1, 1, 1),
        distance = false,
        distanceTransparency = 1,
        distanceSuffix = "m",
        distanceColor = Color3.new(1, 1, 1),
        tool = false,
        toolTransparency = 1,
        toolColor = Color3.new(1,1,1),
        tracers = false,
        tracerTransparency = 1,
        tracerColor = Color3.new(1, 1, 1),
        tracerOrigin = "Bottom", 
        chams = false,
        chamsFillColor = Color3.new(1, 0, 0),
        chamsFillTransparency = 0.5,
        chamsOutlineColor = Color3.new(),
        chamsOutlineTransparency = 0,
    },
};
ABtCAHkeOdTQ.__index = ABtCAHkeOdTQ;

local RahkfvHunKd = game.GetService;
local QmgxcfAkxxSy = QajQeTLyeF.new;
local lmGiGhUOkuP = Drawing.new;
local rFaOjynGoW = Vector2.new;
local JCnEFvdkRbk = Vector3.new;
local WePiKViGikcY = CFrame.new;
local AoUKqDTT = Color3.new;
local guPmpZZFiJPh = RaycastParams.new;
local HRdDVZcK = math.abs;
local WquQjxtgBRv = math.tan;
local JsFiZyYjJx = math.rad;
local QqDHaiAcoc = math.clamp;
local yQPaPbDQNvZb = math.floor;
local QcxhttKFup = table.find;
local DAOxusZhf = table.insert;
local oXLFkrRYxe = game.FindFirstChild;
local hsBjQMpUd = game.FindFirstChildOfClass;
local iLKVBWvWOPLr = game.GetChildren;
local xCrXhuMiQQJf = game.GetDescendants;
local EkIALRlCBiuy = apAMQyQhUl.IsA;
local UneifSHvkt = apAMQyQhUl.Raycast;
local yMtUUxoPPHbp = WePiKViGikcY();
local wkuUSdubv = yMtUUxoPPHbp.PointToObjectSpace;
local pUeVjJeyYSRG = yMtUUxoPPHbp.GetComponents;
local BukNkYIEvwno = JCnEFvdkRbk().Cross;
local DGPhGdlqH = 1 / 0;

local apAMQyQhUl = RahkfvHunKd(game, "Workspace");
local CHErkXXqVc = RahkfvHunKd(game, "RunService");
local adyftbHws = RahkfvHunKd(game, "Players");
local rdmjwxIvB = RahkfvHunKd(game, "CoreGui");
userInputService = RahkfvHunKd(game, "UserInputService");

currentCamera = apAMQyQhUl.CurrentCamera;
IEsOFFDBr = adyftbHws.LocalPlayer;
screenGui = QmgxcfAkxxSy("ScreenGui", rdmjwxIvB);
local ASdrSOfKJios, uabbvndRA;

local PHHQEyNKtt = currentCamera.WorldToViewportPoint;

function isDrawing(type)
    return type == "Square" or type == "Text" or type == "Triangle" or type == "Image" or type == "Line" or type == "Circle";
end

function oMVmLzVuy(type, properties)
    local xcexqnTwAJw = isDrawing(type);
    local TLhTPmEwtdic = xcexqnTwAJw and lmGiGhUOkuP(type) or QmgxcfAkxxSy(type);

    if (properties) then
        for i,v in HiBdrOXRWuln, properties do
            TLhTPmEwtdic[i] = v;
        end
    end

    if (not xcexqnTwAJw) then
        DAOxusZhf(ABtCAHkeOdTQ.instances, TLhTPmEwtdic);
    end

    return TLhTPmEwtdic;
end

function worldToViewportPoint(hwycdSVjDES)
    local fglyyuOcaJOS, ySZSOiLBArG = PHHQEyNKtt(currentCamera, hwycdSVjDES);
    return rFaOjynGoW(fglyyuOcaJOS.X, fglyyuOcaJOS.Y), ySZSOiLBArG, fglyyuOcaJOS.Z;
end

function round(number)
    return typeof(number) == "Vector2" and rFaOjynGoW(round(number.X), round(number.Y)) or yQPaPbDQNvZb(number);
end

function ABtCAHkeOdTQ.getTeam(pSEhPXmu)
    local jmlyPyaiC = pSEhPXmu.Team;
    return jmlyPyaiC, pSEhPXmu.TeamColor.Color;
end

function ABtCAHkeOdTQ.getCharacter(pSEhPXmu)
    local MFXailgzVUGA = pSEhPXmu.Character
    if not MFXailgzVUGA then return nil, nil end
    
    local lsVZCLtKTZk = MFXailgzVUGA:FindFirstChild("HumanoidRootPart")
    
    if not lsVZCLtKTZk then
        lsVZCLtKTZk = MFXailgzVUGA:FindFirstChild("UpperTorso")
    end
    
    if not lsVZCLtKTZk then
        lsVZCLtKTZk = MFXailgzVUGA:FindFirstChild("Torso")
    end
    
    return MFXailgzVUGA, lsVZCLtKTZk
end

function ABtCAHkeOdTQ.getTool(pSEhPXmu)
    local MFXailgzVUGA = pSEhPXmu.Character;
    if not MFXailgzVUGA then return "None" end
    
    local jicRtGVUj = hsBjQMpUd(MFXailgzVUGA, "Tool")
    return jicRtGVUj and EJJFGJzBaV(jicRtGVUj) or "None"
end

function ABtCAHkeOdTQ.getBoundingBox(MFXailgzVUGA, lsVZCLtKTZk)
    if (ABtCAHkeOdTQ.options.boundingBox) then
        local XynmfAwndIR, gLLCdQvRZ, tinWCPEsv = DGPhGdlqH, DGPhGdlqH, DGPhGdlqH;
        local ovsdnFOEA, tPbDfUMQqoBi, OZBzRlWi = -DGPhGdlqH, -DGPhGdlqH, -DGPhGdlqH;

        for _, HEnhmxqDhr in HiBdrOXRWuln, ABtCAHkeOdTQ.options.boundingBoxDescending and xCrXhuMiQQJf(MFXailgzVUGA) or iLKVBWvWOPLr(MFXailgzVUGA) do
            if (EkIALRlCBiuy(HEnhmxqDhr, "BasePart") and not QcxhttKFup(ABtCAHkeOdTQ.options.excludedPartNames, HEnhmxqDhr.Name)) then
                local GGmizlMUjX = HEnhmxqDhr.Size;
                local kqJYEnNcmK, GvDLeZNnOj, tpgZpJkRmT = GGmizlMUjX.X, GGmizlMUjX.Y, GGmizlMUjX.Z;

                local PEWuPiSCswE, rZIQTfIsKLTC, oOVdPTHsQ, pGEgwjNe, hlWPMggTT, dHENLwLI, pJJEaMTckmxV, HEcwWACC, utMKyOQanAut, mTtbVDWM, wpZySEukaZzV, YmqdfvPT = pUeVjJeyYSRG(HEnhmxqDhr.CFrame);

                local reEhNWzisMnT = 0.5 * (HRdDVZcK(pGEgwjNe) * kqJYEnNcmK + HRdDVZcK(hlWPMggTT) * GvDLeZNnOj + HRdDVZcK(dHENLwLI) * tpgZpJkRmT);
                local epQWbaqF = 0.5 * (HRdDVZcK(pJJEaMTckmxV) * kqJYEnNcmK + HRdDVZcK(HEcwWACC) * GvDLeZNnOj + HRdDVZcK(utMKyOQanAut) * tpgZpJkRmT);
                local qUPAKHZl = 0.5 * (HRdDVZcK(mTtbVDWM) * kqJYEnNcmK + HRdDVZcK(wpZySEukaZzV) * GvDLeZNnOj + HRdDVZcK(YmqdfvPT) * tpgZpJkRmT);

                XynmfAwndIR = XynmfAwndIR > PEWuPiSCswE - reEhNWzisMnT and PEWuPiSCswE - reEhNWzisMnT or XynmfAwndIR;
                gLLCdQvRZ = gLLCdQvRZ > rZIQTfIsKLTC - epQWbaqF and rZIQTfIsKLTC - epQWbaqF or gLLCdQvRZ;
                tinWCPEsv = tinWCPEsv > oOVdPTHsQ - qUPAKHZl and oOVdPTHsQ - qUPAKHZl or tinWCPEsv;

                ovsdnFOEA = ovsdnFOEA < PEWuPiSCswE + reEhNWzisMnT and PEWuPiSCswE + reEhNWzisMnT or ovsdnFOEA;
                tPbDfUMQqoBi = tPbDfUMQqoBi < rZIQTfIsKLTC + epQWbaqF and rZIQTfIsKLTC + epQWbaqF or tPbDfUMQqoBi;
                OZBzRlWi = OZBzRlWi < oOVdPTHsQ + qUPAKHZl and oOVdPTHsQ + qUPAKHZl or OZBzRlWi;
            end
        end

        local DfoZEKnYlJt, XFSVXihTNkh = JCnEFvdkRbk(XynmfAwndIR, gLLCdQvRZ, tinWCPEsv), JCnEFvdkRbk(ovsdnFOEA, tPbDfUMQqoBi, OZBzRlWi);
        return (XFSVXihTNkh + DfoZEKnYlJt) * 0.5, XFSVXihTNkh - DfoZEKnYlJt;
    else
        return lsVZCLtKTZk.Position, rFaOjynGoW(ABtCAHkeOdTQ.options.scaleFactorX, ABtCAHkeOdTQ.options.scaleFactorY);
    end
end

function ABtCAHkeOdTQ.getScaleFactor(PQDzwTfRsje, gfIlbSvgCu)
    if (PQDzwTfRsje ~= ASdrSOfKJios) then
        uabbvndRA = WquQjxtgBRv(JsFiZyYjJx(PQDzwTfRsje * 0.5)) * 2;
        ASdrSOfKJios = PQDzwTfRsje;
    end

    return 1 / (gfIlbSvgCu * uabbvndRA) * 1000;
end

function ABtCAHkeOdTQ.getBoxData(hwycdSVjDES, GGmizlMUjX)
    local qzlSmXqAJrj, ySZSOiLBArG, gfIlbSvgCu = worldToViewportPoint(hwycdSVjDES);
    local JsuCANZHC = ABtCAHkeOdTQ.getScaleFactor(currentCamera.FieldOfView, gfIlbSvgCu);

    local WULijPeyk = QqDHaiAcoc(GGmizlMUjX.X, ABtCAHkeOdTQ.options.minScaleFactorX, ABtCAHkeOdTQ.options.maxScaleFactorX);
    local GgXCUZkWhYl = QqDHaiAcoc(GGmizlMUjX.Y, ABtCAHkeOdTQ.options.minScaleFactorY, ABtCAHkeOdTQ.options.maxScaleFactorY);
    local GGmizlMUjX = round(rFaOjynGoW(WULijPeyk * JsuCANZHC, GgXCUZkWhYl * JsuCANZHC));

    return ySZSOiLBArG, GGmizlMUjX, round(rFaOjynGoW(qzlSmXqAJrj.X - (GGmizlMUjX.X * 0.5), qzlSmXqAJrj.Y - (GGmizlMUjX.Y * 0.5))), qzlSmXqAJrj;
end

function ABtCAHkeOdTQ.getHealth(pSEhPXmu, MFXailgzVUGA)
    local BdxvaCFFPR = oXLFkrRYxe(MFXailgzVUGA, "Humanoid");

    if (BdxvaCFFPR) then
        return math.floor(BdxvaCFFPR.Health), BdxvaCFFPR.MaxHealth;
    end

    return 100, 100;
end

local oZqaBxZAvljj = nil
function ABtCAHkeOdTQ.visibleCheck(MFXailgzVUGA, hwycdSVjDES)
    if not oZqaBxZAvljj then
        oZqaBxZAvljj = guPmpZZFiJPh()
        oZqaBxZAvljj.FilterType = Enum.RaycastFilterType.Blacklist
        oZqaBxZAvljj.IgnoreWater = true
    end

    local oGpHwXXCADYU = ABtCAHkeOdTQ.getCharacter(IEsOFFDBr)
    oZqaBxZAvljj.FilterDescendantsInstances = { oGpHwXXCADYU, currentCamera, MFXailgzVUGA }

    local TcGadviZsXW = currentCamera.CFrame.Position
    return (not UneifSHvkt(apAMQyQhUl, TcGadviZsXW, hwycdSVjDES - TcGadviZsXW, oZqaBxZAvljj))
end

function ABtCAHkeOdTQ.addEsp(pSEhPXmu)
    if (pSEhPXmu == IEsOFFDBr) then
        return
    end

    local gGGtkpcRFi = {arrow= oMVmLzVuy("Triangle", {Thickness= 1,
        }),
        arrowOutline = oMVmLzVuy("Triangle", {Thickness= 1,
        }),
        distanceText = oMVmLzVuy("Text", {Center= true,
            Size = 13,
            Outline = true,
            OutlineColor = AoUKqDTT(),
            Font = 2,
        }),
        tool = oMVmLzVuy("Text", {Center= true,
            Size = 13,
            Outline = true,
            OutlineColor = AoUKqDTT(),
            Font = 2,
        }),
        top = oMVmLzVuy("Text", {Center= true,
            Size = 13,
            Outline = true,
            OutlineColor = AoUKqDTT(),
            Font = 2,
        }),
        healthText = oMVmLzVuy("Text", {Size= 13,
            Outline = true,
            OutlineColor = AoUKqDTT(),
            Font = 2,
        }),
        boxFill = oMVmLzVuy("Square", {Thickness= 1,
            Filled = true,
        }),
        boxOutline = oMVmLzVuy("Square", {Thickness= 3,
            Color = AoUKqDTT()
        }),
        box = oMVmLzVuy("Square", {Thickness= 1
        }),
        healthBarOutline = oMVmLzVuy("Square", {Thickness= 1,
            Color = AoUKqDTT(),
            Filled = true
        }),
        healthBar = oMVmLzVuy("Square", {Thickness= 1,
            Filled = true
        }),
        lineoutline = oMVmLzVuy("Line", {Thickness= 3}),
        line = oMVmLzVuy("Line", {Thickness= 1}),
    };

    ABtCAHkeOdTQ.espCache[pSEhPXmu] = gGGtkpcRFi;

    local MFXailgzVUGA = pSEhPXmu.Character
    if MFXailgzVUGA then
        local BdxvaCFFPR = MFXailgzVUGA:FindFirstChild("Humanoid")
        if BdxvaCFFPR then
            BdxvaCFFPR.Died:Connect(function()
                for _, TLhTPmEwtdic in HiBdrOXRWuln, gGGtkpcRFi do
                    TLhTPmEwtdic.Visible = false
                end
            end)
        end
    end

    pSEhPXmu.CharacterAdded:Connect(function(oSjnjdBXU)
        local BdxvaCFFPR = oSjnjdBXU:WaitForChild("Humanoid", 5)
        if BdxvaCFFPR then
            BdxvaCFFPR.Died:Connect(function()
                for _, TLhTPmEwtdic in HiBdrOXRWuln, gGGtkpcRFi do
                    TLhTPmEwtdic.Visible = false
                end
            end)
        end
    end)
end

function ABtCAHkeOdTQ.removeEsp(pSEhPXmu)
    local IeWZGvZDxvbL = ABtCAHkeOdTQ.espCache[pSEhPXmu];

    if (IeWZGvZDxvbL) then
        ABtCAHkeOdTQ.espCache[pSEhPXmu] = nil;

        for index, TLhTPmEwtdic in HiBdrOXRWuln, IeWZGvZDxvbL do
            IeWZGvZDxvbL[index] = nil;
            TLhTPmEwtdic:Remove();
        end
    end
end

function ABtCAHkeOdTQ.addChams(pSEhPXmu)
    if (pSEhPXmu == IEsOFFDBr) then
        return
    end

    ABtCAHkeOdTQ.chamsCache[pSEhPXmu] = oMVmLzVuy("Highlight", {Parent= screenGui,
    });
end

function ABtCAHkeOdTQ.removeChams(pSEhPXmu)
    local NOVXAygRzGyA = ABtCAHkeOdTQ.chamsCache[pSEhPXmu];

    if (NOVXAygRzGyA) then
        ABtCAHkeOdTQ.chamsCache[pSEhPXmu] = nil;
        NOVXAygRzGyA:Destroy();
    end
end

function ABtCAHkeOdTQ.addObject(TLhTPmEwtdic, JUiTdqzglSUN)
    ABtCAHkeOdTQ.objectCache[TLhTPmEwtdic] = {options= JUiTdqzglSUN,
        text = oMVmLzVuy("Text", {Center= true,
            Size = 13,
            Outline = true,
            OutlineColor = AoUKqDTT(),
            Font = 2,
        })
    };
end

function ABtCAHkeOdTQ.removeObject(TLhTPmEwtdic)
    local gAQthOZsWKDj = ABtCAHkeOdTQ.objectCache[TLhTPmEwtdic];

    if (gAQthOZsWKDj) then
        ABtCAHkeOdTQ.objectCache[TLhTPmEwtdic] = nil;
        gAQthOZsWKDj.text:Remove();
    end
end

function ABtCAHkeOdTQ:AddObjectEsp(TLhTPmEwtdic, defaultOptions)
    qACujvVKhDU(TLhTPmEwtdic and TLhTPmEwtdic.Parent, "invalid object passed");

    local JUiTdqzglSUN = defaultOptions or {};

    JUiTdqzglSUN.enabled = JUiTdqzglSUN.enabled or true;
    JUiTdqzglSUN.limitDistance = JUiTdqzglSUN.limitDistance or false;
    JUiTdqzglSUN.maxDistance = JUiTdqzglSUN.maxDistance or false;
    JUiTdqzglSUN.visibleOnly = JUiTdqzglSUN.visibleOnly or false;
    JUiTdqzglSUN.color = JUiTdqzglSUN.color or AoUKqDTT(1, 1, 1);
    JUiTdqzglSUN.transparency = JUiTdqzglSUN.transparency or 1;
    JUiTdqzglSUN.text = JUiTdqzglSUN.text or TLhTPmEwtdic.Name;
    JUiTdqzglSUN.font = JUiTdqzglSUN.font or 2;
    JUiTdqzglSUN.fontSize = JUiTdqzglSUN.fontSize or 13;

    PypkHNpYF.addObject(TLhTPmEwtdic, JUiTdqzglSUN);

    DAOxusZhf(PypkHNpYF.conns, TLhTPmEwtdic.Parent.ChildRemoved:Connect(function(child)
        if (child == TLhTPmEwtdic) then
            PypkHNpYF.removeObject(child);
        end
    end));

    return JUiTdqzglSUN;
end

function ABtCAHkeOdTQ:Unload()
    for _, ytDOFqCZCq in HiBdrOXRWuln, PypkHNpYF.conns do
        ytDOFqCZCq:Disconnect();
    end

    for _, pSEhPXmu in HiBdrOXRWuln, adyftbHws:GetPlayers() do
        PypkHNpYF.removeEsp(pSEhPXmu);
        PypkHNpYF.removeChams(pSEhPXmu);
    end

    for TLhTPmEwtdic, _ in HiBdrOXRWuln, PypkHNpYF.objectCache do
        PypkHNpYF.removeObject(TLhTPmEwtdic);
    end

    for _, TLhTPmEwtdic in HiBdrOXRWuln, PypkHNpYF.instances do
        TLhTPmEwtdic:Destroy();
    end

    screenGui:Destroy();
    CHErkXXqVc:UnbindFromRenderStep("esp_rendering");
end

function ABtCAHkeOdTQ:Load(renderValue)
    DAOxusZhf(PypkHNpYF.conns, adyftbHws.PlayerAdded:Connect(function(pSEhPXmu)
        PypkHNpYF.addEsp(pSEhPXmu);
        PypkHNpYF.addChams(pSEhPXmu);
    end));

    DAOxusZhf(PypkHNpYF.conns, adyftbHws.PlayerRemoving:Connect(function(pSEhPXmu)
        PypkHNpYF.removeEsp(pSEhPXmu);
        PypkHNpYF.removeChams(pSEhPXmu);
    end));

    for _, pSEhPXmu in HiBdrOXRWuln, adyftbHws:GetPlayers() do
        PypkHNpYF.addEsp(pSEhPXmu);
        PypkHNpYF.addChams(pSEhPXmu);
    end

    CHErkXXqVc:BindToRenderStep("esp_rendering", renderValue or (Enum.RenderPriority.Camera.Value + 1), function()
        local tIjZEoEnH = PypkHNpYF.options;
        local HXbSQNQCho = Vector3.new(5, 6.5);
        local VaMyJqZuLED = currentCamera.ViewportSize;
        for pSEhPXmu, gGGtkpcRFi in HiBdrOXRWuln, PypkHNpYF.espCache do
            local MFXailgzVUGA, lsVZCLtKTZk = PypkHNpYF.getCharacter(pSEhPXmu);

            if (MFXailgzVUGA and lsVZCLtKTZk) then
                local BdxvaCFFPR = MFXailgzVUGA:FindFirstChild("Humanoid")
                if not BdxvaCFFPR or BdxvaCFFPR.Health <= 0 then
                    for _, TLhTPmEwtdic in HiBdrOXRWuln, gGGtkpcRFi do
                        TLhTPmEwtdic.Visible = false
                    end
                    continue
                end

                local ySZSOiLBArG, GGmizlMUjX, hwycdSVjDES, qzlSmXqAJrj = PypkHNpYF.getBoxData(lsVZCLtKTZk.Position, HXbSQNQCho);
                local byrYIdXgfY = (currentCamera.CFrame.Position - lsVZCLtKTZk.Position).Magnitude;
                local DDotZczqsB = byrYIdXgfY / 3.28084;
                local faXPgQicGF, WbTOxwTZLw = ySZSOiLBArG and (GGmizlMUjX and hwycdSVjDES), tIjZEoEnH.enabled;
                local jmlyPyaiC, JHvylkdMkMr = PypkHNpYF.getTeam(pSEhPXmu);
                local qPZbwlbqt = tIjZEoEnH.teamColor and JHvylkdMkMr or nil;
                local jicRtGVUj = PypkHNpYF.getTool(pSEhPXmu)

                if tIjZEoEnH.useCustomTeamColor and tIjZEoEnH.teamColor then
                    qPZbwlbqt = tIjZEoEnH.customteamColor
                end

                if (tIjZEoEnH.fillColor ~= nil) then
                    qPZbwlbqt = tIjZEoEnH.fillColor;
                end

                if (QcxhttKFup(PypkHNpYF.whitelist, pSEhPXmu.Name)) then
                    qPZbwlbqt = tIjZEoEnH.whitelistColor;
                end

                if (QcxhttKFup(PypkHNpYF.blacklist, pSEhPXmu.Name)) then
                    WbTOxwTZLw = false;
                end

                if (tIjZEoEnH.limitDistance and byrYIdXgfY > tIjZEoEnH.maxDistance) then
                    WbTOxwTZLw = false;
                end

                if (tIjZEoEnH.visibleOnly and not PypkHNpYF.visibleCheck(MFXailgzVUGA, lsVZCLtKTZk.Position)) then
                    WbTOxwTZLw = false;
                end

                if (tIjZEoEnH.teamCheck and (jmlyPyaiC == PypkHNpYF.getTeam(IEsOFFDBr))) then
                    WbTOxwTZLw = false;
                end

                local MBevwVelu = currentCamera.ViewportSize;

                local yfgQnCbfTeoK = rFaOjynGoW(MBevwVelu.X / 2, MBevwVelu.Y / 2);
                local hkxhNCqm = (wkuUSdubv(currentCamera.CFrame, lsVZCLtKTZk.Position) * JCnEFvdkRbk(1, 0, 1)).Unit;
                local AdJXFIhFO = BukNkYIEvwno(hkxhNCqm, JCnEFvdkRbk(0, 1, 1));
                local NaASKSsoFMMP = rFaOjynGoW(AdJXFIhFO.X, AdJXFIhFO.Z);

                local bUlJaFBfCRe, aAPfAWNOb = tIjZEoEnH.outOfViewArrowsRadius, tIjZEoEnH.outOfViewArrowsSize;
                local VbvTFQkliUBu = yfgQnCbfTeoK + rFaOjynGoW(hkxhNCqm.X, hkxhNCqm.Z) * bUlJaFBfCRe;
                local tetJOSkLG = (VbvTFQkliUBu - yfgQnCbfTeoK).Unit;

                local IvGdtpxXhK, VGdWEsCEMbj, JSFvwIknvIhi = VbvTFQkliUBu, yfgQnCbfTeoK + tetJOSkLG * (bUlJaFBfCRe - aAPfAWNOb) + NaASKSsoFMMP * aAPfAWNOb, yfgQnCbfTeoK + tetJOSkLG * (bUlJaFBfCRe - aAPfAWNOb) + -NaASKSsoFMMP * aAPfAWNOb;

                local EnGWyKuy, ZfWpygbbSII = PypkHNpYF.getHealth(pSEhPXmu, MFXailgzVUGA);
                local ZLVbSDCNp = round(rFaOjynGoW(tIjZEoEnH.healthBarsSize, -(GGmizlMUjX.Y * (EnGWyKuy / ZfWpygbbSII))));
                local rBvVmhoA = round(rFaOjynGoW(hwycdSVjDES.X - (3 + ZLVbSDCNp.X), hwycdSVjDES.Y + GGmizlMUjX.Y));

                local TcGadviZsXW = tIjZEoEnH.tracerOrigin;
                local kDwAYOZDSlc = faXPgQicGF and WbTOxwTZLw;

                gGGtkpcRFi.arrow.Visible = (not faXPgQicGF and WbTOxwTZLw) and tIjZEoEnH.outOfViewArrows;
                gGGtkpcRFi.arrow.Filled = tIjZEoEnH.outOfViewArrowsFilled;
                gGGtkpcRFi.arrow.Transparency = tIjZEoEnH.outOfViewArrowsTransparency;
                gGGtkpcRFi.arrow.Color = qPZbwlbqt or tIjZEoEnH.outOfViewArrowsColor;
                gGGtkpcRFi.arrow.PointA = IvGdtpxXhK;
                gGGtkpcRFi.arrow.PointB = VGdWEsCEMbj;
                gGGtkpcRFi.arrow.PointC = JSFvwIknvIhi;

                gGGtkpcRFi.arrowOutline.Visible = (not faXPgQicGF and WbTOxwTZLw) and tIjZEoEnH.outOfViewArrowsOutline;
                gGGtkpcRFi.arrowOutline.Filled = tIjZEoEnH.outOfViewArrowsOutlineFilled;
                gGGtkpcRFi.arrowOutline.Transparency = tIjZEoEnH.outOfViewArrowsOutlineTransparency;
                gGGtkpcRFi.arrowOutline.Color = qPZbwlbqt or tIjZEoEnH.outOfViewArrowsOutlineColor;
                gGGtkpcRFi.arrowOutline.PointA = IvGdtpxXhK;
                gGGtkpcRFi.arrowOutline.PointB = VGdWEsCEMbj;
                gGGtkpcRFi.arrowOutline.PointC = JSFvwIknvIhi;

                local uCAkMjFA = 0
                
                if kDwAYOZDSlc and tIjZEoEnH.names then
                    gGGtkpcRFi.top.Visible = true
                    gGGtkpcRFi.top.Font = tIjZEoEnH.font;
                    gGGtkpcRFi.top.Size = tIjZEoEnH.fontSize;
                    gGGtkpcRFi.top.Transparency = tIjZEoEnH.nameTransparency;
                    gGGtkpcRFi.top.Color = qPZbwlbqt or tIjZEoEnH.nameColor;
                    gGGtkpcRFi.top.Text = pSEhPXmu.Name;
                    gGGtkpcRFi.top.Position = round(hwycdSVjDES + rFaOjynGoW(GGmizlMUjX.X * 0.5, -(gGGtkpcRFi.top.TextBounds.Y + 2)));
                    uCAkMjFA = gGGtkpcRFi.top.TextBounds.Y + 2
                else
                    gGGtkpcRFi.top.Visible = false
                end

                gGGtkpcRFi.healthText.Visible = kDwAYOZDSlc and tIjZEoEnH.healthText;
                if gGGtkpcRFi.healthText.Visible then
                    gGGtkpcRFi.healthText.Font = tIjZEoEnH.font;
                    gGGtkpcRFi.healthText.Size = tIjZEoEnH.fontSize;
                    gGGtkpcRFi.healthText.Transparency = tIjZEoEnH.healthTextTransparency;
                    gGGtkpcRFi.healthText.Color = qPZbwlbqt or tIjZEoEnH.healthTextColor;
                    gGGtkpcRFi.healthText.Text = EnGWyKuy .. tIjZEoEnH.healthTextSuffix;
                    --// Position on the right side of the box
                    gGGtkpcRFi.healthText.Position = round(hwycdSVjDES + rFaOjynGoW(GGmizlMUjX.X + 3, -3));
                end

                local ZEsRnzhZ = tIjZEoEnH.tool and jicRtGVUj ~= "None"
                gGGtkpcRFi.tool.Visible = kDwAYOZDSlc and ZEsRnzhZ;
                if gGGtkpcRFi.tool.Visible then
                    gGGtkpcRFi.tool.Font = tIjZEoEnH.font;
                    gGGtkpcRFi.tool.Size = tIjZEoEnH.fontSize;
                    gGGtkpcRFi.tool.Transparency = tIjZEoEnH.toolTransparency;
                    gGGtkpcRFi.tool.Color = qPZbwlbqt or tIjZEoEnH.toolColor;
                    gGGtkpcRFi.tool.Text = EJJFGJzBaV(jicRtGVUj);
                    gGGtkpcRFi.tool.Position = round(hwycdSVjDES + rFaOjynGoW(GGmizlMUjX.X * 0.5, GGmizlMUjX.Y + 1));
                end

                gGGtkpcRFi.distanceText.Visible = kDwAYOZDSlc and tIjZEoEnH.distance;
                if gGGtkpcRFi.distanceText.Visible then
                    gGGtkpcRFi.distanceText.Font = tIjZEoEnH.font;
                    gGGtkpcRFi.distanceText.Size = tIjZEoEnH.fontSize;
                    gGGtkpcRFi.distanceText.Transparency = tIjZEoEnH.distanceTransparency;
                    gGGtkpcRFi.distanceText.Color = qPZbwlbqt or tIjZEoEnH.distanceColor;
                    local oKsVuQJtOGD = string.format("%.0f", DDotZczqsB)
                    gGGtkpcRFi.distanceText.Text = oKsVuQJtOGD .. tIjZEoEnH.distanceSuffix;
                    
                    local TgOYxZEuH
                    if ZEsRnzhZ and gGGtkpcRFi.tool.Visible then
                        local hxmKUCiM = gGGtkpcRFi.tool.TextBounds.Y
                        if hxmKUCiM == 0 then hxmKUCiM = tIjZEoEnH.fontSize + 2 end
                        TgOYxZEuH = GGmizlMUjX.Y + 1 + hxmKUCiM + 4
                    else
                        TgOYxZEuH = GGmizlMUjX.Y + 4
                    end
                    gGGtkpcRFi.distanceText.Position = round(hwycdSVjDES + rFaOjynGoW(GGmizlMUjX.X * 0.5, TgOYxZEuH));
                end

                gGGtkpcRFi.box.Visible = kDwAYOZDSlc and tIjZEoEnH.boxes;
                gGGtkpcRFi.box.Color = qPZbwlbqt or tIjZEoEnH.boxesColor;
                gGGtkpcRFi.box.Transparency = tIjZEoEnH.boxesTransparency;
                gGGtkpcRFi.box.Size = GGmizlMUjX;
                gGGtkpcRFi.box.Position = hwycdSVjDES;

                gGGtkpcRFi.boxOutline.Visible = kDwAYOZDSlc and tIjZEoEnH.boxes;
                gGGtkpcRFi.boxOutline.Transparency = tIjZEoEnH.boxesTransparency;
                gGGtkpcRFi.boxOutline.Size = GGmizlMUjX;
                gGGtkpcRFi.boxOutline.Position = hwycdSVjDES;

                gGGtkpcRFi.boxFill.Visible = kDwAYOZDSlc and tIjZEoEnH.boxFill;
                gGGtkpcRFi.boxFill.Color = qPZbwlbqt or tIjZEoEnH.boxFillColor;
                gGGtkpcRFi.boxFill.Transparency = tIjZEoEnH.boxFillTransparency;
                gGGtkpcRFi.boxFill.Size = GGmizlMUjX;
                gGGtkpcRFi.boxFill.Position = hwycdSVjDES;

                gGGtkpcRFi.healthBar.Visible = kDwAYOZDSlc and tIjZEoEnH.healthBars;
                gGGtkpcRFi.healthBar.Color = tIjZEoEnH.healthBarsColor;
                gGGtkpcRFi.healthBar.Transparency = tIjZEoEnH.healthBarsTransparency;
                gGGtkpcRFi.healthBar.Size = ZLVbSDCNp;
                gGGtkpcRFi.healthBar.Position = rBvVmhoA;

                gGGtkpcRFi.healthBarOutline.Visible = kDwAYOZDSlc and tIjZEoEnH.healthBars;
                gGGtkpcRFi.healthBarOutline.Transparency = tIjZEoEnH.healthBarsTransparency;
                gGGtkpcRFi.healthBarOutline.Size = round(rFaOjynGoW(ZLVbSDCNp.X, -GGmizlMUjX.Y) + rFaOjynGoW(2, -2));
                gGGtkpcRFi.healthBarOutline.Position = rBvVmhoA - rFaOjynGoW(1, -1);

                gGGtkpcRFi.line.Visible = kDwAYOZDSlc and tIjZEoEnH.tracers;
                gGGtkpcRFi.line.Color = qPZbwlbqt or tIjZEoEnH.tracerColor;
                gGGtkpcRFi.line.Transparency = tIjZEoEnH.tracerTransparency;
                gGGtkpcRFi.line.From =
                    TcGadviZsXW == "Mouse" and userInputService:GetMouseLocation() or
                    TcGadviZsXW == "Top" and rFaOjynGoW(MBevwVelu.X * 0.5, 0) or
                    TcGadviZsXW == "Bottom" and rFaOjynGoW(MBevwVelu.X * 0.5, MBevwVelu.Y);
                gGGtkpcRFi.line.To = qzlSmXqAJrj;
                gGGtkpcRFi.lineoutline.Visible = kDwAYOZDSlc and tIjZEoEnH.tracers;
                gGGtkpcRFi.lineoutline.Color = Color3.new(0,0,0)
                gGGtkpcRFi.lineoutline.Transparency = tIjZEoEnH.tracerTransparency;
                gGGtkpcRFi.lineoutline.From =
                    TcGadviZsXW == "Mouse" and userInputService:GetMouseLocation() or
                    TcGadviZsXW == "Top" and rFaOjynGoW(MBevwVelu.X * 0.5, 0) or
                    TcGadviZsXW == "Bottom" and rFaOjynGoW(MBevwVelu.X * 0.5, MBevwVelu.Y);
                    gGGtkpcRFi.lineoutline.To = qzlSmXqAJrj;
            else
                local gGGtkpcRFi = gGGtkpcRFi
                for objectName, TLhTPmEwtdic in HiBdrOXRWuln, gGGtkpcRFi do
                    TLhTPmEwtdic.Visible = false
                end
            end
        end

        for pSEhPXmu, NOVXAygRzGyA in HiBdrOXRWuln, PypkHNpYF.chamsCache do
            local MFXailgzVUGA, lsVZCLtKTZk = PypkHNpYF.getCharacter(pSEhPXmu);

            if (MFXailgzVUGA and lsVZCLtKTZk) then
                local jFsPaMcOL = (currentCamera.CFrame.Position - lsVZCLtKTZk.Position).Magnitude;
                local faXPgQicGF = tIjZEoEnH.enabled and tIjZEoEnH.chams;
                local jmlyPyaiC, JHvylkdMkMr = PypkHNpYF.getTeam(pSEhPXmu);
                local qPZbwlbqt = tIjZEoEnH.teamColor and JHvylkdMkMr or nil;

                if tIjZEoEnH.useCustomTeamColor and tIjZEoEnH.teamColor then
                    qPZbwlbqt = tIjZEoEnH.customteamColor
                end

                if (tIjZEoEnH.fillColor ~= nil) then
                    qPZbwlbqt = tIjZEoEnH.fillColor;
                end

                if (QcxhttKFup(PypkHNpYF.whitelist, pSEhPXmu.Name)) then
                    qPZbwlbqt = tIjZEoEnH.whitelistColor;
                end

                if (QcxhttKFup(PypkHNpYF.blacklist, pSEhPXmu.Name)) then
                    faXPgQicGF = false;
                end

                if (tIjZEoEnH.limitDistance and jFsPaMcOL > tIjZEoEnH.maxDistance) then
                    faXPgQicGF = false;
                end

                if (tIjZEoEnH.teamCheck and (jmlyPyaiC == PypkHNpYF.getTeam(IEsOFFDBr))) then
                    faXPgQicGF = false;
                end

                NOVXAygRzGyA.Enabled = faXPgQicGF;
                NOVXAygRzGyA.DepthMode = tIjZEoEnH.visibleOnly and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop;
                NOVXAygRzGyA.Adornee = MFXailgzVUGA;
                NOVXAygRzGyA.FillColor = qPZbwlbqt or tIjZEoEnH.chamsFillColor;
                NOVXAygRzGyA.FillTransparency = tIjZEoEnH.chamsFillTransparency;
                NOVXAygRzGyA.OutlineColor = qPZbwlbqt or tIjZEoEnH.chamsOutlineColor;
                NOVXAygRzGyA.OutlineTransparency = tIjZEoEnH.chamsOutlineTransparency;
            end
        end

        for TLhTPmEwtdic, gAQthOZsWKDj in HiBdrOXRWuln, PypkHNpYF.objectCache do
            local RzuvDual = JCnEFvdkRbk();

            if (TLhTPmEwtdic:IsA("BasePart")) then
                RzuvDual = TLhTPmEwtdic.Position;
            elseif (TLhTPmEwtdic:IsA("Model")) then
                RzuvDual = PypkHNpYF.getBoundingBox(TLhTPmEwtdic);
            end

            local jFsPaMcOL = (currentCamera.CFrame.Position - RzuvDual).Magnitude;
            local fglyyuOcaJOS, ySZSOiLBArG = worldToViewportPoint(RzuvDual);
            local faXPgQicGF = gAQthOZsWKDj.options.enabled and ySZSOiLBArG;

            if (tIjZEoEnH.limitDistance and jFsPaMcOL > tIjZEoEnH.maxDistance) then
                faXPgQicGF = false;
            end

            if (tIjZEoEnH.visibleOnly and not PypkHNpYF.visibleCheck(TLhTPmEwtdic, RzuvDual)) then
                faXPgQicGF = false;
            end

            gAQthOZsWKDj.text.Visible = faXPgQicGF;
            gAQthOZsWKDj.text.Font = gAQthOZsWKDj.options.font;
            gAQthOZsWKDj.text.Size = gAQthOZsWKDj.options.fontSize;
            gAQthOZsWKDj.text.Transparency = gAQthOZsWKDj.options.transparency;
            gAQthOZsWKDj.text.Color = gAQthOZsWKDj.options.color;
            gAQthOZsWKDj.text.Text = gAQthOZsWKDj.options.text;
            gAQthOZsWKDj.text.Position = round(fglyyuOcaJOS);
        end
    end);
end
ABtCAHkeOdTQ:Load()
--// ESP END

--// UI
local wTCNhmrX    = PYMBJvUCOh:Window({Logo= '132447680232071', FadeTime = 0.3 })
local KlIDyGNgpOoP = PYMBJvUCOh:Watermark('dopamine.wtf | discord.gg/hZAj73bwnv')
local vZdvDOFQchW = PYMBJvUCOh:KeybindList()

--// PAGES
local sGZreeGBPez  = wTCNhmrX:Page({Name= 'Combat',  Columns = 2 })
local ZJCTbHxR = wTCNhmrX:Page({Name= 'Visuals', Columns = 2 })
local ZjumHMhPNFq    = wTCNhmrX:Page({Name= 'Misc',    Columns = 2 })
local OLWyPWalCNRv = PYMBJvUCOh:CreateSettingsPage(wTCNhmrX, vZdvDOFQchW, KlIDyGNgpOoP)

--// ===================== COMBAT PAGE =====================
--// Section 1: Aimbot
local okXUSODDTNM = sGZreeGBPez

do
    local FdAvtbvqQ = okXUSODDTNM:Section({Name= 'Aimbot', Side = 1 })
    FdAvtbvqQ:Toggle({Name= 'Aimbot', Flag = 'Enable Aimbot', Default = false, Callback = function(s) EnziqNRwERb['Enable Aimbot'] = s end }):Keybind({Flag= 'Aimbot Keybind', Mode = 'Hold', Callback = function(s) EnziqNRwERb['Aimbot Keybind'] = type(s) == "table" and s or {active= s == true} end })
    FdAvtbvqQ:Toggle({Name= 'Silent Aim', Flag = 'Silent Aim', Default = false, Callback = function(s)
        EnziqNRwERb['Silent Aim'] = s
        if not EnziqNRwERb['Silent Aim Keybind'] then getgenv().silent = s end
    end }):Keybind({Flag= 'Silent Aim Keybind', Mode = 'Hold', Callback = function(s)
        EnziqNRwERb['Silent Aim Keybind'] = type(s) == "table" and s or {active= s == true}
    end })
    FdAvtbvqQ:Slider({Name= 'Aimbot Speed', Flag = 'Aimbot Speed', Min = 0.05, Max = 1, Default = 0.5, Decimals = 0.01, Suffix = '', Callback = function(s) EnziqNRwERb['Aimbot Speed'] = s end })
    FdAvtbvqQ:Slider({Name= 'Max Distance', Flag = 'Aimbot Max Distance', Min = 100, Max = 2500, Default = 500, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['Aimbot Max Distance'] = s end })
    FdAvtbvqQ:Dropdown({Name= 'Aimbone', Flag = 'Aimbot Bone', Items = { 'Head', 'Torso', 'HumanoidRootPart', 'Closest Bone' }, Default = 'Head', Callback = function(s) EnziqNRwERb['Aimbot Bone'] = s end })
    FdAvtbvqQ:Toggle({Name= 'Team Check', Flag = 'Friendly Check', Default = false, Callback = function(s) EnziqNRwERb['Friendly Check'] = s end })
    FdAvtbvqQ:Toggle({Name= 'Visible Check', Flag = 'Visible Check', Default = false, Callback = function(s) EnziqNRwERb['Visible Check'] = s end })

    --// Gun Mods (moved from Misc)
    local RYGTjBVDxfE = okXUSODDTNM:Section({Name= 'Gun Mods', Side = 2 })
    RYGTjBVDxfE:Toggle({Name= 'No Recoil', Flag = 'NoRecoil', Default = false, Callback = function(s) EnziqNRwERb['NoRecoil'] = s; if s then applyRecoilHook() else removeRecoilHook() end end })
    RYGTjBVDxfE:Toggle({Name= 'ForceShoot', Flag = 'ForceShoot', Default = false, Callback = function(s) EnziqNRwERb['ForceShoot'] = s; if s then applyHooks() else removeHooks() end end })
    RYGTjBVDxfE:Toggle({Name= 'No Spread', Flag = 'No Spread', Default = false, Callback = function(s) EnziqNRwERb['No Spread'] = s end })
    RYGTjBVDxfE:Toggle({Name= 'No Gun Effects', Flag = 'No Gun Effects', Default = false, Callback = function(s) EnziqNRwERb['No Gun Effects'] = s end })
    RYGTjBVDxfE:Toggle({Name= 'Rapid Fire', Flag = 'gun firerate', Default = false, Callback = function(s) EnziqNRwERb['gun firerate'] = s end })
    RYGTjBVDxfE:Slider({Name= 'Rapid Fire Speed', Flag = 'rapid fire speed', Min = 1, Max = 10, Default = 3, Decimals = 0.1, Suffix = 'x', Callback = function(s) EnziqNRwERb['rapid fire speed'] = s end })
    RYGTjBVDxfE:Toggle({Name= 'Full Auto', Flag = 'gun auto', Default = false, Callback = function(s) EnziqNRwERb['gun auto'] = s end })
end

--// Section 2: Aimbot Settings
local TyWwMlJhvYv = sGZreeGBPez

do
    local nynHUOYFLj = TyWwMlJhvYv:Section({Name= 'Aimbot Settings', Side = 1 })
    nynHUOYFLj:Toggle({Name= 'FOV Circle', Flag = 'Enable FOV', Default = false, Callback = function(s) EnziqNRwERb['Enable FOV'] = s end }):Colorpicker({Flag= 'FOV Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['FOV Accent'] = {Color=s, Transparency=0} end })
    nynHUOYFLj:Toggle({Name= 'FOV Filled', Flag = 'FOV Filled', Default = false, Callback = function(s) EnziqNRwERb['FOV Filled'] = s end }):Colorpicker({Flag= 'FOV Fill Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['FOV Fill Accent'] = {Color=s, Transparency=0} end })
    nynHUOYFLj:Slider({Name= 'FOV Fill Opacity', Flag = 'FOV Fill Opacity', Min = 0, Max = 100, Default = 50, Decimals = 1, Suffix = '%', Callback = function(s) EnziqNRwERb['FOV Fill Opacity'] = s end })
    nynHUOYFLj:Slider({Name= 'FOV Radius', Flag = 'FOV Radius', Min = 30, Max = 750, Default = 120, Decimals = 1, Suffix = 'px', Callback = function(s) EnziqNRwERb['FOV Radius'] = s end })
    nynHUOYFLj:Toggle({Name= 'Snaplines', Flag = 'Enable Snaplines', Default = false, Callback = function(s) EnziqNRwERb['Enable Snaplines'] = s end }):Colorpicker({Flag= 'Snaplines Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Snaplines Accent'] = {Color=s, Transparency=0} end })

    local LMaQvQeUYToJ = TyWwMlJhvYv:Section({Name= 'Melee Mods', Side = 2 })
    LMaQvQeUYToJ:Toggle({Name= 'Melee Mods', Flag = 'MeleeMods', Default = false, Callback = function(s) EnziqNRwERb['MeleeMods'] = s end })
    LMaQvQeUYToJ:Slider({Name= 'Swing Speed', Flag = 'MeleeSwingSpeed', Min = 1, Max = 10, Default = 3, Decimals = 0.1, Suffix = 'x', Callback = function(s) EnziqNRwERb['MeleeSwingSpeed'] = s end })
    LMaQvQeUYToJ:Slider({Name= 'Swing Range', Flag = 'MeleeSwingRange', Min = 2, Max = 20, Default = 5, Decimals = 0.5, Suffix = '', Callback = function(s) EnziqNRwERb['MeleeSwingRange'] = s end })
end

--// ===================== VISUALS PAGE =====================
--// Section 1: Player ESP
local DublJeUvUpS = ZJCTbHxR

do
    local akIkLMQlTSyc = DublJeUvUpS:Section({Name= 'Main Visuals', Side = 1 })
    akIkLMQlTSyc:Toggle({Name= "Master Switch", Flag = "ESPEnabled", Callback = function(value) ABtCAHkeOdTQ.options.enabled = value end })
    akIkLMQlTSyc:Toggle({Name= "Names", Flag = "ESPNames", Callback = function(value) ABtCAHkeOdTQ.options.names = value end }):Colorpicker({Name= "Name Color", Flag = "ESPNameColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.nameColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Box", Flag = "ESPBoxes", Callback = function(value) ABtCAHkeOdTQ.options.boxes = value end }):Colorpicker({Name= "Box Color", Flag = "ESPBoxColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.boxesColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Box Fill", Flag = "ESPBoxFill", Callback = function(value) ABtCAHkeOdTQ.options.boxFill = value end }):Colorpicker({Name= "Fill Color", Flag = "ESPBoxFillColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.boxFillColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Health Bar", Flag = "ESPHealthBars", Callback = function(value) ABtCAHkeOdTQ.options.healthBars = value end }):Colorpicker({Name= "Health Bar Color", Flag = "ESPHealthBarColor", Default = Color3.fromRGB(0, 222, 0), Callback = function(value) ABtCAHkeOdTQ.options.healthBarsColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Health Text", Flag = "ESPHealthText", Callback = function(value) ABtCAHkeOdTQ.options.healthText = value end }):Colorpicker({Name= "Health Text Color", Flag = "ESPHealthTextColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.healthTextColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Distance", Flag = "ESPDistance", Callback = function(value) ABtCAHkeOdTQ.options.distance = value end }):Colorpicker({Name= "Distance Color", Flag = "ESPDistanceColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.distanceColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Weapon", Flag = "ESPTool", Callback = function(value) ABtCAHkeOdTQ.options.tool = value end }):Colorpicker({Name= "Tool Color", Flag = "ESPToolColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.toolColor = value end })
    akIkLMQlTSyc:Toggle({Name= "Tracers", Flag = "ESPTracers", Callback = function(value) ABtCAHkeOdTQ.options.tracers = value end }):Colorpicker({Name= "Tracer Color", Flag = "ESPTracerColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) ABtCAHkeOdTQ.options.tracerColor = value end })
    akIkLMQlTSyc:Dropdown({Name= "Tracer Origin", Flag = "ESPTracerOrigin", Items = {'Bottom', 'Top', 'Mouse'}, Callback = function(value) ABtCAHkeOdTQ.options.tracerOrigin = value end })

    local hWBJJoCFlk = DublJeUvUpS:Section({Name= 'Visual Settings', Side = 2 })
    hWBJJoCFlk:Toggle({Name= "Visible Only ESP", Flag = "ESPVisibleOnly", Callback = function(value) ABtCAHkeOdTQ.options.visibleOnly = value end })
    hWBJJoCFlk:Toggle({Name= "Distance Limit", Flag = "ESPLimitDistance", Callback = function(value) ABtCAHkeOdTQ.options.limitDistance = value end })
    hWBJJoCFlk:Slider({Name= "Max Distance Amount", Flag = "ESPMaxDistance", Min = 100, Max = 5000, Default = 1000, Callback = function(value) ABtCAHkeOdTQ.options.maxDistance = value end })
    hWBJJoCFlk:Toggle({Name= 'Admin List', Flag = 'Admin', Default = false, Callback = function(s) EnziqNRwERb['Admin'] = s; if TJnVeYuUAIOs then TJnVeYuUAIOs.Visible = s end end })
end

--// Section 2: Local Player
local oifropaWLuOU = ZJCTbHxR

do
    local LPEglOIlIdcb = oifropaWLuOU:Section({Name= 'Local Player', Side = 1 })
    LPEglOIlIdcb:Toggle({Name= 'Gun Chams', Flag = 'Chamsi', Default = false, Callback = function(s) EnziqNRwERb['Chamsi'] = s end }):Colorpicker({Flag= 'Colarss', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Colarss'] = {Color=s,Transparency=0} end })
    LPEglOIlIdcb:Toggle({Name= 'Arm Chams', Flag = 'GunNiger', Default = false, Callback = function(s) EnziqNRwERb['GunNiger'] = s end }):Colorpicker({Flag= 'Colarss2', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Colarss2'] = {Color=s,Transparency=0} end })
    LPEglOIlIdcb:Dropdown({Name= 'Gun Chams Material', Flag = 'gunChamsMaterial', Items = { 'Neon', 'ForceField', 'Glass', 'SmoothPlastic' }, Default = 'Neon', Callback = function(s) EnziqNRwERb['gunChamsMaterial'] = s end })
    LPEglOIlIdcb:Dropdown({Name= 'Arm Chams Material', Flag = 'gaymaterial', Items = { 'Neon', 'ForceField', 'Glass', 'SmoothPlastic' }, Default = 'Neon', Callback = function(s) EnziqNRwERb['gaymaterial'] = s end })
    LPEglOIlIdcb:Toggle({Name= 'Bullet Tracers', Flag = 'Bullet Tracers', Default = false, Callback = function(s) EnziqNRwERb['Bullet Tracers'] = s; trac = s end }):Colorpicker({Flag= 'Tracer Color', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Tracer Color'] = {Color=s,Transparency=0} end })
    LPEglOIlIdcb:Dropdown({Name= 'Tracer Type', Flag = 'Bulat Type', Items = QZJyBogfHOtK, Default = QZJyBogfHOtK[1], Callback = function(s) EnziqNRwERb['Bulat Type'] = s end })
    LPEglOIlIdcb:Toggle({Name= 'Hitmarkers', Flag = 'Hitmarkers', Default = false, Callback = function(s) EnziqNRwERb['Hitmarkers'] = s; mark = s end }):Colorpicker({Flag= 'HitmarkerColor', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['HitmarkerColor'] = {Color=s,Transparency=0} end })
    LPEglOIlIdcb:Toggle({Name= 'Hitlogs', Flag = 'Hitlogs', Default = false, Callback = function(s) EnziqNRwERb['Hitlogs'] = s; niger = s end })
    LPEglOIlIdcb:Toggle({Name= 'Hitsounds', Flag = 'Hitsounds', Default = false, Callback = function(s) EnziqNRwERb['Hitsounds'] = s end })
    LPEglOIlIdcb:Dropdown({Name= 'Sound Type', Flag = 'Hitsound Type', Items = hmKpBHFHBJpS, Default = hmKpBHFHBJpS[1], Callback = function(s) EnziqNRwERb['Hitsound Type'] = s; selected_sound = s; newId = setGBERY[s]; replaceSounds(hYObRRfN); replaceSounds(DXWugHbKILJ.Character) end })
    LPEglOIlIdcb:Toggle({Name= 'Reload Indicator', Flag = 'ReloadIndicator', Default = false, Callback = function(s) EnziqNRwERb['ReloadIndicator'] = s end })
end

--// Section 3: World ESP
local dgGFlKNhx = ZJCTbHxR

do
    local mjoxtNOBegSo = dgGFlKNhx:Section({Name= 'World Modifications', Side = 1 })
    mjoxtNOBegSo:Toggle({Name= 'No Grass', Flag = 'No Grass', Default = false, Callback = function(s) EnziqNRwERb['No Grass'] = s; sethiddenproperty(WzuRBlWDxxqo:FindFirstChildOfClass('Terrain'), 'Decoration', not s) end })
    mjoxtNOBegSo:Toggle({Name= 'No Fog', Flag = 'Enable No Fog', Default = false, Callback = function(s) EnziqNRwERb['Enable No Fog'] = s end })
    mjoxtNOBegSo:Slider({Name= 'Brightness', Flag = 'Lighting Brightness', Min = 0, Max = 12, Default = 2, Decimals = 0.1, Suffix = '', Callback = function(s) EnziqNRwERb['Lighting Brightness'] = s; game:GetService('Lighting').Brightness = s end })
    mjoxtNOBegSo:Toggle({Name= 'Fullbright', Flag = 'Enable Fullbright', Default = false, Callback = function(s) EnziqNRwERb['Enable Fullbright'] = s; qMCUXHmYafaH.GlobalShadows = not s end })
    mjoxtNOBegSo:Toggle({Name= 'Ambient', Flag = 'Enable Ambient', Default = false, Callback = function(s) EnziqNRwERb['Enable Ambient'] = s end }):Colorpicker({Flag= 'Ambient Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Ambient Accent'] = {Color=s,Transparency=0} end })
    mjoxtNOBegSo:Toggle({Name= 'Outdoor Ambient', Flag = 'Enable Outdoor Ambient', Default = false, Callback = function(s) EnziqNRwERb['Enable Outdoor Ambient'] = s end }):Colorpicker({Flag= 'Outdoor Ambient Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['Outdoor Ambient Accent'] = {Color=s,Transparency=0} end })
    mjoxtNOBegSo:Toggle({Name= 'Skybox', Flag = 'Skybox Enabled', Default = false, Callback = function(s)
        EnziqNRwERb['Skybox Enabled'] = s
        if not s then
            dCVGvQJPz.SkyboxBk = bMkpdMwDXu.SkyboxBk; dCVGvQJPz.SkyboxDn = bMkpdMwDXu.SkyboxDn
            dCVGvQJPz.SkyboxFt = bMkpdMwDXu.SkyboxFt; dCVGvQJPz.SkyboxLf = bMkpdMwDXu.SkyboxLf
            dCVGvQJPz.SkyboxRt = bMkpdMwDXu.SkyboxRt; dCVGvQJPz.SkyboxUp = bMkpdMwDXu.SkyboxUp
        end
    end })
    mjoxtNOBegSo:Dropdown({Name= 'Skybox', Flag = 'Skyboxes', Items = nHCJjTFLz, Default = nHCJjTFLz[8], Callback = function(s) EnziqNRwERb['Skyboxes'] = s; if EnziqNRwERb['Skybox Enabled'] and SDukgEzas[s] then dCVGvQJPz.SkyboxBk='rbxassetid://'..SDukgEzas[s][1]; dCVGvQJPz.SkyboxDn='rbxassetid://'..SDukgEzas[s][2]; dCVGvQJPz.SkyboxFt='rbxassetid://'..SDukgEzas[s][3]; dCVGvQJPz.SkyboxLf='rbxassetid://'..SDukgEzas[s][4]; dCVGvQJPz.SkyboxRt='rbxassetid://'..SDukgEzas[s][5]; dCVGvQJPz.SkyboxUp='rbxassetid://'..SDukgEzas[s][6] end end })

    local aXsuNvBE = dgGFlKNhx:Section({Name= 'World ESP', Side = 2 })
    aXsuNvBE:Toggle({Name= 'World ESP', Flag = 'word', Default = false, Callback = function(s) EnziqNRwERb['word'] = s end })
    aXsuNvBE:Toggle({Name= 'Hemp', Flag = 'Hemp', Default = false, Callback = function(s) EnziqNRwERb['Hemp'] = s; Settings.Hemp.Enabled = s end }):Colorpicker({Name= 'Hemp Color', Flag = 'HempColor', Default = Color3.fromRGB(0, 255, 0), Callback = function(s) Settings.Hemp.Color = s end })
    aXsuNvBE:Slider({Name= 'Hemp Distance', Flag = 'Disti', Min = 100, Max = 1000, Default = 300, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['Disti'] = s; Settings.Hemp.MaxDistance = s end })
    aXsuNvBE:Toggle({Name= 'Stone', Flag = 'Stone', Default = false, Callback = function(s) EnziqNRwERb['Stone'] = s; Settings.stone.Enabled = s end }):Colorpicker({Name= 'Stone Color', Flag = 'StoneColor', Default = Color3.fromRGB(150, 150, 150), Callback = function(s) Settings.stone.Color = s end })
    aXsuNvBE:Slider({Name= 'Stone Distance', Flag = 'StoneDist', Min = 100, Max = 1000, Default = 450, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['StoneDist'] = s; Settings.stone.MaxDistance = s end })
    aXsuNvBE:Toggle({Name= 'Sulfur', Flag = 'Sulfur', Default = false, Callback = function(s) EnziqNRwERb['Sulfur'] = s; Settings.sulfur.Enabled = s end }):Colorpicker({Name= 'Sulfur Color', Flag = 'SulfurColor', Default = Color3.fromRGB(255, 200, 0), Callback = function(s) Settings.sulfur.Color = s end })
    aXsuNvBE:Slider({Name= 'Sulfur Distance', Flag = 'SulfurDist', Min = 100, Max = 1000, Default = 400, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['SulfurDist'] = s; Settings.sulfur.MaxDistance = s end })
    aXsuNvBE:Toggle({Name= 'Iron', Flag = 'Iron', Default = false, Callback = function(s) EnziqNRwERb['Iron'] = s; Settings.iron.Enabled = s end }):Colorpicker({Name= 'Iron Color', Flag = 'IronColor', Default = Color3.fromRGB(210, 129, 58), Callback = function(s) Settings.iron.Color = s end })
    aXsuNvBE:Slider({Name= 'Iron Distance', Flag = 'IronDist', Min = 100, Max = 1000, Default = 500, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['IronDist'] = s; Settings.iron.MaxDistance = s end })
    aXsuNvBE:Toggle({Name= 'Raid ESP', Flag = 'BoomNigar', Default = false, Callback = function(s) EnziqNRwERb['BoomNigar'] = s end }):Colorpicker({Flag= 'giganigacolar', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) EnziqNRwERb['giganigacolar'] = {Color=s,Transparency=0} end })
    aXsuNvBE:Slider({Name= 'Raid Lifetime', Flag = 'lifelife', Min = 1, Max = 40, Default = 15, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['lifelife'] = s; LIFETIME = s end })
end

--// ===================== MISC PAGE =====================
--// Movement section (moved from Movement page)
local EkkJBLMgK = ZjumHMhPNFq

do
    local aebWQizjmRst = EkkJBLMgK:Section({Name= 'Movement', Side = 2 })
    aebWQizjmRst:Toggle({Name= 'Always Shoot', Flag = 'Always Grounded', Default = false, Callback = function(s) EnziqNRwERb['Always Grounded'] = s end })
    aebWQizjmRst:Toggle({Name= 'No Jump Cooldown', Flag = 'NoJumpi', Default = false, Callback = function(s) EnziqNRwERb['NoJumpi'] = s end })
    aebWQizjmRst:Toggle({Name= 'Always Sprint', Flag = 'Always Sprint', Default = false, Tooltip = 'may lag back/rubberband depending on sprint speed', Callback = function(s) EnziqNRwERb['Always Sprint'] = s end })
    aebWQizjmRst:Slider({Name= 'Sprint Speed', Flag = 'Sprint Speed', Min = 0, Max = 37, Default = 27, Decimals = 0.01, Suffix = '', Callback = function(s) EnziqNRwERb['Sprint Speed'] = s end })
    aebWQizjmRst:Toggle({Name= 'No Fall Damage', Flag = 'NoFallDamage', Default = false, Callback = function(s) EnziqNRwERb['NoFallDamage'] = s end })
    aebWQizjmRst:Toggle({Name= 'Silent Walk', Flag = 'nofoot', Default = false, Callback = function(s) EnziqNRwERb['nofoot'] = s; SAWFlisaeft:Set(s) end })
    aebWQizjmRst:Toggle({Name= 'Minicopter Fly', Flag = 'CopterFly', Default = false, Risk = 'risky', Callback = function(s) EnziqNRwERb['CopterFly'] = s end })
    aebWQizjmRst:Slider({Name= 'Fly Speed', Flag = 'CopterSpeed', Min = 10, Max = 100, Default = 80, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['CopterSpeed'] = s end })
end

--// Spinbot section (in Misc, right side under Movement)
local UTYrgXLoKh = ZjumHMhPNFq

do
    local PbKdZiMyC = UTYrgXLoKh:Section({Name= 'Anti-Aim', Side = 2 })
    PbKdZiMyC:Toggle({Name= 'Spinbot', Flag = 'Anti Aim', Default = false, Callback = function(s) EnziqNRwERb['Anti Aim'] = s end })
    PbKdZiMyC:Toggle({Name= 'Local Head Rappery', Flag = 'Jittar', Default = false, Callback = function(s) EnziqNRwERb['Jittar'] = s; if s then EnableFakePitch() else DisableFakePitch() end end }):Keybind({Flag= 'Spinar', Default = Enum.KeyCode.N, Mode = 'Toggle', Callback = function(s) EnziqNRwERb['Spinar'] = type(s) == "table" and s or {active= s == true} end })
    PbKdZiMyC:Slider({Name= 'Spinbot Speed', Flag = 'Anti Aim Speed', Min = 1, Max = 200, Default = 50, Decimals = 1, Suffix = '', Callback = function(s) EnziqNRwERb['Anti Aim Speed'] = s end })
    PbKdZiMyC:Toggle({Name= "Underground AA", Flag = "Underground AA", Default = false, Risk = 'risky', Tooltip = 'may not work', Callback = function(LkPCtYFxbPkq)
        if LkPCtYFxbPkq then
            if not _G.undergroundConnection then
                _G.dysenc = {}
                local xZNajpiWxweT = QajQeTLyeF.new("Animation")
                xZNajpiWxweT.AnimationId = "rbxassetid://13435049596"
                _G.undergroundConnection = kViDmXEEMSQC.Heartbeat:Connect(function()
                    local HPWTqsEcvEF = EnziqNRwERb["Underground AA Keybind"]
                    if HPWTqsEcvEF and type(HPWTqsEcvEF) == "table" and HPWTqsEcvEF.active then
                        if not _G.animationTrack or not _G.animationTrack.IsPlaying then
                            CnNOmZmbEvte(function()
                                local oSjnjdBXU = lp2.Character
                                local HFRFRhgQedIK = oSjnjdBXU and oSjnjdBXU:FindFirstChildWhichIsA("Humanoid")
                                if HFRFRhgQedIK then
                                    _G.animationTrack = HFRFRhgQedIK:LoadAnimation(xZNajpiWxweT)
                                    _G.animationTrack.Looped = true
                                    _G.animationTrack:Play()
                                end
                            end)
                        end
                        local oSjnjdBXU = lp2.Character
                        local fzxvzIUrABxr = oSjnjdBXU and oSjnjdBXU:FindFirstChild("HumanoidRootPart")
                        if fzxvzIUrABxr then
                            local SJnEyHOiiER = fzxvzIUrABxr.CFrame
                            local dWAaHUJWAgyT = SJnEyHOiiER.Rotation
                            fzxvzIUrABxr.CFrame = SJnEyHOiiER + Vector3.new(0, -1.9, 0)
                            task.defer(function()
                                if fzxvzIUrABxr and fzxvzIUrABxr.Parent then
                                    local DiYOeWizQKq = fzxvzIUrABxr.Position
                                    fzxvzIUrABxr.CFrame = CFrame.new(DiYOeWizQKq.X, SJnEyHOiiER.Position.Y, DiYOeWizQKq.Z) * dWAaHUJWAgyT
                                end
                            end)
                        end
                    else
                        if _G.animationTrack and _G.animationTrack.IsPlaying then
                            CnNOmZmbEvte(function() _G.animationTrack:Stop() end)
                        end
                    end
                end)
            end
        else
            if _G.undergroundConnection then
                _G.undergroundConnection:Disconnect()
                _G.undergroundConnection = nil
            end
            if _G.animationTrack then
                CnNOmZmbEvte(function() _G.animationTrack:Stop(); _G.animationTrack:Destroy() end)
                _G.animationTrack = nil
            end
        end
    end }):Keybind({Flag= "Underground AA Keybind", Default = Enum.KeyCode.X, Mode = "Toggle", Callback = function(s) EnziqNRwERb["Underground AA Keybind"] = type(s) == "table" and s or {active= s == true} end })
end

--// ===================== MISC PAGE =====================
do
    local bKRFVIydJbAu = ZjumHMhPNFq:Section({Name= 'Camera', Side = 1 })
    bKRFVIydJbAu:Toggle({Name= 'Camera FOV', Flag = 'FOV', Default = false, Callback = function(s) EnziqNRwERb['FOV'] = s end })
    bKRFVIydJbAu:Slider({Name= 'FOV Amount', Flag = 'FOV Ammount', Min = 30, Max = 120, Default = 70, Decimals = 1, Suffix = '°', Callback = function(s) EnziqNRwERb['FOV Ammount'] = s end })
    bKRFVIydJbAu:Toggle({Name= 'Zoom', Flag = 'Zoom', Default = false, Callback = function(s) EnziqNRwERb['Zoom'] = s end }):Keybind({Flag= 'Zoom Keybind', Default = Enum.KeyCode.V, Mode = 'Hold', Callback = function(s) EnziqNRwERb['Zoom Keybind'] = type(s) == "table" and s or {active= s == true} end })
    bKRFVIydJbAu:Slider({Name= 'Zoom Amount', Flag = 'Zoom Ammount', Min = 5, Max = 70, Default = 30, Decimals = 1, Suffix = '°', Callback = function(s) EnziqNRwERb['Zoom Ammount'] = s end })
    bKRFVIydJbAu:Toggle({Name= 'Freecam', Flag = 'Enable Freecam', Default = false, Callback = function(s) EnziqNRwERb['Enable Freecam'] = s end }):Keybind({Flag= 'Freecam Keybind', Default = Enum.KeyCode.Z, Mode = 'Toggle', Callback = function(s) EnziqNRwERb['Freecam Keybind'] = type(s) == "table" and s or {active= s == true} end })
    bKRFVIydJbAu:Slider({Name= 'Freecam Speed', Flag = 'Freecam Speed', Min = 0.5, Max = 10, Default = 2, Decimals = 0.1, Suffix = '', Callback = function(s) EnziqNRwERb['Freecam Speed'] = s end })
    bKRFVIydJbAu:Slider({Name= 'Freecam Sensitivity', Flag = 'Freecam Sensitivity', Min = 0.1, Max = 1, Default = 0.3, Decimals = 0.01, Suffix = '', Callback = function(s) EnziqNRwERb['Freecam Sensitivity'] = s end })
    bKRFVIydJbAu:Toggle({Name= 'Third Person', Flag = 'Third Person', Default = false, Callback = function(s) EnziqNRwERb['Third Person'] = s end }):Keybind({Flag= 'Third Person Key', Default = Enum.KeyCode.I, Mode = 'Toggle', Callback = function(s) EnziqNRwERb['Third Person Key'] = type(s) == "table" and s or {active= s == true} end })
    bKRFVIydJbAu:Slider({Name= 'Third Person Distance', Flag = 'Third Person Distance', Min = 1, Max = 30, Default = 5, Decimals = 0.1, Suffix = '', Callback = function(s) EnziqNRwERb['Third Person Distance'] = s end })

    local zUppLaQwkgZZ = ZjumHMhPNFq:Section({Name= 'Potato Graphics', Side = 1 })
    zUppLaQwkgZZ:Toggle({Name= 'Potato Graphics', Flag = 'potato_mode', Default = false, Tooltip = 'this is irreversible, you can not reverse this', Callback = function(LkPCtYFxbPkq)
        if LkPCtYFxbPkq then
            local GzedwMzMRxt = game:GetService("Lighting")
            local ZTLrglcp = WzuRBlWDxxqo.Terrain
            ZTLrglcp.WaterWaveSize = 0
            ZTLrglcp.WaterWaveSpeed = 0
            ZTLrglcp.WaterReflectance = 0
            ZTLrglcp.WaterTransparency = 0
            CnNOmZmbEvte(function() sethiddenproperty(ZTLrglcp, "Decoration", false) end)
            GzedwMzMRxt.GlobalShadows = false
            GzedwMzMRxt.FogEnd = 9999
            GzedwMzMRxt.FogStart = 9999
            GzedwMzMRxt.Brightness = 0
            GzedwMzMRxt.Ambient = Color3.new(0.5, 0.5, 0.5)
            for _, v in uofVwpDUZ(GzedwMzMRxt:GetChildren()) do
                CnNOmZmbEvte(function()
                    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect")
                    or v:IsA("ColorCorrectionEffect") or v:IsA("DepthOfFieldEffect") then
                        v.Enabled = false
                    end
                end)
            end
            for _, v in uofVwpDUZ(WzuRBlWDxxqo:GetDescendants()) do
                CnNOmZmbEvte(function()
                    if v:IsA("BasePart") then
                        v.Material = Enum.Material.Plastic
                        v.Reflectance = 0
                        v.CastShadow = false
                    elseif v:IsA("Decal") or v:IsA("Texture") then
                        v.Transparency = 1
                    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke")
                    or v:IsA("Fire") or v:IsA("Sparkles") then
                        v.Enabled = false
                    elseif v:IsA("PointLight") or v:IsA("SpotLight") or v:IsA("SurfaceLight") then
                        v.Enabled = false
                    elseif v:IsA("SurfaceAppearance") then
                        v:Destroy()
                    end
                end)
            end
            CnNOmZmbEvte(function()
                setfflag("DFIntDebugFRMQualityLevelOverride",   "1")
                setfflag("DFFlagTextureQualityOverrideEnabled", "true")
                setfflag("DFIntTextureQualityOverride",         "0")
                setfflag("FFlagFixGraphicsQuality",             "true")
                setfflag("FFlagCommitToGraphicsQualityFix",     "true")
                setfflag("FIntRenderShadowIntensity",           "0")
                setfflag("DFIntRenderCloudDensity",             "0")
                setfflag("FIntDebugForceMSAASamples",           "0")
                setfflag("DFIntTaskSchedulerTargetFps",         "9999")
                setfflag("DFIntCullFactorPixelThresholdShadowMapHighQuality", "2048")
                setfflag("DFIntCullFactorPixelThresholdShadowMapLowQuality",  "2048")
            end)
            WzuRBlWDxxqo.DescendantAdded:Connect(function(v)
                if v:IsA("BasePart") then
                    CnNOmZmbEvte(function() v.CastShadow = false end)
                end
            end)
            CnNOmZmbEvte(function() PYMBJvUCOh:Notification('FPS | Potato Mode enabled!', 3) end)
        end
    end })
end

PYMBJvUCOh:Notification('dopamine.wtf | loaded propperly', 5)

--// [Rest of the code remains the same - all the render loops, hooks, etc. unchanged]
--// I'll now paste the rest of the functionality that wasn't modified

do
    local ZaNWvuzW = nil
    local sJTIhtlhR = false
    local LKqUAbHOQ = 80

    local function oxgABWCCm()
        local oSjnjdBXU = DXWugHbKILJ.Character
        if not oSjnjdBXU then return false, nil end
        local HFRFRhgQedIK = oSjnjdBXU:FindFirstChildOfClass("Humanoid")
        if not HFRFRhgQedIK or not HFRFRhgQedIK.SeatPart then return false, nil end
        local GWTNFkhw = HFRFRhgQedIK.SeatPart
        local pAyBgzSlDqbL = GWTNFkhw.Parent
        if not pAyBgzSlDqbL then return false, nil end
        if pAyBgzSlDqbL.Name ~= "Minicopter" then return false, nil end
        local cueXgKtW = pAyBgzSlDqbL:FindFirstChild("Base")
        if not cueXgKtW then return false, nil end
        return true, cueXgKtW
    end

    local function WlqCwagQIlYU(cueXgKtW)
        if sJTIhtlhR then return end
        sJTIhtlhR = true

        ZaNWvuzW = kViDmXEEMSQC.RenderStepped:Connect(function(dt)
            local mhflhVwh, ttobsbHGn = oxgABWCCm()
            if not mhflhVwh then
                sJTIhtlhR = false
                ZaNWvuzW:Disconnect()
                ZaNWvuzW = nil
                getgenv()._flyActive = false
                return
            end

            if not EnziqNRwERb["CopterFly"] then
                getgenv()._flyActive = false
                return
            end
            getgenv()._flyActive = true

            local RXvyiVUY = apAMQyQhUl.CurrentCamera
            local cIZgamRHZIN = ttobsbHGn.CFrame
            local bMTlckrMdP = Vector3.zero

            local wQvPTpZK = RXvyiVUY.CFrame.LookVector
            local lprPAKIbkl = RXvyiVUY.CFrame.RightVector

            local ViqwXWTTSpi   = math.atan2(-wQvPTpZK.X, -wQvPTpZK.Z)
            local YYGhVWTX = math.asin(math.clamp(wQvPTpZK.Y, -1, 1))

            if eekqtcHo:IsKeyDown(Enum.KeyCode.W) then bMTlckrMdP += wQvPTpZK end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.S) then bMTlckrMdP -= wQvPTpZK end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.A) then bMTlckrMdP -= lprPAKIbkl end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.D) then bMTlckrMdP += lprPAKIbkl end

            if eekqtcHo:IsKeyDown(Enum.KeyCode.LeftShift) then
                bMTlckrMdP += Vector3.new(0, 1, 0)
            end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.LeftControl) then
                bMTlckrMdP -= Vector3.new(0, 1, 0)
            end

            if bMTlckrMdP.Magnitude > 0 then
                local ZgotpyVwYn = EnziqNRwERb["CopterSpeed"] or 80
                local PptrzbidFD = cIZgamRHZIN.Position + bMTlckrMdP.Unit * ZgotpyVwYn * dt
                ttobsbHGn.CFrame = CFrame.new(PptrzbidFD)
                    * CFrame.Angles(0, ViqwXWTTSpi, 0)
                    * CFrame.Angles(YYGhVWTX * 0.5, 0, 0)
                ttobsbHGn.AssemblyLinearVelocity = Vector3.zero
                ttobsbHGn.AssemblyAngularVelocity = Vector3.zero
            else
                ttobsbHGn.CFrame = CFrame.new(cIZgamRHZIN.Position)
                    * CFrame.Angles(0, ViqwXWTTSpi, 0)
                ttobsbHGn.AssemblyLinearVelocity = Vector3.zero
                ttobsbHGn.AssemblyAngularVelocity = Vector3.zero
            end
        end)
    end

    local function KcpCzzgHeSY()
        local mhflhVwh, cueXgKtW = oxgABWCCm()
        if mhflhVwh and not sJTIhtlhR then
            WlqCwagQIlYU(cueXgKtW)
        end
    end

    task.spawn(function()
        while true do
            task.wait(0.5)
            KcpCzzgHeSY()
        end
    end)

    DXWugHbKILJ.CharacterAdded:Connect(function()
        sJTIhtlhR = false
        if ZaNWvuzW then
            CnNOmZmbEvte(function() ZaNWvuzW:Disconnect() end)
            ZaNWvuzW = nil
        end
    end)
end

--// Sync all remaining flags that don't have explicit callbacks
task.spawn(function()
    task.wait(0.5)
    local szAtHVYU = {
        ['Chamsi'] = false, ['Colarss'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['GunNiger'] = false, ['Colarss2'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['gaymaterial'] = 'Neon', ['gunChamsMaterial'] = 'Neon', ['Viewmodel Position'] = false,
        ['No Viewmodel Bob'] = false, ['No Gun Effects'] = false,
        ['Viewmodel Position X'] = 0, ['Viewmodel Position Y'] = 0, ['Viewmodel Position Z'] = 0,
        ['Rotatin X'] = 0, ['Rotatin Position Y'] = 0, ['Rotatin Position Z'] = 0,
        ['Bullet Tracers'] = false, ['Tracer Color'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['Hitmarkers'] = false, ['Hitlogs'] = false, ['Hitsounds'] = false,
        ['HitmarkerColor'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['No Grass'] = false, ['Enable No Fog'] = false, ['Lighting Brightness'] = 2,
        ['Enable Fullbright'] = false, ['Enable Ambient'] = false, ['Enable Outdoor Ambient'] = false,
        ['Outdoor Ambient Accent'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['Ambient Accent'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['word'] = false, ['Hemp'] = false, ['Stone'] = false, ['Sulfur'] = false,
        ['Iron'] = false, ['BoomNigar'] = false,
        ['Skybox Enabled'] = false,
        ['StoneDist'] = 450, ['SulfurDist'] = 400, ['IronDist'] = 500,
        ['giganigacolar'] = {Color=Color3.fromRGB(0, 191, 255),Transparency=0},
        ['Always Grounded'] = false, ['NoJumpi'] = false,
        ['Always Sprint'] = false, ['NoFallDamage'] = false, ['NoSpikeDmg'] = false,
        ['FlyEnabled'] = false, ['FlySpeed'] = 40, ['FlyKeybind'] = {active=false,mode='Toggle',key=Enum.KeyCode.V},
        ['Silent Walk'] = false,
        ['Strafe'] = false, ['StrafeBind'] = {active=false,mode='Toggle',key=Enum.KeyCode.U},
        ['Strafe Dist'] = 5, ['Strafe Speed'] = 16, ['Strafe Random'] = 4,
        ['StrafeMode'] = 'Spin', ['Sprint Speed'] = 27,
        ['Anti Aim'] = false, ['Jittar'] = false,
        ['Spinar'] = {active=false,mode='Toggle',key=Enum.KeyCode.N},
        ['Anti Aim Speed'] = 50, ['Underground AA'] = false,
        ['Underground AA Keybind'] = {active=false,mode='Toggle',key=Enum.KeyCode.X},
        ['FOV'] = false, ['FOV Ammount'] = 70, ['Zoom'] = false,
        ['Zoom Keybind'] = {active=false,mode='Hold',key=Enum.KeyCode.Z},
        ['Zoom Ammount'] = 30, ['Enable Freecam'] = false,
        ['Freecam Keybind'] = {active=false,mode='Toggle',key=Enum.KeyCode.K},
        ['Freecam Speed'] = 2, ['Freecam Sensitivity'] = 0.3,
        ['Third Person'] = false,
        ['Third Person Key'] = {active=false,mode='Toggle',key=Enum.KeyCode.J},
        ['Third Person Distance'] = 5,
        ['NoRecoil'] = false, ['ForceShoot'] = false,
        ['No Spread'] = false, ['gun firerate'] = false, ['gun auto'] = false,
        ['rapid fire speed'] = 3,
        ['MeleeMods'] = false, ['MeleeSwingSpeed'] = 3, ['MeleeSwingRange'] = 5,
        ['CopterFly'] = false, ['CopterSpeed'] = 80,
        ['Admin'] = false, ['StaffAll'] = false,
    }
    for k, v in YjeanuOKx(szAtHVYU) do
        if EnziqNRwERb[k] == nil then EnziqNRwERb[k] = v end
    end
end)

--// optimizers (no visual change)
do
    local ZvnsjYaHgnl = JuxqvRMhBcl
    CnNOmZmbEvte(function()
        ZvnsjYaHgnl("setpause", 150)
        ZvnsjYaHgnl("setstepmul", 200)
    end)

    --// cached players list (rebuilt only on add/remove), avoids per-frame GetPlayers() allocations
    do
        local kytCXrIHIoIc = cloneref(game:GetService("Players"))
        local ROvWSfePln = kytCXrIHIoIc:GetPlayers()
        kytCXrIHIoIc.PlayerAdded:Connect(function(p) table.insert(ROvWSfePln, p) end)
        kytCXrIHIoIc.PlayerRemoving:Connect(function(p)
            for i = #ROvWSfePln, 1, -1 do
                if ROvWSfePln[i] == p then table.remove(ROvWSfePln, i) break end
            end
        end)
        getgenv()._playerCache = ROvWSfePln
    end

    --// keep a cached camera reference fresh, avoids repeated CurrentCamera lookups
    local ofJGIbUWyWd = apAMQyQhUl.CurrentCamera
    game:GetService("RunService").RenderStepped:Connect(function()
        ofJGIbUWyWd = apAMQyQhUl.CurrentCamera or ofJGIbUWyWd
        getgenv()._camCache = ofJGIbUWyWd
    end)

    --// periodic incremental GC to flatten memory spikes
    task.spawn(function()
        while task.wait(30) do
            CnNOmZmbEvte(function() ZvnsjYaHgnl("collect") end)
        end
    end)
end

--// cached camera local for hot loops
local jOoJWRSAc = apAMQyQhUl.CurrentCamera
game:GetService("RunService").Heartbeat:Connect(function()
    jOoJWRSAc = apAMQyQhUl.CurrentCamera or jOoJWRSAc
end)

local tXkfRxyKs = {}
local rosHxkSz = 0.1
local GdBZbkOYDi = 0

local function ZjKAoPqH(obj)
    if obj:IsA("BasePart") then
        return obj.Position
    elseif obj:IsA("Model") then
        return obj:GetPivot().Position
    end
end

local function YOREBjFq(qGFqiGfG, PJsABlOJQZ, qPZbwlbqt)
    local rFmIMkGrRo = QajQeTLyeF.new("BillboardGui")
    rFmIMkGrRo.Name = "ItemESP"
    rFmIMkGrRo.Adornee = qGFqiGfG
    rFmIMkGrRo.Size = UDim2.fromOffset(110, 22)
    rFmIMkGrRo.StudsOffset = Vector3.new(0, 1.6, 0)
    rFmIMkGrRo.AlwaysOnTop = true

    local gABBQlkFhqyo = QajQeTLyeF.new("TextLabel")
    gABBQlkFhqyo.Size = UDim2.fromScale(1, 1)
    gABBQlkFhqyo.BackgroundTransparency = 1
    gABBQlkFhqyo.TextScaled = false
    gABBQlkFhqyo.TextSize = 13  
    gABBQlkFhqyo.Font = Enum.Font.SourceSansBold 
    gABBQlkFhqyo.TextColor3 = qPZbwlbqt
    gABBQlkFhqyo.TextStrokeTransparency = 0.3
    gABBQlkFhqyo.TextStrokeColor3 = Color3.new(0, 0, 0) 
    gABBQlkFhqyo.Text = PJsABlOJQZ
    gABBQlkFhqyo.Parent = rFmIMkGrRo

    rFmIMkGrRo.Parent = qGFqiGfG
    return rFmIMkGrRo
end

local function UvtiYvyk(obj, QUacHCRUYNN)
    if not EnziqNRwERb["word"] or not QUacHCRUYNN.Enabled then 
        if tXkfRxyKs[obj] then
            tXkfRxyKs[obj]:Destroy()
            tXkfRxyKs[obj] = nil
        end
        return
    end
    local UeOeJMKmTvKk = dUETjKVVhR:FindFirstChild("HumanoidRootPart")
    if not UeOeJMKmTvKk then return end
    local FuTkddDFYuH = UeOeJMKmTvKk.Position
    if not FuTkddDFYuH then return end

    local WYWDPFRHt = ZjKAoPqH(obj)
    if not WYWDPFRHt then return end

    local KWASFwcua = (WYWDPFRHt - FuTkddDFYuH).Magnitude
    if KWASFwcua > QUacHCRUYNN.MaxDistance then
        if tXkfRxyKs[obj] then
            tXkfRxyKs[obj]:Destroy()
            tXkfRxyKs[obj] = nil
        end
        return
    end

    local qGFqiGfG = obj:IsA("Model") and obj.PrimaryPart or obj
    qGFqiGfG = qGFqiGfG or obj:FindFirstChildWhichIsA("BasePart")
    if not qGFqiGfG then return end

    local PJsABlOJQZ = string.format("%s [%.0fm]", obj.Name, KWASFwcua)

    if not tXkfRxyKs[obj] then
        tXkfRxyKs[obj] = YOREBjFq(qGFqiGfG, PJsABlOJQZ, QUacHCRUYNN.Color)
    else
        local gABBQlkFhqyo = tXkfRxyKs[obj]:FindFirstChildOfClass("TextLabel")
        if gABBQlkFhqyo then
            gABBQlkFhqyo.Text = PJsABlOJQZ
        end
    end
end

local function afivtlaV()
    if tick() - GdBZbkOYDi < rosHxkSz then
        return
    end
    GdBZbkOYDi = tick()

    local AlBohLNw = WzuRBlWDxxqo:FindFirstChild("Hemp")
    if AlBohLNw then
        for _, obj in uofVwpDUZ(AlBohLNw:GetChildren()) do
            UvtiYvyk(obj, Settings.Hemp)
        end
    end

    local seETMhkb = WzuRBlWDxxqo:FindFirstChild("ores")
    if seETMhkb then
        for _, obj in uofVwpDUZ(seETMhkb:GetChildren()) do
            local QUacHCRUYNN = Settings[obj.Name]
            if QUacHCRUYNN then
                UvtiYvyk(obj, QUacHCRUYNN)
            end
        end
    end
end

local LjLNaNWmf = {}

function LjLNaNWmf:Instance(ClassName, Properties)
    local QajQeTLyeF = QajQeTLyeF.new(ClassName)
    for udqfjGdZsfFL, BEBEAVTqVC in HiBdrOXRWuln, Properties do
        QajQeTLyeF[udqfjGdZsfFL] = BEBEAVTqVC
    end
    return QajQeTLyeF
end

local THCmbjno = false
local UIVshvTNx = false

function LjLNaNWmf:CreateBeam(TcGadviZsXW, NcuwhBXCsoRr)
    if not EnziqNRwERb["Bullet Tracers"] then return end

    if getgenv().silent and mZVDeZgI then
        NcuwhBXCsoRr = mZVDeZgI.Position
    end

    local reRQopySx =
        EnziqNRwERb["Tracer Color"] and EnziqNRwERb["Tracer Color"].Color
        or Color3.new(0, 191, 255)

    local qFzJUsjf = IRnZtCdvAX[EnziqNRwERb["Bulat Type"]]
    if not qFzJUsjf then return end

    local GNPZMreuDJ = QajQeTLyeF.new("Model")
    GNPZMreuDJ.Parent = apAMQyQhUl

    local sGsQzregZ = QajQeTLyeF.new("Part")
    sGsQzregZ.Size = Vector3.new(0.001, 0.001, 0.001)
    sGsQzregZ.Transparency = 1
    sGsQzregZ.Anchored = true
    sGsQzregZ.CanCollide = false
    sGsQzregZ.Position = TcGadviZsXW
    sGsQzregZ.Parent = GNPZMreuDJ

    local CnmNnaWndUed = sGsQzregZ:Clone()
    CnmNnaWndUed.Position = NcuwhBXCsoRr
    CnmNnaWndUed.Parent = GNPZMreuDJ

    local zMZjGcBlsEiQ = QajQeTLyeF.new("Attachment", sGsQzregZ)
    local hWahtOOA = QajQeTLyeF.new("Attachment", CnmNnaWndUed)

    local LixYQRCP = QajQeTLyeF.new("Beam")
    LixYQRCP.Attachment0 = zMZjGcBlsEiQ
    LixYQRCP.Attachment1 = hWahtOOA
    LixYQRCP.Parent = GNPZMreuDJ

    LixYQRCP.FaceCamera = true
    LixYQRCP.Segments = 20 
    LixYQRCP.Width0 = 0.75
    LixYQRCP.Width1 = 0.75

    LixYQRCP.Color = ColorSequence.new(reRQopySx)
    LixYQRCP.LightEmission = 1
    LixYQRCP.LightInfluence = 0

    LixYQRCP.Texture = qFzJUsjf
    LixYQRCP.TextureMode = Enum.TextureMode.Wrap
    LixYQRCP.TextureLength = 12 
    LixYQRCP.TextureSpeed = 2   

    task.delay(3, function()
        GNPZMreuDJ:Destroy()
    end)

    return GNPZMreuDJ
end

local pLsdsuIgg = false

function LjLNaNWmf:CreateHitmarker(Direction)
    if not EnziqNRwERb["Hitmarkers"] or not pLsdsuIgg then return end
    pLsdsuIgg = false

    local muNAMQSKghn = LjLNaNWmf:Instance("Model", {Parent= apAMQyQhUl })

    local YUdIoYVAZY = LjLNaNWmf:Instance("Part", {Position= Direction,
        Size = Vector3.new(0.1, 0.1, 0.1),
        Transparency = 1,
        CanCollide = false,
        Anchored = true,
        Parent = muNAMQSKghn,
    })

    local GvkLtZNDHHes = LjLNaNWmf:Instance("BillboardGui", {Size= UDim2.new(0, 20, 0, 20),
        AlwaysOnTop = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        Parent = YUdIoYVAZY,
    })

    local EQoHVqTuqme = {
        { UDim2.new(0, 7, 0, 1), UDim2.new(0, 0, 0.35, -6), 45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(0, 0, 0.35, 4), -45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(1, -10, 0.35, -6), -45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(1, -10, 0.35, 4), 45 },
    }

    for _, Data in HiBdrOXRWuln, EQoHVqTuqme do
        local gLVXiEDkvm = LjLNaNWmf:Instance("Frame", {Size= Data[1],
            BackgroundColor3 = type(EnziqNRwERb["HitmarkerColor"]) == "table" and EnziqNRwERb["HitmarkerColor"].Color or Color3.new(0, 191, 255),
            BackgroundTransparency = 0,
            BorderSizePixel = 0,
            Position = Data[2],
            Rotation = Data[3],
            Parent = GvkLtZNDHHes,
        })
    end
    pLsdsuIgg = false
    task.delay(5, function()
        for udqfjGdZsfFL = 1, 100 do
            for _, Object in YjeanuOKx(GvkLtZNDHHes:GetChildren()) do
                if Object:IsA("Frame") then
                    Object.BackgroundTransparency = udqfjGdZsfFL / 100
                end
            end

            task.wait()
        end

        GvkLtZNDHHes:Destroy()
        YUdIoYVAZY:Destroy()
        muNAMQSKghn:Destroy()
    end)
end

local oHWWOnvPNk = game:GetService("ReplicatedStorage")
local tVJghaPEjO = require(oHWWOnvPNk.Gun.Scripts.FireVisuals)

local urXCAMVF = tVJghaPEjO.new

tVJghaPEjO.new = function(...)
    local PypkHNpYF = urXCAMVF(...)

    if PypkHNpYF and PypkHNpYF.Hit then
        PypkHNpYF.Hit.Event:Connect(function(hitResult)
            if not hitResult then return end
            if not hitResult.Position then return end

            if PypkHNpYF.IsReplicated then
                return 
            end

            local RXvyiVUY = apAMQyQhUl.CurrentCamera
            if not RXvyiVUY then return end

            local TcGadviZsXW = RXvyiVUY.CFrame.Position
            local yffXHKHwQD = hitResult.Position
            LjLNaNWmf:CreateHitmarker(yffXHKHwQD)

            LjLNaNWmf:CreateBeam(TcGadviZsXW, yffXHKHwQD)
        end)
    end

    return PypkHNpYF
end

--// CAMERA FOV + ZOOM
do
    local bvJwPyIlwIf = 70
    local xyMvQwAuBMk = nil

    local function GGjEOxPAjB()
        if xyMvQwAuBMk then return end
        xyMvQwAuBMk = kViDmXEEMSQC.RenderStepped:Connect(function()
            local RXvyiVUY = apAMQyQhUl.CurrentCamera
            if not RXvyiVUY then return end

            if EnziqNRwERb["FOV"] then
                local PQDzwTfRsje = EnziqNRwERb["FOV Ammount"] or 70
                if RXvyiVUY.FieldOfView ~= PQDzwTfRsje then
                    getgenv()._scriptFOV = true
                    RXvyiVUY.FieldOfView = PQDzwTfRsje
                    getgenv()._scriptFOV = false
                end
            end

            if EnziqNRwERb["Zoom"] and type(EnziqNRwERb["Zoom Keybind"]) == "table" and EnziqNRwERb["Zoom Keybind"].active then
                local EVHJMCaUnpq = EnziqNRwERb["Zoom Ammount"] or 30
                if RXvyiVUY.FieldOfView ~= EVHJMCaUnpq then
                    getgenv()._scriptFOV = true
                    RXvyiVUY.FieldOfView = EVHJMCaUnpq
                    getgenv()._scriptFOV = false
                end
            elseif not EnziqNRwERb["FOV"] then
                if RXvyiVUY.FieldOfView ~= bvJwPyIlwIf then
                    getgenv()._scriptFOV = true
                    RXvyiVUY.FieldOfView = bvJwPyIlwIf
                    getgenv()._scriptFOV = false
                end
            end
        end)
    end

    GGjEOxPAjB()

    DXWugHbKILJ.CharacterAdded:Connect(function()
        task.wait(0.5)
        bvJwPyIlwIf = apAMQyQhUl.CurrentCamera.FieldOfView
    end)
end

-- No Spread
local oHWWOnvPNk = game:GetService("ReplicatedStorage")
local FxZPgFdT = require(oHWWOnvPNk.Gun.Scripts.GunBase)

local CkbDNDfPTKyt = FxZPgFdT.getSpread

function FxZPgFdT:getSpread(...)
    if not EnziqNRwERb["No Spread"] then
        return CkbDNDfPTKyt(PypkHNpYF, ...)
    end

    return 0
end

-- NO VIEWMODEL BOB + NO GUN EFFECTS
getgenv()._scriptFOV = false

local function wpafEiFZIllS(PQDzwTfRsje)
    getgenv()._scriptFOV = true
    vdmlnNdl.FieldOfView = PQDzwTfRsje
    getgenv()._scriptFOV = false
end

do
    local bvJwPyIlwIf = vdmlnNdl.FieldOfView
    local xyMvQwAuBMk = nil

    local function sQmDdGMW()
        if xyMvQwAuBMk then return end
        xyMvQwAuBMk = vdmlnNdl:GetPropertyChangedSignal("FieldOfView"):Connect(function()
            if not EnziqNRwERb["No Gun Effects"] then return end
            if getgenv()._scriptFOV then return end
            getgenv()._scriptFOV = true
            vdmlnNdl.FieldOfView = bvJwPyIlwIf
            getgenv()._scriptFOV = false
        end)
    end

    local function kmVZIDvo()
        if xyMvQwAuBMk then
            CnNOmZmbEvte(function() xyMvQwAuBMk:Disconnect() end)
            xyMvQwAuBMk = nil
        end
    end

    CnNOmZmbEvte(function()
        local HolBEBNlRxG = require(hYObRRfN.Gun.Scripts.GunClient)
        for _, JQNgpxISpJC in uofVwpDUZ({ "zoomIn", "zoomOut", "setZoom", "aimIn", "aimOut", "onAimIn", "onAimOut" }) do
            if type(HolBEBNlRxG[JQNgpxISpJC]) == "function" then
                local LZxBJiKE = HolBEBNlRxG[JQNgpxISpJC]
                HolBEBNlRxG[JQNgpxISpJC] = function(PypkHNpYF, ...)
                    if EnziqNRwERb["No Gun Effects"] then return end
                    return LZxBJiKE(PypkHNpYF, ...)
                end
            end
        end
    end)

    CnNOmZmbEvte(function()
        local eYsAFDeXZ = require(hYObRRfN.Tool.Scripts.ToolClient)
        for _, JQNgpxISpJC in uofVwpDUZ({ "zoomIn", "zoomOut", "setZoom", "aimIn", "aimOut", "onAimIn", "onAimOut" }) do
            if type(eYsAFDeXZ[JQNgpxISpJC]) == "function" then
                local LZxBJiKE = eYsAFDeXZ[JQNgpxISpJC]
                eYsAFDeXZ[JQNgpxISpJC] = function(PypkHNpYF, ...)
                    if EnziqNRwERb["No Gun Effects"] then return end
                    return LZxBJiKE(PypkHNpYF, ...)
                end
            end
        end
    end)

    task.spawn(function()
        task.wait(2)
        for _, v in YjeanuOKx(getgc(true)) do
            if type(v) == "table" then
                for _, JQNgpxISpJC in uofVwpDUZ({ "zoomIn", "zoomOut", "aimIn", "aimOut", "setFOV", "setZoom" }) do
                    if type(xQtxUXtvoCv(v, JQNgpxISpJC)) == "function" then
                        local LZxBJiKE = xQtxUXtvoCv(v, JQNgpxISpJC)
                        lqXJCXnZN(v, JQNgpxISpJC, function(PypkHNpYF, ...)
                            if EnziqNRwERb["No Gun Effects"] then return end
                            return LZxBJiKE(PypkHNpYF, ...)
                        end)
                    end
                end
            end
        end
    end)

    sQmDdGMW()

    DXWugHbKILJ.CharacterAdded:Connect(function()
        bvJwPyIlwIf = vdmlnNdl.FieldOfView
        kmVZIDvo()
        task.wait(0.5)
        sQmDdGMW()
    end)
end

--// Viewmodel
local QEXlmPcCeSQt = require(oHWWOnvPNk.ViewModel.Scripts.ViewModel)

local urXCAMVF = QEXlmPcCeSQt.new
local nlNCMUvncLiY = setmetatable({}, {__mode= "k" })

QEXlmPcCeSQt.new = function(...)
	local WptfzqmqVOf = urXCAMVF(...)
	if typeof(WptfzqmqVOf) ~= "table" then
		return WptfzqmqVOf
	end

	if nlNCMUvncLiY[WptfzqmqVOf] then
		return WptfzqmqVOf
	end
	nlNCMUvncLiY[WptfzqmqVOf] = true

	return WptfzqmqVOf
end

local dteUBzmGlU = QEXlmPcCeSQt.updateCFrame
QEXlmPcCeSQt.updateCFrame = function(PypkHNpYF, smooth, dt)
	if EnziqNRwERb["No Viewmodel Bob"] and PypkHNpYF then
		CnNOmZmbEvte(function()
			if PypkHNpYF.bobOffset ~= nil then PypkHNpYF.bobOffset = CFrame.new() end
			if PypkHNpYF.swayOffset ~= nil then PypkHNpYF.swayOffset = CFrame.new() end
			if PypkHNpYF.bob ~= nil then PypkHNpYF.bob = Vector3.zero end
			if PypkHNpYF.sway ~= nil then PypkHNpYF.sway = Vector3.zero end
			if PypkHNpYF.bobCFrame ~= nil then PypkHNpYF.bobCFrame = CFrame.new() end
			if PypkHNpYF.swayCFrame ~= nil then PypkHNpYF.swayCFrame = CFrame.new() end
		end)
	end

	dteUBzmGlU(PypkHNpYF, smooth, dt)

	if not PypkHNpYF.viewModel then return end
	if not RAscSuTpWmN then return end

	local DiYOeWizQKq = CFrame.new(
		rrGuLpVxB or 0,
		MmtTAKTW or 0,
		mGPITWrxre or 0
	)

	local RuqPoRSOLq = CFrame.Angles(
		math.rad(KZvfZOcTZ or 0),
		math.rad(jeODIgmE or 0),
		math.rad(HwKEVmuXs or 0)
	)

	PypkHNpYF.viewModel:PivotTo(
		PypkHNpYF.viewModel:GetPivot() * DiYOeWizQKq * RuqPoRSOLq
	)
end

local oHWWOnvPNk = game:GetService("ReplicatedStorage")
local ZbORaBmSOsr = require(oHWWOnvPNk.ViewModel.Scripts.ViewModel)

local aNfACpEA = Enum.Material.Neon

local AOvLSPDlD = setmetatable({}, {__mode= "k" })

local function HJssoFnaHA(HEnhmxqDhr)
	if AOvLSPDlD[HEnhmxqDhr] then return end
	AOvLSPDlD[HEnhmxqDhr] = {Color= HEnhmxqDhr.Color,
		Material = HEnhmxqDhr.Material,
		CastShadow = HEnhmxqDhr.CastShadow
	}
end

local function jwiTfptrMO(WptfzqmqVOf)
	for _, ygDhqLRyA in uofVwpDUZ(WptfzqmqVOf:GetChildren()) do
		if ygDhqLRyA:IsA("Tool") then
			return ygDhqLRyA
		end
	end
end

local function aYGimTrsO(WptfzqmqVOf)
	if not WptfzqmqVOf then return end

	local jicRtGVUj = jwiTfptrMO(WptfzqmqVOf)
	if not jicRtGVUj then return end

	for _, ygDhqLRyA in uofVwpDUZ(jicRtGVUj:GetDescendants()) do
		if ygDhqLRyA:IsA("SurfaceAppearance") then
			ygDhqLRyA:Destroy()

		elseif ygDhqLRyA:IsA("BasePart") then
			HJssoFnaHA(ygDhqLRyA)

			ygDhqLRyA.Color = EnziqNRwERb["Colarss"].Color
			ygDhqLRyA.Material = Enum.Material[EnziqNRwERb["gunChamsMaterial"] or "Neon"]
			ygDhqLRyA.CastShadow = false
		end
	end
end

local function GffaKKDtkaW(WptfzqmqVOf)
	if not WptfzqmqVOf then return end

	local jicRtGVUj = jwiTfptrMO(WptfzqmqVOf)
	if not jicRtGVUj then return end

	for _, ygDhqLRyA in uofVwpDUZ(jicRtGVUj:GetDescendants()) do
		local uOABKytelU = AOvLSPDlD[ygDhqLRyA]
		if ygDhqLRyA:IsA("BasePart") and uOABKytelU then
			ygDhqLRyA.Color = uOABKytelU.Color
			ygDhqLRyA.Material = uOABKytelU.Material
			ygDhqLRyA.CastShadow = uOABKytelU.CastShadow
		end
	end
end

local function mjqiTVYCudD(WptfzqmqVOf)
	if not WptfzqmqVOf then return end

    local iiJNfxsG = dUETjKVVhR:FindFirstChildOfClass("Shirt")
	local DKcpHQnjMWl = dUETjKVVhR:FindFirstChildOfClass("Pants")

	if iiJNfxsG then iiJNfxsG:Destroy() end
	if DKcpHQnjMWl then DKcpHQnjMWl:Destroy() end

	for _, ygDhqLRyA in uofVwpDUZ(WptfzqmqVOf:GetDescendants()) do
		if ygDhqLRyA:IsA("SurfaceAppearance") and ygDhqLRyA.Parent and ygDhqLRyA.Parent:IsA("BasePart") then
			if string.find(ygDhqLRyA.Parent.Name:lower(), "arm") then
				ygDhqLRyA:Destroy()
			end

		elseif ygDhqLRyA:IsA("BasePart") then
			if string.find(ygDhqLRyA.Name:lower(), "arm") then
				HJssoFnaHA(ygDhqLRyA)

				ygDhqLRyA.Color = EnziqNRwERb["Colarss2"].Color
				ygDhqLRyA.Material = Enum.Material[EnziqNRwERb["gaymaterial"]]
				ygDhqLRyA.CastShadow = false
			end
		end
	end
end

local function plxMpfyRpU(WptfzqmqVOf)
	if not WptfzqmqVOf then return end

	for _, ygDhqLRyA in uofVwpDUZ(WptfzqmqVOf:GetDescendants()) do
		local uOABKytelU = AOvLSPDlD[ygDhqLRyA]
		if ygDhqLRyA:IsA("BasePart") and uOABKytelU then
			if string.find(ygDhqLRyA.Name:lower(), "arm") then
				ygDhqLRyA.Color = uOABKytelU.Color
				ygDhqLRyA.Material = uOABKytelU.Material
				ygDhqLRyA.CastShadow = uOABKytelU.CastShadow
			end
		end
	end
end

local function yXLlnXLPxrez(WptfzqmqVOf)
	if EnziqNRwERb["Chamsi"] then
		aYGimTrsO(WptfzqmqVOf)
	else
		GffaKKDtkaW(WptfzqmqVOf)
	end
	if EnziqNRwERb["GunNiger"] then
		mjqiTVYCudD(WptfzqmqVOf)
	else
		plxMpfyRpU(WptfzqmqVOf)
	end
end

local HNnlgYuqH
CnNOmZmbEvte(function()
    HNnlgYuqH = hookfunction(ZbORaBmSOsr.createViewModel, function(PypkHNpYF, ...)
        HNnlgYuqH(PypkHNpYF, ...)
        if PypkHNpYF and PypkHNpYF.viewModel then
            yXLlnXLPxrez(PypkHNpYF.viewModel)
        end
    end)
end)

local xPkLsUxU = 0
kViDmXEEMSQC.Heartbeat:Connect(function()
    xPkLsUxU += 1
    if xPkLsUxU % 10 ~= 0 then return end
    if not (EnziqNRwERb["Chamsi"] or EnziqNRwERb["GunNiger"]) then return end
    CnNOmZmbEvte(function()
        local RXvyiVUY = apAMQyQhUl.CurrentCamera
        for _, v in uofVwpDUZ(RXvyiVUY:GetChildren()) do
            if v:IsA("Model") and v ~= DXWugHbKILJ.Character then
                yXLlnXLPxrez(v)
            end
        end
    end)
end)

Protected = QajQeTLyeF.new("ScreenGui", gethui())
Protected.IgnoreGuiInset = true

local TxnVSjTasgPb
local JQwtIHUVb

local function RcuIiFSwHL()
    if TxnVSjTasgPb and TxnVSjTasgPb.Parent then
        TxnVSjTasgPb:Destroy()
    end

    local adyftbHws = game:GetService("Players")
    local BfBhbpNYb = game:GetService("TextService")

    TxnVSjTasgPb = QajQeTLyeF.new("ScreenGui")
    TxnVSjTasgPb.Name = "PlayerArmorInfoGUI"
    TxnVSjTasgPb.ResetOnSpawn = false
    TxnVSjTasgPb.Enabled = true
    TxnVSjTasgPb.Parent = game:GetService("CoreGui")
    TxnVSjTasgPb.DisplayOrder = 999

    local AWmYOjCpSD = PYMBJvUCOh and PYMBJvUCOh.Theme or {Background= Color3.fromRGB(14, 17, 15),
        Border = Color3.fromRGB(12, 12, 12),
        Outline = Color3.fromRGB(42, 49, 45),
        Accent = Color3.fromRGB(0, 191, 255),
        Text = Color3.fromRGB(235, 235, 235),
        ["Text Stroke"] = Color3.fromRGB(0, 0, 0),
    }

    local kwjwaQPR = (PYMBJvUCOh and PYMBJvUCOh.Font) or kwjwaQPR.new("rbxasset://fonts/families/RobotoMono.json")

    JQwtIHUVb = QajQeTLyeF.new("Frame")
    JQwtIHUVb.Name = "ArmorInfo"
    JQwtIHUVb.Parent = TxnVSjTasgPb
    JQwtIHUVb.AnchorPoint = Vector2.new(0, 0.5)
    JQwtIHUVb.Position = UDim2.new(0, 12, 0.5, 0)
    JQwtIHUVb.Size = UDim2.new(0, 160, 0, 32)
    JQwtIHUVb.AutomaticSize = Enum.AutomaticSize.XY
    JQwtIHUVb.BackgroundColor3 = AWmYOjCpSD.Background
    JQwtIHUVb.BorderColor3 = AWmYOjCpSD.Border
    JQwtIHUVb.BorderSizePixel = 2

    local uUWXDPoCs = false
    local LDcTaVfSnY, vIaXMidTy
    local iwUZWTTfTft = game:GetService("UserInputService")

    JQwtIHUVb.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            uUWXDPoCs = true
            LDcTaVfSnY = input.Position
            vIaXMidTy = JQwtIHUVb.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    uUWXDPoCs = false
                end
            end)
        end
    end)

    iwUZWTTfTft.InputChanged:Connect(function(input)
        if uUWXDPoCs and input.UserInputType == Enum.UserInputType.MouseMovement then
            local ycFgYxcLnyM = input.Position - LDcTaVfSnY

            JQwtIHUVb.Position = UDim2.new(
                vIaXMidTy.X.Scale,
                vIaXMidTy.X.Offset + ycFgYxcLnyM.X,
                vIaXMidTy.Y.Scale,
                vIaXMidTy.Y.Offset + ycFgYxcLnyM.Y
            )
        end
    end)

    local lDTGAWdRmegK = QajQeTLyeF.new("UIStroke")
    lDTGAWdRmegK.Color = AWmYOjCpSD.Outline
    lDTGAWdRmegK.Thickness = 1
    lDTGAWdRmegK.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    lDTGAWdRmegK.Parent = JQwtIHUVb

    local MpcXFtDKAmQo = QajQeTLyeF.new("TextLabel")
    MpcXFtDKAmQo.Parent = JQwtIHUVb
    MpcXFtDKAmQo.FontFace = kwjwaQPR
    MpcXFtDKAmQo.TextColor3 = AWmYOjCpSD.Text
    MpcXFtDKAmQo.Text = "Loadout"
    MpcXFtDKAmQo.Size = UDim2.new(0, 0, 0, 20)
    MpcXFtDKAmQo.BackgroundTransparency = 1
    MpcXFtDKAmQo.Position = UDim2.new(0, 0, 0, -4)
    MpcXFtDKAmQo.BorderSizePixel = 0
    MpcXFtDKAmQo.AutomaticSize = Enum.AutomaticSize.X
    MpcXFtDKAmQo.TextSize = 9

    local NPjKQDPc = QajQeTLyeF.new("UIStroke")
    NPjKQDPc.Color = AWmYOjCpSD["Text Stroke"]
    NPjKQDPc.Thickness = 1
    NPjKQDPc.Transparency = 0.6
    NPjKQDPc.Parent = MpcXFtDKAmQo

    local JLfWsnIL = QajQeTLyeF.new("UIPadding")
    JLfWsnIL.PaddingTop = UDim.new(0, 8)
    JLfWsnIL.PaddingBottom = UDim.new(0, 12)
    JLfWsnIL.PaddingRight = UDim.new(0, 8)
    JLfWsnIL.PaddingLeft = UDim.new(0, 8)
    JLfWsnIL.Parent = JQwtIHUVb

    local tHGdUDyEiVJ = QajQeTLyeF.new("Frame")
    tHGdUDyEiVJ.Parent = JQwtIHUVb
    tHGdUDyEiVJ.Position = UDim2.new(0, 0, 0, 15)
    tHGdUDyEiVJ.BackgroundColor3 = AWmYOjCpSD.Accent
    tHGdUDyEiVJ.BorderSizePixel = 0
    tHGdUDyEiVJ.Size = UDim2.new(1, 0, 0, 1)

    local NHhdAHcY = 32

    local prUzSDkNrv = QajQeTLyeF.new("Frame")
    prUzSDkNrv.Parent = JQwtIHUVb
    prUzSDkNrv.BackgroundTransparency = 1
    prUzSDkNrv.Position = UDim2.new(0, 8, 0, 32)
    prUzSDkNrv.Size = UDim2.new(0, (NHhdAHcY + 8) * 6 + 4 * 5, 0, 0)
    prUzSDkNrv.AutomaticSize = Enum.AutomaticSize.Y
    prUzSDkNrv.ClipsDescendants = false

    local asvMsjMDc = QajQeTLyeF.new("UIGridLayout")
    asvMsjMDc.SortOrder = Enum.SortOrder.LayoutOrder
    asvMsjMDc.CellSize = UDim2.new(0, NHhdAHcY + 8, 0, NHhdAHcY + 8)
    asvMsjMDc.CellPadding = UDim2.new(0, 4, 0, 4)
    asvMsjMDc.FillDirection = Enum.FillDirection.Horizontal
    asvMsjMDc.HorizontalAlignment = Enum.HorizontalAlignment.Left
    asvMsjMDc.VerticalAlignment = Enum.VerticalAlignment.Top
    asvMsjMDc.Parent = prUzSDkNrv

    local function SmqFdnndkaL(SERvoUAhpQo)
        if not SERvoUAhpQo then
            return nil
        end

        if typeof(SERvoUAhpQo) == "Instance" and SERvoUAhpQo:IsA("Model") then
            return SERvoUAhpQo
        end

        if typeof(SERvoUAhpQo) == "Instance" and SERvoUAhpQo:IsA("Player") then
            return SERvoUAhpQo.Character
        end

        if typeof(SERvoUAhpQo) == "string" then
            local RQqRCnKMJ = adyftbHws:FindFirstChild(SERvoUAhpQo)

            if RQqRCnKMJ then
                return RQqRCnKMJ.Character
            end
        end

        return nil
    end

    local mXibhwMP = {
        "ak", "m4", "mp5", "pistol", "rifle", "shotgun", "sniper", "smg",
        "gun", "revolver", "crossbow", "bow", "lmg", "carbine", "assault",
        "semi", "burst", "auto", "weapon", "firearm", "musket", "minigun",
        "thompson", "uzi", "vector", "scar", "aug", "p90", "deagle",
    }

    local UjPgdlUAdK = {
        "helmet", "vest", "armor", "armour", "plate", "chest", "jacket",
        "hoodie", "shirt", "pants", "boots", "gloves", "mask", "balaclava",
        "hat", "cap", "hood", "coat", "suit", "gear", "kevlar", "cloth",
        "hazmat", "gasmask", "bandana", "beanie",
    }

    local function ebnElwRPRu(JQNgpxISpJC)
        local CvtGEfCZA = JQNgpxISpJC:lower()

        for _, k in uofVwpDUZ(mXibhwMP) do
            if CvtGEfCZA:find(k, 1, true) then
                return true
            end
        end

        return false
    end

    local function KxxJoAyM(JQNgpxISpJC)
        local CvtGEfCZA = JQNgpxISpJC:lower()

        for _, k in uofVwpDUZ(UjPgdlUAdK) do
            if CvtGEfCZA:find(k, 1, true) then
                return true
            end
        end

        return false
    end

    local function HJCoHIWYh(toolObj)
        if toolObj and toolObj.TextureId and toolObj.TextureId ~= "" then
            return toolObj.TextureId
        end
        if toolObj then
            for _, IPnBrUnz in uofVwpDUZ(toolObj:GetDescendants()) do
                if IPnBrUnz:IsA("Decal") and IPnBrUnz.Texture ~= "" then
                    return IPnBrUnz.Texture
                end
                if IPnBrUnz:IsA("ImageLabel") and IPnBrUnz.Image ~= "" then
                    return IPnBrUnz.Image
                end
            end
        end
        return ""
    end

    local function DMnliqylmQTY(JQNgpxISpJC, toolObj)
        local JkrNjUGFexKt = HJCoHIWYh(toolObj)

        local OuXdGBLS = QajQeTLyeF.new("Frame")
        OuXdGBLS.Parent = prUzSDkNrv
        OuXdGBLS.BackgroundColor3 = AWmYOjCpSD.Background
        OuXdGBLS.BorderSizePixel = 0
        OuXdGBLS.Size = UDim2.new(0, NHhdAHcY + 8, 0, NHhdAHcY + 8)
        OuXdGBLS.AutomaticSize = Enum.AutomaticSize.None
        OuXdGBLS.ClipsDescendants = true

        local uTvQkafz = QajQeTLyeF.new("UIStroke")
        uTvQkafz.Color = AWmYOjCpSD.Outline
        uTvQkafz.Thickness = 1
        uTvQkafz.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uTvQkafz.Parent = OuXdGBLS

        local QnbIniJIoF = QajQeTLyeF.new("UICorner")
        QnbIniJIoF.CornerRadius = UDim.new(0, 3)
        QnbIniJIoF.Parent = OuXdGBLS

        local WBtVRVYaR = QajQeTLyeF.new("ImageLabel")
        WBtVRVYaR.Parent = OuXdGBLS
        WBtVRVYaR.Size = UDim2.new(1, -4, 1, -4)
        WBtVRVYaR.Position = UDim2.new(0, 2, 0, 2)
        WBtVRVYaR.BackgroundTransparency = 1
        WBtVRVYaR.ScaleType = Enum.ScaleType.Fit
        WBtVRVYaR.Image = JkrNjUGFexKt ~= "" and JkrNjUGFexKt or "rbxassetid://0"
        WBtVRVYaR.ImageTransparency = JkrNjUGFexKt == "" and 1 or 0

        local fgLKcpetPnZs = QajQeTLyeF.new("TextLabel")
        fgLKcpetPnZs.Parent = OuXdGBLS
        fgLKcpetPnZs.Size = UDim2.new(1, 0, 0, 12)
        fgLKcpetPnZs.Position = UDim2.new(0, 0, 1, 0)
        fgLKcpetPnZs.AnchorPoint = Vector2.new(0, 1)
        fgLKcpetPnZs.BackgroundColor3 = Color3.new(0, 0, 0)
        fgLKcpetPnZs.BackgroundTransparency = 0.4
        fgLKcpetPnZs.BorderSizePixel = 0
        fgLKcpetPnZs.Text = JQNgpxISpJC
        fgLKcpetPnZs.FontFace = kwjwaQPR
        fgLKcpetPnZs.TextSize = 7
        fgLKcpetPnZs.TextColor3 = AWmYOjCpSD.Text
        fgLKcpetPnZs.TextTruncate = Enum.TextTruncate.AtEnd
        fgLKcpetPnZs.Visible = false

        OuXdGBLS.MouseEnter:Connect(function() fgLKcpetPnZs.Visible = true end)
        OuXdGBLS.MouseLeave:Connect(function() fgLKcpetPnZs.Visible = false end)

        if JkrNjUGFexKt == "" then
            WBtVRVYaR.ImageTransparency = 1
            local zZErRnKtt = QajQeTLyeF.new("TextLabel")
            zZErRnKtt.Parent = OuXdGBLS
            zZErRnKtt.Size = UDim2.new(1, -4, 1, -4)
            zZErRnKtt.Position = UDim2.new(0, 2, 0, 2)
            zZErRnKtt.BackgroundTransparency = 1
            zZErRnKtt.Text = JQNgpxISpJC:sub(1, 4)
            zZErRnKtt.FontFace = kwjwaQPR
            zZErRnKtt.TextSize = 8
            zZErRnKtt.TextColor3 = AWmYOjCpSD.Text
            zZErRnKtt.TextWrapped = true
            zZErRnKtt.TextScaled = false
        end

        return OuXdGBLS
    end

    local oNaYQWTVzqt = {}
    local UuiWRQwr = {}

    local function azRNvkfm()
    end

    local function wWnpcjKyIt(JQNgpxISpJC, toolObj)
        if oNaYQWTVzqt[JQNgpxISpJC] then return end
        oNaYQWTVzqt[JQNgpxISpJC] = true
        local OuXdGBLS = DMnliqylmQTY(JQNgpxISpJC, toolObj)
        UuiWRQwr[JQNgpxISpJC] = OuXdGBLS
        azRNvkfm()
    end

    local function nRbsKVgahm()
        for _, OuXdGBLS in YjeanuOKx(UuiWRQwr) do
            OuXdGBLS:Destroy()
        end
        UuiWRQwr = {}
        oNaYQWTVzqt = {}
        azRNvkfm()
    end

    function UpdatePlayerArmor(SERvoUAhpQo)
        nRbsKVgahm()

        local MFXailgzVUGA = SmqFdnndkaL(SERvoUAhpQo)

        if not MFXailgzVUGA or not MFXailgzVUGA.Parent then
            MpcXFtDKAmQo.Text = "No target"
            azRNvkfm()
            return
        end

        local RQqRCnKMJ = adyftbHws:GetPlayerFromCharacter(MFXailgzVUGA)
        MpcXFtDKAmQo.Text = (RQqRCnKMJ and RQqRCnKMJ.Name or MFXailgzVUGA.Name) .. "'s Loadout"

        for _, obj in uofVwpDUZ(MFXailgzVUGA:GetChildren()) do
            if obj:IsA("Tool") then
                wWnpcjKyIt(obj.Name, obj)
            end
        end

        if RQqRCnKMJ then
            local WryjTgtwEF = RQqRCnKMJ:FindFirstChildOfClass("Backpack")
            if WryjTgtwEF then
                for _, obj in uofVwpDUZ(WryjTgtwEF:GetChildren()) do
                    if obj:IsA("Tool") then
                        wWnpcjKyIt(obj.Name, obj)
                    end
                end
            end
        end
    end

    azRNvkfm()

    return {GUI= TxnVSjTasgPb,
        Frame = JQwtIHUVb,
        Update = UpdatePlayerArmor,
        SetTarget = UpdatePlayerArmor
    }
end

local twOxkRZQ = RcuIiFSwHL()
local TxnVSjTasgPb = twOxkRZQ.GUI

local function BYIwuCMe()
    if not wSruTIdIoR.Visuals.PlayerArmorInfoWindow then
        if TxnVSjTasgPb then
            TxnVSjTasgPb.Enabled = false
        end

        return
    end

    local yzGdXWASvN = TBLVmoTzUXtm and TBLVmoTzUXtm.target and TBLVmoTzUXtm.target.entry

    if yzGdXWASvN and twOxkRZQ then
        TxnVSjTasgPb.Enabled = true

        local CCCFrUAImvuy = EJJFGJzBaV(yzGdXWASvN.UserId or yzGdXWASvN)

        if TxnVSjTasgPb:GetAttribute("lastTarget") ~= CCCFrUAImvuy then
            TxnVSjTasgPb:SetAttribute("lastTarget", CCCFrUAImvuy)
            twOxkRZQ:Update(yzGdXWASvN)
        end
    else
        if TxnVSjTasgPb then
            TxnVSjTasgPb.Enabled = false
            TxnVSjTasgPb:SetAttribute("lastTarget", "")
        end
    end
end

show_hit_notification = false
hit_target_name = ""
hit_part_name = ""
hit_damage = 0

--// No Fall Damage: cap downward velocity before impact and restore health if dropped by fall
do
    local LAMcizzg = nil
    local VrMAtWmMn = nil
    local sjzeziglu = -50
    local rFtAlHsnSqf = -10

    local function wapYgPXfkze()
        local WdhbtLjgQ = EnziqNRwERb["FlyKeybind"]
        return EnziqNRwERb["FlyEnabled"] and typeof(WdhbtLjgQ) == "table" and WdhbtLjgQ.active
    end

    local function jHMkByoQ()
        return EnziqNRwERb["NoFallDamage"] and not wapYgPXfkze()
    end

    local function zIbBhIICF(oSjnjdBXU)
        if LAMcizzg then CnNOmZmbEvte(function() LAMcizzg:Disconnect() end) end
        if VrMAtWmMn then CnNOmZmbEvte(function() VrMAtWmMn:Disconnect() end) end

        local eQaaJKzsri = oSjnjdBXU:WaitForChild("HumanoidRootPart", 5)
        local HFRFRhgQedIK = oSjnjdBXU:WaitForChild("Humanoid", 5)
        if not eQaaJKzsri or not HFRFRhgQedIK then return end

        LAMcizzg = kViDmXEEMSQC.Heartbeat:Connect(function()
            if not jHMkByoQ() then return end
            if not eQaaJKzsri or not eQaaJKzsri.Parent then return end

            local oLMbGyhhPJfj = eQaaJKzsri.AssemblyLinearVelocity

            if oLMbGyhhPJfj.Y < sjzeziglu then
                eQaaJKzsri.AssemblyLinearVelocity = Vector3.new(oLMbGyhhPJfj.X, rFtAlHsnSqf, oLMbGyhhPJfj.Z)
            end
        end)

        local fIVIUZEN = HFRFRhgQedIK.Health

        VrMAtWmMn = HFRFRhgQedIK.HealthChanged:Connect(function(newHealth)
            if not jHMkByoQ() then
                fIVIUZEN = newHealth
                return
            end

            local LkPCtYFxbPkq = HFRFRhgQedIK:GetState()

            if LkPCtYFxbPkq == Enum.HumanoidStateType.Freefall or LkPCtYFxbPkq == Enum.HumanoidStateType.Landed then
                local AgRDILRcG = fIVIUZEN - newHealth

                if AgRDILRcG > 0 and AgRDILRcG < HFRFRhgQedIK.MaxHealth * 0.5 then
                    HFRFRhgQedIK.Health = fIVIUZEN
                end
            end

            fIVIUZEN = HFRFRhgQedIK.Health
        end)
    end

    if DXWugHbKILJ.Character then
        task.spawn(zIbBhIICF, DXWugHbKILJ.Character)
    end

    DXWugHbKILJ.CharacterAdded:Connect(function(oSjnjdBXU)
        task.wait(0.5)
        zIbBhIICF(oSjnjdBXU)
    end)
end

--// No Spike Damage: set CanTouch=false on spike parts so the physics engine
do
    local lcrnlhal = {}

    local function MrCCLnGo(obj)
        if not obj or not obj.Parent then return end
        if lcrnlhal[obj] then return end
        lcrnlhal[obj] = obj.CanTouch
        CnNOmZmbEvte(function() obj.CanTouch = false end)
    end

    local function nZcwcvQG(obj)
        if not lcrnlhal[obj] then return end
        CnNOmZmbEvte(function() obj.CanTouch = lcrnlhal[obj] end)
        lcrnlhal[obj] = nil
    end

    local function fOrdDmFgvF()
        for _, obj in uofVwpDUZ(WzuRBlWDxxqo:GetDescendants()) do
            if obj.Name == "Spikes" and obj:IsA("BasePart") then
                if EnziqNRwERb["NoSpikeDmg"] then
                    MrCCLnGo(obj)
                else
                    nZcwcvQG(obj)
                end
            end
        end
    end

    WzuRBlWDxxqo.DescendantAdded:Connect(function(obj)
        if obj.Name == "Spikes" and obj:IsA("BasePart") and EnziqNRwERb["NoSpikeDmg"] then
            task.defer(function() MrCCLnGo(obj) end)
        end
    end)

    WzuRBlWDxxqo.DescendantRemoving:Connect(function(obj)
        lcrnlhal[obj] = nil
    end)

    task.spawn(function()
        while true do
            task.wait(10)
            if EnziqNRwERb["NoSpikeDmg"] then fOrdDmFgvF() end
        end
    end)

    task.spawn(function()
        task.wait(2)
        fOrdDmFgvF()
    end)
end

--// Manipulation removed

function getClosestPlayerInFOV()
    local vQnjOXTKtxo = eekqtcHo:GetMouseLocation()
    local GxLZKvBjzr   = vdmlnNdl.CFrame.Position
    local EjqferkoHUC     = EnziqNRwERb["Enable FOV"] and (EnziqNRwERb["FOV Radius"] or 120) or math.huge
    local sIQPWyAjwpI    = EnziqNRwERb["Aimbot Max Distance"] or math.huge

    local ggIIoPlx, nKyeXPYwQIYA
    local hccfelDEYj = EnziqNRwERb["Enable FOV"]
        and (EjqferkoHUC / math.tan(math.rad(vdmlnNdl.FieldOfView * 0.5)))
        or math.huge

    local FOOerzuIFavH = {"Head","Torso","UpperTorso","HumanoidRootPart","LeftArm","RightArm","LeftLeg","RightLeg"}

    local sHkELsJgBPBU = getgenv()._playerCache or adyftbHws:GetPlayers()

    for _, RQqRCnKMJ in uofVwpDUZ(sHkELsJgBPBU) do
        if RQqRCnKMJ == DXWugHbKILJ then continue end
        local oSjnjdBXU = RQqRCnKMJ.Character
        if not oSjnjdBXU then continue end
        local HFRFRhgQedIK = oSjnjdBXU:FindFirstChildOfClass("Humanoid")
        if not HFRFRhgQedIK or HFRFRhgQedIK.Health <= 0 then continue end

        if EnziqNRwERb["Friendly Check"] and YallahCheckTeam(RQqRCnKMJ) then continue end

        local EMAppupS = EnziqNRwERb["Aimbot Bone"] or "Head"
        local dReLgkdoxXj = EMAppupS == "Closest Bone" and FOOerzuIFavH or {EMAppupS}

        for _, bname in uofVwpDUZ(dReLgkdoxXj) do
            local HEnhmxqDhr = oSjnjdBXU:FindFirstChild(bname)
            if not HEnhmxqDhr then continue end

            local Nrkwudij, DWyDxjnD = vdmlnNdl:WorldToViewportPoint(HEnhmxqDhr.Position)
            if not DWyDxjnD then continue end

            local nyfeSeqxNdE = (HEnhmxqDhr.Position - GxLZKvBjzr).Magnitude
            if nyfeSeqxNdE > sIQPWyAjwpI then continue end

            if EnziqNRwERb["Visible Check"] and not VhoWNJEV.functions.is_visible(oSjnjdBXU) then continue end

            local sDPWhePqY = (Vector2.new(Nrkwudij.X, Nrkwudij.Y) - vQnjOXTKtxo).Magnitude
            if sDPWhePqY < hccfelDEYj then
                hccfelDEYj = sDPWhePqY
                ggIIoPlx = RQqRCnKMJ
                nKyeXPYwQIYA  = HEnhmxqDhr
            end
        end
    end

    if ggIIoPlx and nKyeXPYwQIYA then
        TBLVmoTzUXtm.target.entry    = ggIIoPlx
        TBLVmoTzUXtm.target.part     = nKyeXPYwQIYA
        TBLVmoTzUXtm.target.distance = hccfelDEYj
    else
        TBLVmoTzUXtm.target.entry    = nil
        TBLVmoTzUXtm.target.part     = nil
        TBLVmoTzUXtm.target.distance = math.huge
    end

    return ggIIoPlx, nKyeXPYwQIYA
end

local GRKmZdTY = 0

local function ZhulOrhLa()
    if EnziqNRwERb["Enable Fullbright"] then
        if qMCUXHmYafaH.ClockTime ~= 12 then qMCUXHmYafaH.ClockTime = 12 end
    else qMCUXHmYafaH.ClockTime = XwZyPNbEU.ClockTime end
    if EnziqNRwERb["Enable No Fog"] then
        qMCUXHmYafaH.FogEnd = 100000
        local BUBzMKiYoXrX = qMCUXHmYafaH:FindFirstChild("Atmosphere")
        if BUBzMKiYoXrX then BUBzMKiYoXrX.Density=0; BUBzMKiYoXrX.Offset=0; BUBzMKiYoXrX.Glare=0; BUBzMKiYoXrX.Haze=0 end
    else
        qMCUXHmYafaH.FogEnd = XwZyPNbEU.FogEnd
        local BUBzMKiYoXrX = qMCUXHmYafaH:FindFirstChild("Atmosphere")
        if BUBzMKiYoXrX then BUBzMKiYoXrX.Density=XwZyPNbEU.Density; BUBzMKiYoXrX.Offset=XwZyPNbEU.Offset; BUBzMKiYoXrX.Glare=XwZyPNbEU.Glare; BUBzMKiYoXrX.Haze=XwZyPNbEU.Haze end
    end
    if EnziqNRwERb["Enable Ambient"] then
        local pXQcYSkGalM = type(EnziqNRwERb["Ambient Accent"]) == "table" and EnziqNRwERb["Ambient Accent"].Color or Color3.fromRGB(0, 191, 255)
        if qMCUXHmYafaH.Ambient ~= pXQcYSkGalM then qMCUXHmYafaH.Ambient = pXQcYSkGalM end
    else qMCUXHmYafaH.Ambient = XwZyPNbEU.Ambient end
    if EnziqNRwERb["Enable Outdoor Ambient"] then
        local SsUwBivziV = type(EnziqNRwERb["Outdoor Ambient Accent"]) == "table" and EnziqNRwERb["Outdoor Ambient Accent"].Color or Color3.fromRGB(0, 191, 255)
        if qMCUXHmYafaH.OutdoorAmbient ~= SsUwBivziV then qMCUXHmYafaH.OutdoorAmbient = SsUwBivziV end
    else qMCUXHmYafaH.OutdoorAmbient = XwZyPNbEU.OutdoorAmbient end
end

local FAYTZwyNzO = {visible= false,
    size = 0,
    bgTransparency = 1,
    strokeColor = Color3.new(0, 191, 255),
    fillColor = Color3.new(0, 191, 255),
    position = Vector2.new(0,0),
}

local DoHFXaIvFD = {visible= false,
    color = Color3.new(0, 191, 255),
    position = UDim2.new(0,0,0,0),
    rotation = 0,
    size = UDim2.new(0,0,0,1),
}

local function QiSzIxhFTVWF()
    if EnziqNRwERb["Enable FOV"] then
        if not FAYTZwyNzO.visible then
            dADuefaDUNe.Frame.Visible = true
            FAYTZwyNzO.visible = true
        end

        local OxITqRFm = type(EnziqNRwERb["FOV Accent"]) == "table" and EnziqNRwERb["FOV Accent"].Color or Color3.new(0, 191, 255)
        if OxITqRFm ~= FAYTZwyNzO.strokeColor then
            dADuefaDUNe.Stroke.Color = OxITqRFm
            FAYTZwyNzO.strokeColor = OxITqRFm
        end

        if EnziqNRwERb["FOV Filled"] then
            local NPbtEJDdqp = 1 - ((EnziqNRwERb["FOV Fill Opacity"] or 50) / 100)
            if NPbtEJDdqp ~= FAYTZwyNzO.bgTransparency then
                dADuefaDUNe.Frame.BackgroundTransparency = NPbtEJDdqp
                FAYTZwyNzO.bgTransparency = NPbtEJDdqp
            end

            local giWbtxiAap = type(EnziqNRwERb["FOV Fill Accent"]) == "table" and EnziqNRwERb["FOV Fill Accent"].Color or Color3.new(0, 191, 255)
            if giWbtxiAap ~= FAYTZwyNzO.fillColor then
                dADuefaDUNe.Frame.BackgroundColor3 = giWbtxiAap
                FAYTZwyNzO.fillColor = giWbtxiAap
            end
        else
            if FAYTZwyNzO.bgTransparency ~= 1 then
                dADuefaDUNe.Frame.BackgroundTransparency = 1
                FAYTZwyNzO.bgTransparency = 1
            end
        end

        local GGmizlMUjX = (EnziqNRwERb["FOV Radius"] or 120) * 2 / math.tan(math.rad(vdmlnNdl.FieldOfView / 2))
        if GGmizlMUjX ~= FAYTZwyNzO.size then
            dADuefaDUNe.Frame.Size = UDim2.new(0, GGmizlMUjX, 0, GGmizlMUjX)
            FAYTZwyNzO.size = GGmizlMUjX
        end

        local oAnxOLiG = eekqtcHo:GetMouseLocation()
        if oAnxOLiG ~= FAYTZwyNzO.position then
            dADuefaDUNe.Frame.Position = UDim2.new(0, oAnxOLiG.X, 0, oAnxOLiG.Y)
            FAYTZwyNzO.position = oAnxOLiG
        end
    else
        if FAYTZwyNzO.visible then
            dADuefaDUNe.Frame.Visible = false
            FAYTZwyNzO.visible = false
        end
    end
end

function _renderSnaplines()
    local zQfOGMFNSd = EnziqNRwERb["Zoom"] and type(EnziqNRwERb["Zoom Keybind"]) == "table" and EnziqNRwERb["Zoom Keybind"].active
    local WbTOxwTZLw = (EnziqNRwERb["Enable Aimbot"] or getgenv().silent or zQfOGMFNSd) and EnziqNRwERb["Enable Snaplines"]
    local tAzyoiTEsVO = szXEOvbLNRN.line

    if WbTOxwTZLw and mZVDeZgI then
        local rUOTxOJc = vdmlnNdl:WorldToViewportPoint(mZVDeZgI.Position)
        local FUotVQYgkvS = Vector2.new(rUOTxOJc.X, rUOTxOJc.Y)
        local oafsWQuQ = eekqtcHo:GetMouseLocation()
        local DXBPfhJnPnD = oafsWQuQ - FUotVQYgkvS
        local hwycdSVjDES = UDim2.new(0, (FUotVQYgkvS + DXBPfhJnPnD * 0.5).X, 0, (FUotVQYgkvS + DXBPfhJnPnD * 0.5).Y)
        local yaOIEgsmp = math.deg(math.atan2(DXBPfhJnPnD.Y, DXBPfhJnPnD.X))
        local GGmizlMUjX = UDim2.new(0, math.floor(DXBPfhJnPnD.Magnitude + 0.5), 0, 1)
        local qPZbwlbqt = type(EnziqNRwERb["Snaplines Accent"]) == "table" and EnziqNRwERb["Snaplines Accent"].Color or Color3.new(0, 191, 255)

        if hwycdSVjDES ~= DoHFXaIvFD.position then
            tAzyoiTEsVO.Position = hwycdSVjDES
            DoHFXaIvFD.position = hwycdSVjDES
        end
        if yaOIEgsmp ~= DoHFXaIvFD.rotation then
            tAzyoiTEsVO.Rotation = yaOIEgsmp
            DoHFXaIvFD.rotation = yaOIEgsmp
        end
        if GGmizlMUjX ~= DoHFXaIvFD.size then
            tAzyoiTEsVO.Size = GGmizlMUjX
            DoHFXaIvFD.size = GGmizlMUjX
        end
        if qPZbwlbqt ~= DoHFXaIvFD.color then
            tAzyoiTEsVO.BackgroundColor3 = qPZbwlbqt
            DoHFXaIvFD.color = qPZbwlbqt
        end
        if not DoHFXaIvFD.visible then
            tAzyoiTEsVO.Visible = true
            DoHFXaIvFD.visible = true
        end
    else
        if DoHFXaIvFD.visible then
            tAzyoiTEsVO.Visible = false
            DoHFXaIvFD.visible = false
        end
    end
end

function BYIwuCMe()
    if not wSruTIdIoR.Visuals.PlayerArmorInfoWindow then TxnVSjTasgPb.Enabled = false; return end
    local yzGdXWASvN = TBLVmoTzUXtm.target.entry
    if not yzGdXWASvN then
        local FlpGuflia = eekqtcHo:GetMouseLocation()
        local THxGFlwBWO = math.huge
        local sHkELsJgBPBU = getgenv()._playerCache or adyftbHws:GetPlayers()
        for _, RQqRCnKMJ in uofVwpDUZ(sHkELsJgBPBU) do
            if RQqRCnKMJ == DXWugHbKILJ then continue end
            local eQaaJKzsri = RQqRCnKMJ.Character and RQqRCnKMJ.Character:FindFirstChild("HumanoidRootPart")
            if not eQaaJKzsri then continue end
            local rUOTxOJc, ySZSOiLBArG = vdmlnNdl:WorldToViewportPoint(eQaaJKzsri.Position)
            if ySZSOiLBArG then
                local IPnBrUnz = (Vector2.new(rUOTxOJc.X, rUOTxOJc.Y) - FlpGuflia).Magnitude
                if IPnBrUnz < THxGFlwBWO then THxGFlwBWO = IPnBrUnz; yzGdXWASvN = RQqRCnKMJ end
            end
        end
    end
    if yzGdXWASvN then
        TxnVSjTasgPb.Enabled = true
        local CCCFrUAImvuy = EJJFGJzBaV(yzGdXWASvN.UserId or yzGdXWASvN)
        if TxnVSjTasgPb:GetAttribute("lastTarget") ~= CCCFrUAImvuy then
            TxnVSjTasgPb:SetAttribute("lastTarget", CCCFrUAImvuy)
            CnNOmZmbEvte(UpdatePlayerArmor, yzGdXWASvN)
        end
    else
        TxnVSjTasgPb.Enabled = false
        TxnVSjTasgPb:SetAttribute("lastTarget", "")
    end
end

function _renderFreecam()
    if EnziqNRwERb["Enable Freecam"] and type(EnziqNRwERb["Freecam Keybind"]) == "table" and EnziqNRwERb["Freecam Keybind"].active then
        if not RWfoErwyK.enabled then
            RWfoErwyK.enabled = true
            RWfoErwyK.old_type = vdmlnNdl.CameraType
            RWfoErwyK.old_behavior = eekqtcHo.MouseBehavior
            vdmlnNdl.CameraType = Enum.CameraType.Scriptable
            eekqtcHo.MouseBehavior = Enum.MouseBehavior.LockCenter
            if dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart") then
                dUETjKVVhR.HumanoidRootPart.Anchored = true
            end
            _bypass_enabled = false
        end
    else
        if RWfoErwyK.enabled then
            RWfoErwyK.enabled = false
            vdmlnNdl.CameraType = RWfoErwyK.old_type
            eekqtcHo.MouseBehavior = RWfoErwyK.old_behavior
            if dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart") then
                dUETjKVVhR.HumanoidRootPart.Anchored = false
            end
            _bypass_enabled = true
        end
    end
    if RWfoErwyK.enabled then
        local ycFgYxcLnyM = eekqtcHo:GetMouseDelta()
        RWfoErwyK.pitch = math.clamp(RWfoErwyK.pitch - ycFgYxcLnyM.Y * EnziqNRwERb["Freecam Sensitivity"], -80, 80)
        RWfoErwyK.yaw   = RWfoErwyK.yaw - ycFgYxcLnyM.X * EnziqNRwERb["Freecam Sensitivity"]
        vdmlnNdl.CFrame = CFrame.new(vdmlnNdl.CFrame.Position)
            * CFrame.Angles(0, math.rad(RWfoErwyK.yaw), 0)
            * CFrame.Angles(math.rad(RWfoErwyK.pitch), 0, 0)
        local bMTlckrMdP = Vector3.zero
        if eekqtcHo:IsKeyDown(Enum.KeyCode.W) then bMTlckrMdP += Vector3.new(0,0,-1) end
        if eekqtcHo:IsKeyDown(Enum.KeyCode.A) then bMTlckrMdP += Vector3.new(-1,0,0) end
        if eekqtcHo:IsKeyDown(Enum.KeyCode.S) then bMTlckrMdP += Vector3.new(0,0,1)  end
        if eekqtcHo:IsKeyDown(Enum.KeyCode.D) then bMTlckrMdP += Vector3.new(1,0,0)  end
        if eekqtcHo:IsKeyDown(Enum.KeyCode.Space)     then bMTlckrMdP += Vector3.new(0,1,0)  end
        if eekqtcHo:IsKeyDown(Enum.KeyCode.LeftShift) then bMTlckrMdP += Vector3.new(0,-1,0) end
        if bMTlckrMdP.Magnitude > 0 then
            vdmlnNdl.CFrame += (vdmlnNdl.CFrame - vdmlnNdl.CFrame.Position):VectorToWorldSpace(bMTlckrMdP.Unit * EnziqNRwERb["Freecam Speed"])
        end
        if dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart") then
            dUETjKVVhR.HumanoidRootPart.CFrame = vdmlnNdl.CFrame
        end
    end
end

function _renderAntiAim()
    local HFRFRhgQedIK  = dUETjKVVhR and dUETjKVVhR:FindFirstChild("Humanoid")
    local fzxvzIUrABxr = dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart")
    if not HFRFRhgQedIK or not fzxvzIUrABxr then return end
    if EnziqNRwERb["Anti Aim"] and type(EnziqNRwERb["Spinar"]) == "table" and EnziqNRwERb["Spinar"].active then
        if eekqtcHo:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
            HFRFRhgQedIK.AutoRotate = true
        else
            HFRFRhgQedIK.AutoRotate = false
            fzxvzIUrABxr.CFrame = fzxvzIUrABxr.CFrame * CFrame.Angles(0, math.rad(EnziqNRwERb["Anti Aim Speed"] / 5), 0)
        end
    else HFRFRhgQedIK.AutoRotate = true end
end

function StopUndergroundAAAnimation()
    local DFFQlBTC = TBLVmoTzUXtm.target.entry
    if DFFQlBTC and DFFQlBTC.Character then
        local HFRFRhgQedIK = DFFQlBTC.Character:FindFirstChildOfClass("Humanoid")
        if HFRFRhgQedIK and HFRFRhgQedIK.Health > 0.2 then
            for _, anim in uofVwpDUZ(HFRFRhgQedIK:GetPlayingAnimationTracks()) do
                if anim.Animation and anim.Animation.AnimationId == "rbxassetid://13435049596" then
                    anim:Stop()
                end
            end
        end
    end
end

GRKmZdTY = 0
_step_ray_params = nil
kViDmXEEMSQC.RenderStepped:Connect(function(dt)
    GRKmZdTY += 1

    if show_hit_notification and niger then
        pLsdsuIgg = true
        show_hit_notification = false
        task.spawn(function()
            CnNOmZmbEvte(function()
                PYMBJvUCOh:Notification("Hit | " .. string.format("%s | -%d HP (%s)", hit_target_name, hit_damage, hit_part_name), 3)
            end)
        end)
    elseif show_hit_notification then
        show_hit_notification = false
    end

    local zQfOGMFNSd = EnziqNRwERb["Zoom"] and type(EnziqNRwERb["Zoom Keybind"]) == "table" and EnziqNRwERb["Zoom Keybind"].active

    local BgDYhbCVaYRu = EnziqNRwERb["Silent Aim Keybind"]
    getgenv().silent = EnziqNRwERb["Silent Aim"] and (type(BgDYhbCVaYRu) == "table" and BgDYhbCVaYRu.active or not BgDYhbCVaYRu)

    local mGWZqAPqK = (GRKmZdTY % 2 == 0) or EnziqNRwERb["Enable Aimbot"] or getgenv().silent or zQfOGMFNSd

    if mGWZqAPqK then
        SERvoUAhpQo, mZVDeZgI = getClosestPlayerInFOV()
    end

    if mZVDeZgI and mZVDeZgI ~= TBLVmoTzUXtm.target.part then
        TBLVmoTzUXtm.target.part     = mZVDeZgI
        TBLVmoTzUXtm.target.entry    = SERvoUAhpQo
        TBLVmoTzUXtm.target.distance = (mZVDeZgI.Position - vdmlnNdl.CFrame.Position).Magnitude
        StopUndergroundAAAnimation()
    end

    BYIwuCMe()

    aBYganOBEaX = dodido and nigarzzz or TBLVmoTzUXtm.target.entry

    if TBLVmoTzUXtm.target.entry and TBLVmoTzUXtm.target.part and TBLVmoTzUXtm.target.entry ~= DXWugHbKILJ then
        if EnziqNRwERb["Enable Aimbot"] and (type(EnziqNRwERb["Aimbot Keybind"]) == "table" and EnziqNRwERb["Aimbot Keybind"].active or not EnziqNRwERb["Aimbot Keybind"]) then
            local TWTIkyOgdfAZ = TBLVmoTzUXtm.target.part.Position
            vdmlnNdl.CFrame = EnziqNRwERb["Aimbot Speed"] ~= 1
                and vdmlnNdl.CFrame:Lerp(CFrame.lookAt(vdmlnNdl.CFrame.Position, TWTIkyOgdfAZ), EnziqNRwERb["Aimbot Speed"])
                or  CFrame.lookAt(vdmlnNdl.CFrame.Position, TWTIkyOgdfAZ)
        end
    end

    _renderAntiAim()
    _renderFreecam()

    local WdhbtLjgQ = EnziqNRwERb["FlyKeybind"]
    local NbacKKGOd = EnziqNRwERb["FlyEnabled"] and typeof(WdhbtLjgQ) == "table" and WdhbtLjgQ.active
    if not NbacKKGOd and EnziqNRwERb["Always Sprint"] and (eekqtcHo:IsKeyDown(Enum.KeyCode.W) or eekqtcHo:IsKeyDown(Enum.KeyCode.A) or eekqtcHo:IsKeyDown(Enum.KeyCode.S) or eekqtcHo:IsKeyDown(Enum.KeyCode.D)) then
        local fzxvzIUrABxr = dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart")
        local HFRFRhgQedIK = dUETjKVVhR and dUETjKVVhR:FindFirstChildOfClass("Humanoid")
        if fzxvzIUrABxr and HFRFRhgQedIK then
            local EiRFRdAfQ = Vector3.zero
            if eekqtcHo:IsKeyDown(Enum.KeyCode.W) then EiRFRdAfQ += Vector3.new(0, 0, 1) end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.S) then EiRFRdAfQ -= Vector3.new(0, 0, 1) end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.A) then EiRFRdAfQ -= Vector3.new(1, 0, 0) end
            if eekqtcHo:IsKeyDown(Enum.KeyCode.D) then EiRFRdAfQ += Vector3.new(1, 0, 0) end

            if EiRFRdAfQ.Magnitude > 0 then
                local wQvPTpZK = vdmlnNdl.CFrame.LookVector
                local lprPAKIbkl = vdmlnNdl.CFrame.RightVector
                local IcQikMpOVBW = (wQvPTpZK * EiRFRdAfQ.Z + lprPAKIbkl * EiRFRdAfQ.X)
                IcQikMpOVBW = Vector3.new(IcQikMpOVBW.X, 0, IcQikMpOVBW.Z).Unit

                local ixHdgnAOnw = EnziqNRwERb["Sprint Speed"] or 27
                local dLvDFykq = HFRFRhgQedIK.WalkSpeed or 16
                local znYebgwUZtgC = ixHdgnAOnw - dLvDFykq

                if znYebgwUZtgC > 0 then
                    local vQJsJNRECC = math.min(dt or 0.016, 0.05)
                    local PrUTIhJagPn = znYebgwUZtgC * vQJsJNRECC

                    if not _step_ray_params then
                        _step_ray_params = RaycastParams.new()
                        _step_ray_params.FilterType = Enum.RaycastFilterType.Blacklist
                        _step_ray_params.IgnoreWater = true
                    end
                    _step_ray_params.FilterDescendantsInstances = { dUETjKVVhR }

                    local TcGadviZsXW = fzxvzIUrABxr.Position
                    local DGLlFuqP = apAMQyQhUl:Raycast(TcGadviZsXW, IcQikMpOVBW * PrUTIhJagPn, _step_ray_params)

                    local bsgYDyXIcSX = DGLlFuqP and TcGadviZsXW or TcGadviZsXW + IcQikMpOVBW * PrUTIhJagPn
                    fzxvzIUrABxr.CFrame = CFrame.new(
                        Vector3.new(bsgYDyXIcSX.X, fzxvzIUrABxr.Position.Y, bsgYDyXIcSX.Z),
                        Vector3.new(bsgYDyXIcSX.X, fzxvzIUrABxr.Position.Y, bsgYDyXIcSX.Z) + IcQikMpOVBW
                    )
                end
            end
        end
    end

    afivtlaV()

    if EnziqNRwERb["Always Grounded"] then
        local fzxvzIUrABxr = dUETjKVVhR and dUETjKVVhR:FindFirstChild("HumanoidRootPart")
        STuUhmXDW.Position = fzxvzIUrABxr and (fzxvzIUrABxr.Position - Vector3.new(0,3.2,0)) or Vector3.zero
    else
        STuUhmXDW.Position = Vector3.zero
    end

    ZhulOrhLa()
    QiSzIxhFTVWF()
    _renderSnaplines()
end)

do --// functions
    VhoWNJEV.functions.create_drawing = function(class, prop, ...)
        local ygDhqLRyA = (typeof(class) == "string") and (QajQeTLyeF.new(class)) or (class)
        for property, val in YjeanuOKx(prop) do
            ygDhqLRyA[property] = val
        end
        for _, t in { ... } do
            table.insert(t, ygDhqLRyA)
        end
        return ygDhqLRyA
    end

    VhoWNJEV.functions.get_boundings = function(oOkjCJpzGAo)
        local eQaaJKzsri = oOkjCJpzGAo:FindFirstChild("HumanoidRootPart")
        if eQaaJKzsri then
            local gZrpwRDP, GGmizlMUjX = oOkjCJpzGAo:GetBoundingBox()
            GGmizlMUjX = Vector3.new(math.min(GGmizlMUjX.X, 4), math.min(GGmizlMUjX.Y, 6), math.min(GGmizlMUjX.Z, 5))
            return eQaaJKzsri.CFrame, GGmizlMUjX, eQaaJKzsri.Position
        end
        return nil
    end

    _vis_ray_params = nil
    VhoWNJEV.functions.is_visible = function(MFXailgzVUGA)
        if not MFXailgzVUGA or MFXailgzVUGA == DXWugHbKILJ.Character then
            return false
        end

        local HEnhmxqDhr = MFXailgzVUGA.PrimaryPart or MFXailgzVUGA:FindFirstChild("Head") or MFXailgzVUGA:FindFirstChild("HumanoidRootPart")
        if not HEnhmxqDhr then
            return false
        end

        if not _vis_ray_params then
            _vis_ray_params = RaycastParams.new()
            _vis_ray_params.FilterType = Enum.RaycastFilterType.Blacklist
            _vis_ray_params.IgnoreWater = true
        end

        _vis_ray_params.FilterDescendantsInstances = { DXWugHbKILJ.Character, vdmlnNdl }

        local TcGadviZsXW = vdmlnNdl.CFrame.Position
        local NcuwhBXCsoRr = HEnhmxqDhr.Position - TcGadviZsXW
        local gCoSWXBIT = apAMQyQhUl:Raycast(TcGadviZsXW, NcuwhBXCsoRr, _vis_ray_params)
        
        return gCoSWXBIT == nil or (gCoSWXBIT.Instance and gCoSWXBIT.Instance:IsDescendantOf(MFXailgzVUGA))
    end

    function YallahCheckTeam(RQqRCnKMJ)
        if not RQqRCnKMJ or not RQqRCnKMJ:IsA("Player") then
            return false
        end

        local oSjnjdBXU = RQqRCnKMJ.Character
        if not oSjnjdBXU then
            return false
        end

        local mTMNLUxABmr = oSjnjdBXU:FindFirstChild("Head")
        if not mTMNLUxABmr then
            return false
        end

        local vCaQtJoL = mTMNLUxABmr:FindFirstChild("TeammateGui")
        if not vCaQtJoL then
            return false
        end

        return vCaQtJoL.Enabled == true
    end

    function getteamcheck()
        if EnziqNRwERb["Enable TeamCheck"] then
            return true
        else
            return false
        end
    end

    function cache_character_parts(MFXailgzVUGA)
        return {
            "Head",
            "Torso",
            "LeftArm",
            "RightArm",
            "LeftLeg",
            "RightLeg",
        }
    end

    VhoWNJEV.functions.get_tool = function(MFXailgzVUGA)
        for _, obj in uofVwpDUZ(MFXailgzVUGA:GetChildren()) do
            if obj:IsA("Tool") then
                return obj.Name
            end
        end
        return "None"
    end

end

;(function() --// FOV circle + snaplines IIFE
    local wJQDzmJfgrf = VhoWNJEV.functions.create_drawing("ScreenGui", {Parent= cloneref(gethui()), IgnoreGuiInset = true })
    local ZioCTvLFK = VhoWNJEV.functions.create_drawing("Frame", {Visible= false,
        BackgroundTransparency = 1,
        BackgroundColor3 = Color3.new(0, 191, 255),
        Size = UDim2.new(0, (EnziqNRwERb["FOV Radius"] or 120) * 2, 0, (EnziqNRwERb["FOV Radius"] or 120) * 2),
        Position = UDim2.new(0, 0, 0, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Parent = wJQDzmJfgrf,
        ZIndex = 2,
    })
    local dHgtQIlET = VhoWNJEV.functions.create_drawing("UICorner", {CornerRadius= UDim.new(1, 0), Parent = ZioCTvLFK })
    local nQDKpaDbn = VhoWNJEV.functions.create_drawing(
        "UIStroke",
        {Color= Color3.new(0, 191, 255), Thickness = 2, Transparency = 0, Parent = ZioCTvLFK }
    )
    dADuefaDUNe.FieldOfView = wJQDzmJfgrf
    dADuefaDUNe.Frame = ZioCTvLFK
    dADuefaDUNe.Stroke = nQDKpaDbn

    local IbaHiXskWIQd = VhoWNJEV.functions.create_drawing("ScreenGui", {Parent= cloneref(gethui()), IgnoreGuiInset = true })
    local tAzyoiTEsVO = VhoWNJEV.functions.create_drawing("Frame", {BackgroundTransparency= 0,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BorderSizePixel = 0,
        ZIndex = 2,
        Parent = IbaHiXskWIQd,
    })
    szXEOvbLNRN.snaplines = IbaHiXskWIQd
    szXEOvbLNRN.line = tAzyoiTEsVO
end)()

--// Zoom logic in its own task.spawn
task.spawn(function()
    local CWuhaNGbeSy = vdmlnNdl
    local uzxadGyL = 70
    local AwbbCAEzUix = {current_fov= CWuhaNGbeSy.FieldOfView,
        target_fov  = CWuhaNGbeSy.FieldOfView,
        animation_speed = 0.15,
        idle = false
    }
    kViDmXEEMSQC.RenderStepped:Connect(function(dt)
        if eekqtcHo:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            AwbbCAEzUix.current_fov = CWuhaNGbeSy.FieldOfView
            AwbbCAEzUix.idle = false
            return
        end
        if not EnziqNRwERb["Zoom"] and not EnziqNRwERb["FOV"] then
            if not AwbbCAEzUix.idle then
                AwbbCAEzUix.current_fov = uzxadGyL
                CWuhaNGbeSy.FieldOfView = uzxadGyL
                AwbbCAEzUix.idle = true
            end
            return
        end
        AwbbCAEzUix.idle = false
        if EnziqNRwERb["Zoom"] and type(EnziqNRwERb["Zoom Keybind"]) == "table" and EnziqNRwERb["Zoom Keybind"].active then
            AwbbCAEzUix.target_fov = EnziqNRwERb["Zoom Ammount"]
        elseif EnziqNRwERb["FOV"] then
            AwbbCAEzUix.target_fov = EnziqNRwERb["FOV Ammount"]
        else
            AwbbCAEzUix.target_fov = uzxadGyL
        end
        AwbbCAEzUix.current_fov += (AwbbCAEzUix.target_fov - AwbbCAEzUix.current_fov)
            * math.clamp(AwbbCAEzUix.animation_speed * dt * 60, 0, 1)
        CWuhaNGbeSy.FieldOfView = AwbbCAEzUix.current_fov
    end)
end)

ExpectedArguments = {Raycast={ArgCountRequired=3,Args={"Instance","Vector3","Vector3","RaycastParams"}}}
function getDirection(lNmzNUWHuq, GjYgamGJo)
    return (GjYgamGJo - lNmzNUWHuq).Unit * (lNmzNUWHuq - GjYgamGJo).Magnitude
end

--// namecall hook
;(function()
    function ValidateArguments(Args, RayMethod)
        local tBIuOxrW = 0
        if (#Args < RayMethod.ArgCountRequired) then
            return false
        end
        for Pos, Argument in HiBdrOXRWuln, Args do
            if (typeof(Argument) == RayMethod.Args[Pos]) then
                tBIuOxrW = tBIuOxrW + 1
            end
        end
        return tBIuOxrW >= RayMethod.ArgCountRequired
    end

    local hgWGJZvqAne
    hgWGJZvqAne = hookmetamethod(game, "__namecall", newcclosure(function(...)
        local oitLtJhOrZC = getnamecallmethod()
        local YtVukmoLb = {...}
        local PypkHNpYF = YtVukmoLb[1]

        if not checkcaller() then
            if (oitLtJhOrZC == "FireServer" or oitLtJhOrZC == "InvokeServer") and typeof(PypkHNpYF) == "Instance" then
                local JQNgpxISpJC = PypkHNpYF.Name
                if (JQNgpxISpJC == "ReplicateMovementType" or JQNgpxISpJC == "ChangedMovementType") and getgenv()._flyActive then
                    return
                end
            end

            if PypkHNpYF == apAMQyQhUl and oitLtJhOrZC == "Raycast" then
                if ValidateArguments(YtVukmoLb, ExpectedArguments.Raycast) then
                    local zOTQaujKeo = YtVukmoLb[2]
                    local EKlpeyuFt = YtVukmoLb[3]

                    if getgenv().silent and mZVDeZgI then
                        local bsgYDyXIcSX = mZVDeZgI.Position
                        EKlpeyuFt = (bsgYDyXIcSX - zOTQaujKeo).Unit * (bsgYDyXIcSX - zOTQaujKeo).Magnitude
                        YtVukmoLb[3] = EKlpeyuFt
                    end

                    return hgWGJZvqAne(iviCgNiiN(YtVukmoLb))
                end
            end
        end

        return hgWGJZvqAne(...)
    end))
end)()

do --// handling
    DXWugHbKILJ.CharacterAdded:Connect(function(MFXailgzVUGA)
        dUETjKVVhR = MFXailgzVUGA
    end)
end

niger = false

function getHumanoidFromRaycast(hitResult)
    if not hitResult or not hitResult.Instance then return end

    local HEnhmxqDhr = hitResult.Instance
    local oOkjCJpzGAo = HEnhmxqDhr:FindFirstAncestorOfClass("Model")
    if not oOkjCJpzGAo then return end

    local BdxvaCFFPR = oOkjCJpzGAo:FindFirstChildOfClass("Humanoid")
    if not BdxvaCFFPR then return end

    return BdxvaCFFPR, oOkjCJpzGAo, HEnhmxqDhr
end

activeHits = {}

oldHit = LDWmIPgEUyy.hit

function LDWmIPgEUyy:hit(hitResult, ...)
    if oldHit then
        oldHit(PypkHNpYF, hitResult, ...)
    end

    local BdxvaCFFPR, MFXailgzVUGA, CluXAzQS = getHumanoidFromRaycast(hitResult)
    if not BdxvaCFFPR then return end

    local pSEhPXmu = adyftbHws:GetPlayerFromCharacter(MFXailgzVUGA)
    if not pSEhPXmu or pSEhPXmu == DXWugHbKILJ then return end

    if activeHits[BdxvaCFFPR] then return end
    activeHits[BdxvaCFFPR] = true

    local gVfBMrlHJR = BdxvaCFFPR.Health
    local cJwnbSeKsGGE = (CluXAzQS and CluXAzQS.Name == "Head") and "HEADSHOT" or "HIT"

    local ytDOFqCZCq
    ytDOFqCZCq = BdxvaCFFPR.HealthChanged:Connect(function(newHealth)
        if newHealth >= gVfBMrlHJR then return end

        local brNBuRuXFd = math.floor(gVfBMrlHJR - newHealth)

        if brNBuRuXFd > 0 then
            hit_target_name = pSEhPXmu.Name
            hit_part_name = CluXAzQS.Name
            hit_damage = brNBuRuXFd

            show_hit_notification = true
            pLsdsuIgg = true
        end

        ytDOFqCZCq:Disconnect()
        activeHits[BdxvaCFFPR] = nil
    end)

    task.delay(0.5, function()
        if activeHits[BdxvaCFFPR] then
            activeHits[BdxvaCFFPR] = nil
            if ytDOFqCZCq then
                ytDOFqCZCq:Disconnect()
            end
        end
    end)
end

--// Third person via RenderStepped
kViDmXEEMSQC.RenderStepped:Connect(function()
    if not EnziqNRwERb["Third Person"] then return end
    if not (type(EnziqNRwERb["Third Person Key"]) == "table" and EnziqNRwERb["Third Person Key"].active) then return end
    if type(EnziqNRwERb["Freecam Keybind"]) == "table" and EnziqNRwERb["Freecam Keybind"].active and EnziqNRwERb["Enable Freecam"] then return end

    local RXvyiVUY = apAMQyQhUl.CurrentCamera
    if not RXvyiVUY then return end
    local KWASFwcua = EnziqNRwERb["Third Person Distance"] or 5
    RXvyiVUY.CFrame = RXvyiVUY.CFrame + RXvyiVUY.CFrame.LookVector * -KWASFwcua
end)

PYMBJvUCOh:Notification('loaded propperly', 5)
