do
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    local httpService = cloneref(game:GetService("HttpService"))
    local gui = Instance.new("ScreenGui")
    gui.Name = httpService:GenerateGUID(false)
    gui.IgnoreGuiInset = true
    gui.Parent = cloneref(gethui())

    getgenv().gethui = newcclosure(function()
        return cloneref(gui)
    end)
end
if getgenv().library and getgenv().library.unload_menu then
    pcall(function() getgenv().library:unload_menu() end)
end

local folder = "dopamine"
local file = folder .. "/key.dat"

if not isfolder(folder) or not isfile(file) then
    print("no key found...")
    return
end

Start       = tick(); 
Executor    = identifyexecutor()

local LoadTick = tick()
local StopLoading = false
local MessageBoxShown = false
local ShowWarning = false

local MessageBox = {}

function MessageBox.Show(Info)
    if MessageBoxShown then return end
    MessageBoxShown = true

    pcall(function()
        local GUI = Instance.new("ScreenGui")
        GUI.Name = "DopamineMessageBox"
        GUI.ResetOnSpawn = false
        GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        GUI.IgnoreGuiInset = true
        GUI.Parent = game:GetService("CoreGui")

        local Backdrop = Instance.new("Frame")
        Backdrop.Size = UDim2.new(1, 0, 1, 0)
        Backdrop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Backdrop.BackgroundTransparency = 0.5
        Backdrop.BorderSizePixel = 0
        Backdrop.Parent = GUI

        local Position = Info.Position or UDim2.new(0.5, 0, 0.5, 0)

        local Box = Instance.new("Frame")
        Box.Size = UDim2.new(0, 380, 0, 180)
        Box.Position = UDim2.new(Position.X.Scale, Position.X.Offset - 190, Position.Y.Scale, Position.Y.Offset - 90)
        Box.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        Box.BorderSizePixel = 0
        Box.Parent = GUI

        local BoxCorner = Instance.new("UICorner")
        BoxCorner.CornerRadius = UDim.new(0, 8)
        BoxCorner.Parent = Box

        local BoxStroke = Instance.new("UIStroke")
        BoxStroke.Color = Color3.fromRGB(0, 191, 255)
        BoxStroke.Parent = Box

        local Title = Instance.new("TextLabel")
        Title.Size = UDim2.new(1, 0, 0, 36)
        Title.Position = UDim2.new(0, 0, 0, 10)
        Title.BackgroundTransparency = 1
        Title.Font = Enum.Font.GothamBold
        Title.Text = Info.Text or "dopamine.wtf"
        Title.TextColor3 = Color3.fromRGB(0, 191, 255)
        Title.TextSize = 18
        Title.Parent = Box

        local Description = Instance.new("TextLabel")
        Description.Size = UDim2.new(1, -30, 0, 80)
        Description.Position = UDim2.new(0, 15, 0, 50)
        Description.BackgroundTransparency = 1
        Description.Font = Enum.Font.Gotham
        Description.Text = Info.Description or ""
        Description.TextColor3 = Color3.fromRGB(220, 220, 220)
        Description.TextSize = 13
        Description.TextWrapped = true
        Description.TextXAlignment = Enum.TextXAlignment.Center
        Description.Parent = Box

        local Button = Instance.new("TextButton")
        Button.Size = UDim2.new(0, 120, 0, 34)
        Button.Position = UDim2.new(0.5, -60, 1, -48)
        Button.BackgroundColor3 = Color3.fromRGB(0, 191, 255)
        Button.BorderSizePixel = 0
        Button.Font = Enum.Font.GothamBold
        Button.Text = "OK"
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextSize = 14
        Button.Parent = Box

        local ButtonCorner = Instance.new("UICorner")
        ButtonCorner.CornerRadius = UDim.new(0, 6)
        ButtonCorner.Parent = Button

        local Closing = false
        local function Close()
            if Closing then return end
            Closing = true
            GUI:Destroy()
        end

        Button.MouseButton1Click:Connect(Close)

        GUI.InputBegan:Connect(function(Input, Processed)
            if Processed then return end
            if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode == Enum.KeyCode.Return then
                Close()
            end
        end)
    end)
end

do
    local ExecutorName = ""
    pcall(function() ExecutorName = identifyexecutor() end)
    local NameLower = ExecutorName:lower()

    local Unsupported = { "xeno", "solara" }
    local Warning = { "bunni", "hydrogen", "macsploit", "medium", "real", "velocity" }

    local function NameContains(list)
        for _, name in list do
            if NameLower:find(name) then return true end
        end
        return false
    end

    if NameContains(Unsupported) then
        MessageBox.Show({
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Text = "dopamine.wtf",
            Description = "Your Executor Is Not Supported",
            MessageBoxIcon = "Error",
            MessageBoxButtons = "OK",
        })
        StopLoading = true
    elseif NameContains(Warning) then
        ShowWarning = true
    end
end

if StopLoading then return end

do
    pcall(function() setfpscap(999) end)
    pcall(function() task.desynchronize() end)
end

do
    local OldLib = pcall(function() return getgenv().Library end) and getgenv().Library
    if OldLib then
        pcall(function() OldLib:Unload() end)
    end

    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local CoreGui = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")

    pcall(function()
        if not isfolder("dopamine/Assets") then
            makefolder("dopamine/Assets")
        end
    end)

    local LoadingGui = Instance.new("ScreenGui")
    LoadingGui.Name = "\0"
    LoadingGui.Parent = CoreGui
    LoadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
    LoadingGui.DisplayOrder = 9999
    LoadingGui.IgnoreGuiInset = true

    local Overlay = Instance.new("Frame")
    Overlay.Name = "\0"
    Overlay.Parent = LoadingGui
    Overlay.Size = UDim2.new(2, 0, 2, 0)
    Overlay.Position = UDim2.new(-0.5, 0, -0.5, 0)
    Overlay.BackgroundColor3 = Color3.new(0, 0, 0)
    Overlay.BackgroundTransparency = 1
    Overlay.BorderSizePixel = 0

    local BypassingText = Instance.new("TextLabel")
    BypassingText.Name = "\0"
    BypassingText.Parent = LoadingGui
    BypassingText.Size = UDim2.new(1, 0, 0, 50)
    BypassingText.Position = UDim2.new(0, 0, 0.5, -25)
    BypassingText.BackgroundTransparency = 1
    BypassingText.Text = "Bypassing..."
    BypassingText.TextColor3 = Color3.fromRGB(0, 191, 255)
    BypassingText.TextSize = 30
    BypassingText.Font = Enum.Font.GothamBold
    BypassingText.TextTransparency = 1
    BypassingText.BorderSizePixel = 0

    local CreditText = Instance.new("TextLabel")
    CreditText.Name = "\0"
    CreditText.Parent = LoadingGui
    CreditText.Size = UDim2.new(1, 0, 0, 30)
    CreditText.Position = UDim2.new(0, 0, 1, -40)
    CreditText.BackgroundTransparency = 1
    CreditText.Text = "made possible by: soryxen"
    CreditText.TextSize = 16
    CreditText.Font = Enum.Font.GothamBold
    CreditText.TextTransparency = 1
    CreditText.BorderSizePixel = 0
    CreditText.RichText = true
    CreditText.TextXAlignment = Enum.TextXAlignment.Center

    local Hue = 0
    local RainbowConnection = RunService.RenderStepped:Connect(function()
        Hue = (Hue + 0.0005) % 1
        CreditText.TextColor3 = Color3.fromHSV(Hue, 1, 1)
    end)

    local Duration = math.random(410, 580) / 100
    local FadeIn = TweenService:Create(Overlay, TweenInfo.new(0.7), {BackgroundTransparency = 0.35})
    local TextFadeIn = TweenService:Create(BypassingText, TweenInfo.new(0.7), {TextTransparency = 0})
    local CreditFadeIn = TweenService:Create(CreditText, TweenInfo.new(0.7), {TextTransparency = 0})

    FadeIn:Play()
    TextFadeIn:Play()
    CreditFadeIn:Play()

    task.wait(0.7)
    task.wait(Duration - 1.4)

    local FadeOut = TweenService:Create(Overlay, TweenInfo.new(0.7), {BackgroundTransparency = 1})
    local TextFadeOut = TweenService:Create(BypassingText, TweenInfo.new(0.7), {TextTransparency = 1})
    local CreditFadeOut = TweenService:Create(CreditText, TweenInfo.new(0.7), {TextTransparency = 1})

    FadeOut:Play()
    TextFadeOut:Play()
    CreditFadeOut:Play()

    task.wait(0.7)

    RainbowConnection:Disconnect()
    LoadingGui:Destroy()
end

task.wait(0.2)
if ShowWarning and MessageBox then
    MessageBox.Show({
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Text = "dopamine.wtf",
        Description = "Your Executor Is Supported Although You May Experience Lag Or May Be Detected",
        MessageBoxIcon = "Warning",
        MessageBoxButtons = "OK",
    })
end

if getgenv().Library then
	getgenv().Library:Unload()
end

local Library
do
	local Workspace = game:GetService("Workspace")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	local RunService = game:GetService("RunService")
	local CoreGui = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
	local TweenService = game:GetService("TweenService")
	local Lighting = game:GetService("Lighting")

	gethui = gethui or function()
		return CoreGui
	end

	local LocalPlayer = Players.LocalPlayer
	local Camera = Workspace.CurrentCamera
	local Mouse = LocalPlayer:GetMouse()

	local FromRGB = Color3.fromRGB
	local FromHSV = Color3.fromHSV
	local FromHex = Color3.fromHex

	local RGBSequence = ColorSequence.new
	local RGBSequenceKeypoint = ColorSequenceKeypoint.new
	local NumSequence = NumberSequence.new
	local NumSequenceKeypoint = NumberSequenceKeypoint.new

	local UDim2New = UDim2.new
	local UDimNew = UDim.new
	local UDim2FromScale = UDim2.fromScale
	local UDim2FromOffset = UDim2.fromOffset
	local Vector2New = Vector2.new
	local Vector3New = Vector3.new

	local MathClamp = math.clamp
	local MathFloor = math.floor
	local MathAbs = math.abs
	local MathSin = math.sin

	local TableInsert = table.insert
	local TableFind = table.find
	local TableRemove = table.remove
	local TableConcat = table.concat
	local TableClone = table.clone
	local TableUnpack = table.unpack

	local StringFormat = string.format
	local StringFind = string.find
	local StringGSub = string.gsub
	local StringLower = string.lower
	local StringLen = string.len

	local InstanceNew = Instance.new

	local CFrameNew = CFrame.new
    local CFrameAngles = CFrame.Angles
    local Vector3New = Vector3.new
	local MathRad = math.rad
    local MathMax = math.max
    local MathMin = math.min

	local RectNew = Rect.new

	local IsMobile = UserInputService.TouchEnabled or false

	local ACCENT_COLOR = Color3.fromRGB(0, 191, 255)
	local FIXED_LOGO = "132447680232071"
	local FIXED_NAME = "dopamine.wtf"

	local KEY_DIR = "dopamine"

	if not isfolder(KEY_DIR) then
		makefolder(KEY_DIR)
	end

	if not isfile(KEY_DIR .. "/key.dat") then
		print("no key found...")
		return nil
	end

	local UIDS_URL = "https://raw.githubusercontent.com/dopamine-wtf/loader/refs/heads/main/uids.json"
	local LOADER_URL = "https://raw.githubusercontent.com/dopamine-wtf/loader/refs/heads/main/loader.json"

	local function GetHWID()
		local Success, HWID = pcall(function()
			local Combined = game.CreatorId .. game.GameId .. UserInputService:GetUserIdHash() .. tostring(LocalPlayer.UserId)
			return syn.crypt.hash(Combined, "sha512")
		end)
		if Success then
			return HWID
		end
		local Success2, HWID2 = pcall(gethwid)
		if Success2 then
			return HWID2
		end
		return ""
	end

	local CURRENT_HWID = GetHWID()
	local CURRENT_UID = "apply in discord for uid"

	local Success, UIDData = pcall(function()
		return HttpService:JSONDecode(game:HttpGet(UIDS_URL))
	end)
	if Success and type(UIDData) == "table" then
		for HWID, UID in UIDData do
			if HWID == CURRENT_HWID then
				CURRENT_UID = UID
				break
			end
		end
	end

	local LoaderSuccess, LoaderData = pcall(function()
		return HttpService:JSONDecode(game:HttpGet(LOADER_URL))
	end)
	if LoaderSuccess and type(LoaderData) == "table" and type(LoaderData.blacklistedHwids) == "table" then
		for _, BlacklistedHWID in LoaderData.blacklistedHwids do
			if BlacklistedHWID == CURRENT_HWID then
				warn("you have been blacklisted, if this is not supposed to happen, please make a ticket in our discord: https://discord.gg/VJXXXd5UzP")
				pcall(setclipboard, "https://discord.gg/VJXXXd5UzP")
				return
			end
		end
	end

	Library = {
		Theme = {},

		MenuKeybind = tostring(Enum.KeyCode.RightShift),

		Flags = {},

		Tween = {
			Time = 0.25,
			Style = Enum.EasingStyle.Quart,
			Direction = Enum.EasingDirection.Out,
		},

		FadeSpeed = 0.2,

		Folders = {
			Directory = "dopamine",
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

	Library.__index = Library
	Library.Sections.__index = Library.Sections
	Library.Pages.__index = Library.Pages

	local Keys = {
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

	local Themes = {
        ["Preset"] = {
            ["Window Outline"] = FromRGB(0, 34, 37),
            ["Accent"] = ACCENT_COLOR,
            ["Background 1"] = FromRGB(17, 21, 27),
            ["Text"] = FromRGB(255, 255, 255),
            ["Inline"] = FromRGB(19, 25, 31),
            ["Element"] = FromRGB(32, 38, 48),
            ["Inactive Text"] = FromRGB(185, 185, 185),
            ["Border"] =  FromRGB(46, 52, 61),
            ["Background 2"] = FromRGB(24, 28, 36)
        }
	}

	Library.Theme = TableClone(Themes["Preset"])

	-- Folders
	for Index, Value in Library.Folders do
		if not isfolder(Value) then
			makefolder(Value)
		end
	end

	-- Tweening
	local Tween = {}
	do
		Tween.__index = Tween

		Tween.Create = function(self, Item, Info, Goal, IsRawItem)
			if not Library or not Library.Tween then return end
			Item = IsRawItem and Item or Item.Instance
			Info = Info or TweenInfo.new(Library.Tween.Time, Library.Tween.Style, Library.Tween.Direction)

			local NewTween = {
				Tween = TweenService:Create(Item, Info, Goal),
				Info = Info,
				Goal = Goal,
				Item = Item,
			}

			NewTween.Tween:Play()

			setmetatable(NewTween, Tween)

			return NewTween
		end

		Tween.GetProperty = function(self, Item)
			Item = Item or self.Item

			if Item:IsA("Frame") then
				return { "BackgroundTransparency" }
			elseif Item:IsA("TextLabel") or Item:IsA("TextButton") then
				return { "TextTransparency", "BackgroundTransparency" }
			elseif Item:IsA("ImageLabel") or Item:IsA("ImageButton") then
				return { "BackgroundTransparency", "ImageTransparency" }
			elseif Item:IsA("ScrollingFrame") then
				return { "BackgroundTransparency", "ScrollBarImageTransparency" }
			elseif Item:IsA("TextBox") then
				return { "TextTransparency", "BackgroundTransparency" }
			elseif Item:IsA("UIStroke") then
				return { "Transparency" }
			end
		end

		Tween.FadeItem = function(self, Item, Property, Visibility, Speed)
			local Item = Item or self.Item

			local OldTransparency = Item[Property]
			Item[Property] = Visibility and 1 or OldTransparency

			local NewTween = Tween:Create(
				Item,
				TweenInfo.new(Speed or Library.Tween.Time, Library.Tween.Style, Library.Tween.Direction),
				{
					[Property] = Visibility and OldTransparency or 1,
				},
				true
			)

			Library:Connect(NewTween.Tween.Completed, function()
				if not Visibility then
					task.wait()
					Item[Property] = OldTransparency
				end
			end)

			return NewTween
		end

		Tween.Get = function(self)
			if not self.Tween then
				return
			end

			return self.Tween, self.Info, self.Goal
		end

		Tween.Pause = function(self)
			if not self.Tween then
				return
			end

			self.Tween:Pause()
		end

		Tween.Play = function(self)
			if not self.Tween then
				return
			end

			self.Tween:Play()
		end

		Tween.Clean = function(self)
			if not self.Tween then
				return
			end

			Tween:Pause()
			self = nil
		end
	end

	-- Instances
	local Instances = {}
	do
		Instances.__index = Instances

		Instances.Create = function(self, Class, Properties)
			local NewItem = {
				Instance = InstanceNew(Class),
				Properties = Properties,
				Class = Class,
			}

			setmetatable(NewItem, Instances)

			for Property, Value in NewItem.Properties do
				NewItem.Instance[Property] = Value
			end

			return NewItem
		end

		Instances.FadeItem = function(self, Visibility, Speed)
			local Item = self.Instance

			if Visibility == true then
				Item.Visible = true
			end

			local Descendants = Item:GetDescendants()
			TableInsert(Descendants, Item)

			local NewTween

			for Index, Value in Descendants do
				local TransparencyProperty = Tween:GetProperty(Value)

				if not TransparencyProperty then
					continue
				end

				if type(TransparencyProperty) == "table" then
					for _, Property in TransparencyProperty do
						NewTween = Tween:FadeItem(Value, Property, not Visibility, Speed)
					end
				else
					NewTween = Tween:FadeItem(Value, TransparencyProperty, not Visibility, Speed)
				end
			end
		end

		Instances.AddToTheme = function(self, Properties)
			if not self.Instance then
				return
			end

			Library:AddToTheme(self, Properties)
		end

		Instances.ChangeItemTheme = function(self, Properties)
			if not self.Instance then
				return
			end

			if not Library or not Library.ChangeItemTheme then
				return
			end

			Library:ChangeItemTheme(self, Properties)
		end

		Instances.Connect = function(self, Event, Callback, Name)
			if not self.Instance then
				return
			end

			if not self.Instance[Event] then
				return
			end

			if Event == "MouseButton1Down" or Event == "MouseButton1Click" then
				if IsMobile then
					Event = "TouchTap"
				end
			elseif Event == "MouseButton2Down" or Event == "MouseButton2Click" then
				if IsMobile then
					Event = "TouchLongPress"
				end
			end

			return Library:Connect(self.Instance[Event], Callback, Name)
		end

		Instances.Tween = function(self, Info, Goal)
			if not self.Instance then
				return
			end

			return Tween:Create(self, Info, Goal)
		end

		Instances.Disconnect = function(self, Name)
			if not self.Instance then
				return
			end

			return Library:Disconnect(Name)
		end

		Instances.Clean = function(self)
			if not self.Instance then
				return
			end

			self.Instance:Destroy()
			self = nil
		end

		Instances.MakeDraggable = function(self, ConditionFunc)
			if not self.Instance then
				return
			end

			local Gui = self.Instance
			local Dragging = false
			local DragStart
			local StartPosition

			local CheckCondition = function()
				if ConditionFunc then
					return ConditionFunc()
				end
				return true
			end

			local Set = function(Input)
				local DragDelta = Input.Position - DragStart
				local NewX = StartPosition.X.Offset + DragDelta.X
				local NewY = StartPosition.Y.Offset + DragDelta.Y

				local ScreenSize = Gui.Parent.AbsoluteSize
				local GuiSize = Gui.AbsoluteSize

				NewX = MathClamp(NewX, 0, ScreenSize.X - GuiSize.X)
				NewY = MathClamp(NewY, 0, ScreenSize.Y - GuiSize.Y)

				self:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(0, NewX, 0, NewY) }
				)
			end

			local InputChanged

			self:Connect("InputBegan", function(Input)
				if not CheckCondition() then
					return
				end

				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					Dragging = true
					DragStart = Input.Position
					StartPosition = Gui.Position

					if InputChanged then
						return
					end

					InputChanged = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							Dragging = false
							InputChanged:Disconnect()
							InputChanged = nil
						end
					end)
				end
			end)

			Library:Connect(UserInputService.InputChanged, function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseMovement
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					if Dragging then
						Set(Input)
					end
				end
			end)

			return Dragging
		end

		Instances.MakeResizeable = function(self, Minimum, Maximum)
			if not self.Instance then
				return
			end

			local Gui = self.Instance

			local Resizing = false
			local CurrentSide = nil

			local StartMouse = nil
			local StartPosition = nil
			local StartSize = nil

			local EdgeThickness = 2

			local MakeEdge = function(Name, Position, Size)
				local Button = Instances:Create("TextButton", {
					Name = "\0",
					Size = Size,
					Position = Position,
					BackgroundColor3 = FromRGB(166, 147, 243),
					BackgroundTransparency = 1,
					Text = "",
					BorderSizePixel = 0,
					AutoButtonColor = false,
					Parent = Gui,
					ZIndex = 99999,
				})
				Button:AddToTheme({ BackgroundColor3 = "Accent" })

				return Button
			end

			local Edges = {
				{
					Button = MakeEdge("Left", UDim2New(0, 0, 0, 0), UDim2New(0, EdgeThickness, 1, 0)),
					Side = "L",
				},

				{
					Button = MakeEdge("Right", UDim2New(1, -EdgeThickness, 0, 0), UDim2New(0, EdgeThickness, 1, 0)),
					Side = "R",
				},

				{
					Button = MakeEdge("Top", UDim2New(0, 0, 0, 0), UDim2New(1, 0, 0, EdgeThickness)),
					Side = "T",
				},

				{
					Button = MakeEdge("Bottom", UDim2New(0, 0, 1, -EdgeThickness), UDim2New(1, 0, 0, EdgeThickness)),
					Side = "B",
				},
			}

			local BeginResizing = function(Side)
				Resizing = true
				CurrentSide = Side

				StartMouse = UserInputService:GetMouseLocation()

				-- store offsets, not absolute screen pos
				StartPosition = Vector2New(Gui.Position.X.Offset, Gui.Position.Y.Offset)
				StartSize = Vector2New(Gui.Size.X.Offset, Gui.Size.Y.Offset)

				for Index, Value in Edges do
					Value.Button.Instance.BackgroundTransparency = (Value.Side == Side) and 0 or 1
				end
			end

			local EndResizing = function()
				Resizing = false
				CurrentSide = nil

				for Index, Value in Edges do
					Value.Button.Instance.BackgroundTransparency = 1
				end
			end

			for Index, Value in Edges do
				Value.Button:Connect("InputBegan", function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						BeginResizing(Value.Side)
					end
				end)
			end

			Library:Connect(UserInputService.InputEnded, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if Resizing then
						EndResizing()
					end
				end
			end)

			Library:Connect(RunService.RenderStepped, function()
				if not Resizing or not CurrentSide then
					return
				end

				local MouseLocation = UserInputService:GetMouseLocation()
				local dx = MouseLocation.X - StartMouse.X
				local dy = MouseLocation.Y - StartMouse.Y

				local x, y = StartPosition.X, StartPosition.Y
				local w, h = StartSize.X, StartSize.Y

				if CurrentSide == "L" then
					x = StartPosition.X + dx
					w = StartSize.X - dx
				elseif CurrentSide == "R" then
					w = StartSize.X + dx
				elseif CurrentSide == "T" then
					y = StartPosition.Y + dy
					h = StartSize.Y - dy
				elseif CurrentSide == "B" then
					h = StartSize.Y + dy
				end

				if w < Minimum.X then
					if CurrentSide == "L" then
						x = x - (Minimum.X - w)
					end
					w = Minimum.X
				end
				if h < Minimum.Y then
					if CurrentSide == "T" then
						y = y - (Minimum.Y - h)
					end
					h = Minimum.Y
				end

				self:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2FromOffset(x, y) }
				)
				self:Tween(
					TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Size = UDim2FromOffset(w, h) }
				)
			end)
		end

		Instances.OnHover = function(self, Function)
			if not self.Instance then
				return
			end

			return Library:Connect(self.Instance.MouseEnter, Function)
		end

		Instances.OnHoverLeave = function(self, Function)
			if not self.Instance then
				return
			end

			return Library:Connect(self.Instance.MouseLeave, Function)
		end
	end

	-- Custom font
	local CustomFont = {}
	do
		function CustomFont:New(Name, Weight, Style, Data)
			if isfile(Library.Folders.Assets .. "/" .. Name .. ".json") then
				return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
			end

			if not isfile(Library.Folders.Assets .. "/" .. Name .. ".ttf") then
				writefile(Library.Folders.Assets .. "/" .. Name .. ".ttf", game:HttpGet(Data.Url))
			end

			local FontData = {
				name = Name,
				faces = {
					{
						name = "Regular",
						weight = Weight,
						style = Style,
						assetId = getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".ttf"),
					},
				},
			}

			writefile(Library.Folders.Assets .. "/" .. Name .. ".json", HttpService:JSONEncode(FontData))
			return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
		end

		function CustomFont:Get(Name)
			if isfile(Library.Folders.Assets .. "/" .. Name .. ".json") then
				return Font.new(getcustomasset(Library.Folders.Assets .. "/" .. Name .. ".json"))
			end
		end

		CustomFont:New("Verdana", 400, "Regular", {
			Id = "Verdana",
			Url = "https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/verdana.ttf",
		})

		Library.Font = CustomFont:Get("Verdana")
	end

	Library.Holder = Instances:Create("ScreenGui", {
		Parent = gethui(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		DisplayOrder = 2,
		IgnoreGuiInset = true,
		ResetOnSpawn = false,
	})

	Library.UnusedHolder = Instances:Create("ScreenGui", {
		Parent = gethui(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		Enabled = false,
		ResetOnSpawn = false,
	})

	Library.NotifHolder = Instances:Create("Frame", {
		Parent = Library.Holder.Instance,
		Name = "\0",
		BorderColor3 = FromRGB(0, 0, 0),
		AnchorPoint = Vector2New(1, 0),
		BackgroundTransparency = 1,
		Position = UDim2New(1, 0, 0, 0),
		Size = UDim2New(0, 0, 1, 0),
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = FromRGB(255, 255, 255),
	})

	Instances:Create("UIListLayout", {
		Parent = Library.NotifHolder.Instance,
		Name = "\0",
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Padding = UDimNew(0, 8),
	})

	Instances:Create("UIPadding", {
		Parent = Library.NotifHolder.Instance,
		Name = "\0",
		PaddingTop = UDimNew(0, 15),
		PaddingBottom = UDimNew(0, 15),
		PaddingRight = UDimNew(0, 15),
		PaddingLeft = UDimNew(0, 15),
	})

	Library.Unload = function(self)
		if Library.BlurEffect then
			Library.BlurEffect.Size = 0
		end

		for Index, Value in self.Connections do
			Value.Connection:Disconnect()
		end

		for Index, Value in self.Threads do
			coroutine.close(Value)
		end

		if self.Holder then
			self.Holder:Clean()
		end

		Library = nil
		getgenv().Library = nil
	end

	Library.GetImage = function(self, Image)
		local ImageData = self.Images[Image]

		if not ImageData then
			return
		end

		return getcustomasset(self.Folders.Assets .. "/" .. ImageData[1])
	end

	Library.Round = function(self, Number, Float)
		local Multiplier = 1 / (Float or 1)
		return MathFloor(Number * Multiplier) / Multiplier
	end

	Library.Thread = function(self, Function)
		local NewThread = coroutine.create(Function)

		coroutine.wrap(function()
			coroutine.resume(NewThread)
		end)()

		TableInsert(self.Threads, NewThread)
		return NewThread
	end

	Library.SafeCall = function(self, Function, ...)
		local Arguements = { ... }
		local Success, Result = pcall(Function, TableUnpack(Arguements))

		if not Success then
			--warn(Result)
			return false
		end

		return Success
	end

	Library.Connect = function(self, Event, Callback, Name)
		Name = Name
			or StringFormat("connection_number_%s_%s", self.UnnamedConnections + 1, HttpService:GenerateGUID(false))

		local NewConnection = {
			Event = Event,
			Callback = Callback,
			Name = Name,
			Connection = nil,
		}

		Library:Thread(function()
			NewConnection.Connection = Event:Connect(Callback)
		end)

		TableInsert(self.Connections, NewConnection)
		return NewConnection
	end

	Library.Disconnect = function(self, Name)
		for _, Connection in self.Connections do
			if Connection.Name == Name then
				Connection.Connection:Disconnect()
				break
			end
		end
	end

	Library.EscapePattern = function(self, String)
		local ShouldEscape = false

		if string.match(String, "[%(%)%.%%%+%-%*%?%[%]%^%$]") then
			ShouldEscape = true
		end

		if ShouldEscape then
			return StringGSub(String, "[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%1")
		end

		return String
	end

	Library.NextFlag = function(self)
		local FlagNumber = self.UnnamedFlags + 1
		return StringFormat("flag_number_%s_%s", FlagNumber, HttpService:GenerateGUID(false))
	end

	Library.AddToTheme = function(self, Item, Properties)
		Item = Item.Instance or Item

		local ThemeData = {
			Item = Item,
			Properties = Properties,
		}

		for Property, Value in ThemeData.Properties do
			if type(Value) == "string" then
				Item[Property] = self.Theme[Value]
			else
				Item[Property] = Value()
			end
		end

		TableInsert(self.ThemeItems, ThemeData)
		self.ThemeMap[Item] = ThemeData
	end

	Library.GetConfig = function(self)
		local Config = {}

		local Success, Result = Library:SafeCall(function()
			for Index, Value in Library.Flags do
				if type(Value) == "table" and Value.Key then
					Config[Index] = { Key = tostring(Value.Key), Mode = Value.Mode, Toggled = Value.Toggled }
				elseif type(Value) == "table" and Value.Color then
					Config[Index] = { Color = "#" .. Value.HexValue, Alpha = Value.Alpha }
				else
					Config[Index] = Value
				end
			end
		end)

		return HttpService:JSONEncode(Config)
	end

	Library.LoadConfig = function(self, Config)
		local Decoded = HttpService:JSONDecode(Config)

		local Success, Result = Library:SafeCall(function()
			for Index, Value in Decoded do
				local SetFunction = Library.SetFlags[Index]

				if not SetFunction then
					continue
				end

				if type(Value) == "table" and Value.Key then
					SetFunction(Value)
				elseif type(Value) == "table" and Value.Color then
					SetFunction(Value.Color, Value.Alpha)
				else
					SetFunction(Value)
				end
			end
		end)

		return Success, Result
	end

	Library.DeleteConfig = function(self, Config)
		if isfile(Library.Folders.Configs .. "/" .. Config) then
			delfile(Library.Folders.Configs .. "/" .. Config)
		end
	end

	Library.RefreshConfigsList = function(self, Element)
		local List = {}
		local ReturnList = {}

		List = listfiles(Library.Folders.Configs)

		for Index = 1, #List do
			local File = List[Index]

			if File:sub(-5) == ".json" then
				local Position = File:find(".json", 1, true)
				local StartPosition = Position

				local Character = File:sub(Position, Position)
				while Character ~= "/" and Character ~= "\\" and Character ~= "" do
					Position = Position - 1
					Character = File:sub(Position, Position)
				end

				if Character == "/" or Character == "\\" then
					TableInsert(ReturnList, File:sub(Position + 1, StartPosition - 1))
				end
			end
		end

		Element:Refresh(ReturnList)
	end

	Library.ChangeItemTheme = function(self, Item, Properties)
		Item = Item.Instance or Item

		if not self.ThemeMap[Item] then
			return
		end

		self.ThemeMap[Item].Properties = Properties
		self.ThemeMap[Item] = self.ThemeMap[Item]
	end

	Library.ChangeTheme = function(self, Theme, Color)
		if Theme == "Accent" then
			return
		end

		self.Theme[Theme] = Color

		for _, Item in self.ThemeItems do
			for Property, Value in Item.Properties do
				if type(Value) == "string" and Value == Theme then
					Item.Item[Property] = Color
				elseif type(Value) == "function" then
					Item.Item[Property] = Value()
				end
			end
		end
	end

	Library.IsMouseOverFrame = function(self, Frame)
		Frame = Frame.Instance

		local MousePosition = Vector2New(Mouse.X, Mouse.Y)

		return MousePosition.X >= Frame.AbsolutePosition.X
			and MousePosition.X <= Frame.AbsolutePosition.X + Frame.AbsoluteSize.X
			and MousePosition.Y >= Frame.AbsolutePosition.Y
			and MousePosition.Y <= Frame.AbsolutePosition.Y + Frame.AbsoluteSize.Y
	end

	Library.GetLighterColor = function(self, Color, Increment)
		local Hue, Saturation, Value = Color:ToHSV()
		return FromHSV(Hue, Saturation, Value * Increment)
	end

	do
		Library.CreateColorpicker = function(self, Data)
			local Colorpicker = {
				Hue = 0,
				Saturation = 0,
				Value = 0,

				Alpha = 0,

				IsOpen = false,
				IsOpen2 = false,

				Color = FromRGB(0, 0, 0),
				HexValue = "000000",

				Flag = Data.Flag,
			}

			local Items = {}
			do
				Items["ColorpickerButton"] = Instances:Create("TextButton", {
					Parent = Data.Parent.Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					Size = UDim2New(0, 15, 0, 15),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = ACCENT_COLOR,
				})

				Instances:Create("UIStroke", {
					Parent = Items["ColorpickerButton"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Instances:Create("UIGradient", {
					Parent = Items["ColorpickerButton"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(152, 152, 152)),
					}),
				})

				Items["ColorpickerWindow"] = Instances:Create("Frame", {
					Parent = Library.UnusedHolder.Instance,
					Name = "\0",
					Visible = false,
					Position = UDim2New(0, 1032, 0, 123),
					BorderColor3 = FromRGB(0, 34, 37),
					Size = UDim2New(0, 232, 0, 265),
					BorderSizePixel = 2,
					BackgroundColor3 = FromRGB(17, 21, 27),
				})

				Items["Glow"] = Instances:Create("ImageLabel", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					ImageColor3 = ACCENT_COLOR,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.699999988079071,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
					Size = UDim2New(1, 25, 1, 25),
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "http://www.roblox.com/asset/?id=18245826428",
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					ZIndex = -1,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
				})
				Items["Glow"]:AddToTheme({ ImageColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				Instances:Create("UIStroke", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					Color = ACCENT_COLOR,
					LineJoinMode = Enum.LineJoinMode.Miter,
				}):AddToTheme({ Color = "Accent" })

				Items["Alpha"] = Instances:Create("TextButton", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = Vector2New(0, 1),
					BorderSizePixel = 0,
					Position = UDim2New(0, 8, 1, -35),
					Size = UDim2New(1, -16, 0, 10),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = ACCENT_COLOR,
				})

				Items["Checkers"] = Instances:Create("ImageLabel", {
					Parent = Items["Alpha"].Instance,
					Name = "\0",
					ScaleType = Enum.ScaleType.Tile,
					BorderColor3 = FromRGB(0, 0, 0),
					TileSize = UDim2New(0, 6, 0, 6),
					Image = "http://www.roblox.com/asset/?id=18274452449",
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 1, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIGradient", {
					Parent = Items["Checkers"].Instance,
					Name = "\0",
					Transparency = NumSequence({
						NumSequenceKeypoint(0, 1),
						NumSequenceKeypoint(0.37, 0.5),
						NumSequenceKeypoint(1, 0),
					}),
				})

				Items["AlphaDragger"] = Instances:Create("Frame", {
					Parent = Items["Alpha"].Instance,
					Name = "\0",
					Size = UDim2New(0, 2, 1, 0),
					Position = UDim2New(0, 8, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["AlphaDragger"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Hue"] = Instances:Create("TextButton", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = Vector2New(1, 0),
					BorderSizePixel = 0,
					Position = UDim2New(1, -7, 0, 8),
					Size = UDim2New(0, 10, 1, -59),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Items["HueInline"] = Instances:Create("TextButton", {
					Parent = Items["Hue"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Size = UDim2New(1, 0, 1, 0),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIGradient", {
					Parent = Items["HueInline"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 0, 0)),
						RGBSequenceKeypoint(0.17, FromRGB(255, 255, 0)),
						RGBSequenceKeypoint(0.33, FromRGB(0, 255, 0)),
						RGBSequenceKeypoint(0.5, FromRGB(0, 255, 255)),
						RGBSequenceKeypoint(0.67, FromRGB(0, 0, 255)),
						RGBSequenceKeypoint(0.83, FromRGB(255, 0, 255)),
						RGBSequenceKeypoint(1, FromRGB(255, 0, 0)),
					}),
				})

				Instances:Create("UIStroke", {
					Parent = Items["Hue"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["HueDragger"] = Instances:Create("Frame", {
					Parent = Items["Hue"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundTransparency = -0.009999999776482582,
					Position = UDim2New(0, 0, 0, 8),
					Size = UDim2New(1, 0, 0, 2),
					ZIndex = 3,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["HueDragger"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Palette"] = Instances:Create("TextButton", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Position = UDim2New(0, 8, 0, 8),
					Size = UDim2New(1, -31, 1, -59),
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = ACCENT_COLOR,
				})

				Instances:Create("UIStroke", {
					Parent = Items["Palette"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Saturation"] = Instances:Create("Frame", {
					Parent = Items["Palette"].Instance,
					Name = "\0",
					Size = UDim2New(1, 0, 1, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIGradient", {
					Parent = Items["Saturation"].Instance,
					Name = "\0",
					Transparency = NumSequence({ NumSequenceKeypoint(0, 1), NumSequenceKeypoint(1, 0) }),
				})

				Items["Value"] = Instances:Create("Frame", {
					Parent = Items["Palette"].Instance,
					Name = "\0",
					Size = UDim2New(1, 0, 1, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(0, 0, 0),
				})

				Instances:Create("UIGradient", {
					Parent = Items["Value"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 1), NumSequenceKeypoint(1, 0) }),
				})

				Items["PaletteDragger"] = Instances:Create("Frame", {
					Parent = Items["Palette"].Instance,
					Name = "\0",
					Size = UDim2New(0, 2, 0, 2),
					Position = UDim2New(0, 8, 0, 8),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["PaletteDragger"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["HexInput"] = Instances:Create("TextBox", {
					Parent = Items["ColorpickerWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					ClearTextOnFocus = false,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AnchorPoint = Vector2New(0, 1),
					Size = UDim2New(1, -16, 0, 20),
					PlaceholderColor3 = FromRGB(255, 255, 255),
					Position = UDim2New(0, 8, 1, -7),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["HexInput"]:AddToTheme({ TextColor3 = "Text", BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["HexInput"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["ColorpickerWindow2"] = Instances:Create("Frame", {
					Parent = Library.UnusedHolder.Instance,
					Name = "\0",
					Position = UDim2New(0, 0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0, 50, 0, 20),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(32, 38, 48),
					AutomaticSize = Enum.AutomaticSize.Y,
				})
				Items["ColorpickerWindow2"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["ColorpickerWindow2"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Instances:Create("UIListLayout", {
					Parent = Items["ColorpickerWindow2"].Instance,
					Name = "\0",
					Padding = UDimNew(0, 2),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			end

			local AddButton = function(Name, Callback)
				local NewButton = Instances:Create("TextButton", {
					Parent = Items["ColorpickerWindow2"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Name,
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				NewButton:AddToTheme({ TextColor3 = "Text" })

				NewButton:Connect("MouseButton1Down", function()
					Callback()
					Colorpicker:SetOpen2(false)
				end)

				return NewButton
			end

			AddButton("Copy", function()
				local Red = MathFloor(Colorpicker.Color.R * 255)
				local Green = MathFloor(Colorpicker.Color.G * 255)
				local Blue = MathFloor(Colorpicker.Color.B * 255)

				setclipboard(Red .. ", " .. Green .. ", " .. Blue)
				Library.CopiedColor = Red .. ", " .. Green .. ", " .. Blue
			end)
			AddButton("Paste", function()
				if Library.CopiedColor then
					local Red, Green, Blue = Library.CopiedColor:match("(%d+),%s*(%d+),%s*(%d+)")
					Red, Green, Blue = tonumber(Red), tonumber(Green), tonumber(Blue)

					Colorpicker:Set({ Red, Green, Blue }, Colorpicker.Alpha)
				end
			end)

			local SlidingPalette = false
			local SlidingHue = false
			local SlidingAlpha = false

			local Debounce = false
			local RenderStepped

			local RenderStepped2

			function Colorpicker:Get()
				return Colorpicker.Color, Colorpicker.Alpha
			end

			function Colorpicker:SetOpen(Bool)
				if Debounce then
					return
				end

				Colorpicker.IsOpen = Bool

				Debounce = true

				if Colorpicker.IsOpen then
					Items["ColorpickerWindow"].Instance.Visible = true
					Items["ColorpickerWindow"].Instance.Parent = Library.Holder.Instance

					RenderStepped = RunService.RenderStepped:Connect(function()
						Items["ColorpickerWindow"].Instance.Position = UDim2New(
							0,
							Items["ColorpickerButton"].Instance.AbsolutePosition.X,
							0,
							Items["ColorpickerButton"].Instance.AbsolutePosition.Y
								+ Items["ColorpickerButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)

					for Index, Value in Library.OpenFrames do
						if Value ~= Colorpicker then
							Value:SetOpen(false)
						end
					end

					Library.OpenFrames[Colorpicker] = Colorpicker
				else
					if Library.OpenFrames[Colorpicker] then
						Library.OpenFrames[Colorpicker] = nil
					end

					if RenderStepped then
						RenderStepped:Disconnect()
						RenderStepped = nil
					end
				end

				local Descendants = Items["ColorpickerWindow"].Instance:GetDescendants()
				TableInsert(Descendants, Items["ColorpickerWindow"].Instance)

				local NewTween

				for Index, Value in Descendants do
					local TransparencyProperty = Tween:GetProperty(Value)

					if not TransparencyProperty then
						continue
					end

					if not Value.ClassName:find("UI") then
						Value.ZIndex = Colorpicker.IsOpen and 104 or 1
						Items["Glow"].Instance.ZIndex = Colorpicker.IsOpen and 103 or 1
					end

					if type(TransparencyProperty) == "table" then
						for _, Property in TransparencyProperty do
							NewTween = Tween:FadeItem(Value, Property, Bool, Library.FadeSpeed)
						end
					else
						NewTween = Tween:FadeItem(Value, TransparencyProperty, Bool, Library.FadeSpeed)
					end
				end

				NewTween.Tween.Completed:Connect(function()
					Debounce = false
					Items["ColorpickerWindow"].Instance.Visible = Colorpicker.IsOpen
					task.wait(0.2)
					Items["ColorpickerWindow"].Instance.Parent = not Colorpicker.IsOpen
							and Library.UnusedHolder.Instance
						or Library.Holder.Instance
				end)
			end

			function Colorpicker:SetOpen2(Bool)
				Colorpicker.IsOpen2 = Bool
				if Bool then
					Items["ColorpickerWindow2"].Instance.Visible = true
					Items["ColorpickerWindow2"].Instance.Parent = Library.Holder.Instance

					RenderStepped2 = RunService.RenderStepped:Connect(function()
						Items["ColorpickerWindow2"].Instance.Position = UDim2New(
							0,
							Items["ColorpickerButton"].Instance.AbsolutePosition.X
								+ Items["ColorpickerButton"].Instance.AbsoluteSize.X,
							0,
							Items["ColorpickerButton"].Instance.AbsolutePosition.Y
								+ Items["ColorpickerButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)
				else
					if RenderStepped2 then
						RenderStepped2:Disconnect()
						RenderStepped2 = nil
					end

					Items["ColorpickerWindow2"].Instance.Visible = false
					Items["ColorpickerWindow2"].Instance.Parent = Library.UnusedHolder.Instance
				end
			end

			function Colorpicker:SlidePalette(Input)
				if not Input or not SlidingPalette then
					return
				end

				local ValueX = MathClamp(
					1
						- (Input.Position.X - Items["Palette"].Instance.AbsolutePosition.X)
							/ Items["Palette"].Instance.AbsoluteSize.X,
					0,
					1
				)
				local ValueY = MathClamp(
					1
						- (Input.Position.Y - Items["Palette"].Instance.AbsolutePosition.Y)
							/ Items["Palette"].Instance.AbsoluteSize.Y,
					0,
					1
				)

				Colorpicker.Saturation = ValueX
				Colorpicker.Value = ValueY

				local SlideX = MathClamp(
					(Input.Position.X - Items["Palette"].Instance.AbsolutePosition.X)
						/ Items["Palette"].Instance.AbsoluteSize.X,
					0,
					0.99
				)
				local SlideY = MathClamp(
					(Input.Position.Y - Items["Palette"].Instance.AbsolutePosition.Y)
						/ Items["Palette"].Instance.AbsoluteSize.Y,
					0,
					0.99
				)

				Items["PaletteDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(SlideX, 0, SlideY, 0) }
				)
				Colorpicker:Update()
			end

			function Colorpicker:SlideHue(Input)
				if not Input or not SlidingHue then
					return
				end

				local ValueY = MathClamp(
					(Input.Position.Y - Items["Hue"].Instance.AbsolutePosition.Y) / Items["Hue"].Instance.AbsoluteSize.Y,
					0,
					1
				)

				Colorpicker.Hue = ValueY

				local SlideY = MathClamp(
					(Input.Position.Y - Items["Hue"].Instance.AbsolutePosition.Y) / Items["Hue"].Instance.AbsoluteSize.Y,
					0,
					0.99
				)

				Items["HueDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(0, 0, SlideY, 0) }
				)
				Colorpicker:Update()
			end

			function Colorpicker:SlideAlpha(Input)
				if not Input or not SlidingAlpha then
					return
				end

				local ValueX = MathClamp(
					(Input.Position.X - Items["Alpha"].Instance.AbsolutePosition.X)
						/ Items["Alpha"].Instance.AbsoluteSize.X,
					0,
					1
				)

				Colorpicker.Alpha = ValueX

				local SlideX = MathClamp(
					(Input.Position.X - Items["Alpha"].Instance.AbsolutePosition.X)
						/ Items["Alpha"].Instance.AbsoluteSize.X,
					0,
					0.99
				)

				Items["AlphaDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(SlideX, 0, 0, 0) }
				)
				Colorpicker:Update(true)
			end

			function Colorpicker:Update(IsFromAlpha)
				local Hue, Saturation, Value = Colorpicker.Hue, Colorpicker.Saturation, Colorpicker.Value
				Colorpicker.Color = FromHSV(Hue, Saturation, Value)
				Colorpicker.HexValue = Colorpicker.Color:ToHex()

				Library.Flags[Colorpicker.Flag] = {
					Alpha = Colorpicker.Alpha,
					Color = Colorpicker.Color,
					HexValue = Colorpicker.HexValue,
				}

				Items["ColorpickerButton"]:Tween(nil, { BackgroundColor3 = Colorpicker.Color })
				Items["Palette"]:Tween(nil, { BackgroundColor3 = FromHSV(Hue, 1, 1) })
				Items["HexInput"].Instance.Text = "#" .. Colorpicker.HexValue

				if not IsFromAlpha then
					Items["Alpha"]:Tween(nil, { BackgroundColor3 = Colorpicker.Color })
				end

				if Data.Callback then
					Library:SafeCall(Data.Callback, Colorpicker.Color, Colorpicker.Alpha)
				end
			end

			function Colorpicker:Set(Color, Alpha)
				if type(Color) == "table" then
					Color = FromRGB(Color[1], Color[2], Color[3])
				elseif type(Color) == "string" then
					Color = FromHex(Color)
				end

				Colorpicker.Hue, Colorpicker.Saturation, Colorpicker.Value = Color:ToHSV()
				Colorpicker.Alpha = Alpha or 0

				local PaletteValueX = MathClamp(1 - Colorpicker.Saturation, 0, 0.99)
				local PaletteValueY = MathClamp(1 - Colorpicker.Value, 0, 0.99)

				local AlphaPositionX = MathClamp(Colorpicker.Alpha, 0, 0.99)

				local HuePositionY = MathClamp(Colorpicker.Hue, 0, 0.99)

				Items["PaletteDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(PaletteValueX, 0, PaletteValueY, 0) }
				)
				Items["HueDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(0, 0, HuePositionY, 0) }
				)
				Items["AlphaDragger"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Position = UDim2New(AlphaPositionX, 0, 0, 0) }
				)
				Colorpicker:Update(false)
			end

			local PaletteChanged

			Items["Palette"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					SlidingPalette = true
					Colorpicker:SlidePalette(Input)

					if PaletteChanged then 
						return 
					end

					PaletteChanged = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							SlidingPalette = false

							PaletteChanged:Disconnect()
							PaletteChanged = nil
						end
					end)
				end
			end)

			local HueChanged

			Items["HueInline"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					SlidingHue = true
					Colorpicker:SlideHue(Input)

					if HueChanged then 
						return 
					end

					HueChanged = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							SlidingHue = false

							HueChanged:Disconnect()
							HueChanged = nil
						end
					end)
				end
			end)

			local AlphaChanged

			Items["Alpha"]:Connect("InputBegan", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					SlidingAlpha = true
					Colorpicker:SlideAlpha(Input)

					if AlphaChanged then 
						return
					end

					AlphaChanged = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							SlidingAlpha = false

							AlphaChanged:Disconnect()
							AlphaChanged = nil
						end
					end)
				end
			end)

			Items["HexInput"]:Connect("FocusLost", function()
				Colorpicker:Set(tostring(Items["HexInput"].Instance.Text), Colorpicker.Alpha)
			end)

			local CompareVectors = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local IsClipped = function(Object, Column)
				local Parent = Column

				local BoundryTop = Parent.AbsolutePosition
				local BoundryBottom = BoundryTop + Parent.AbsoluteSize

				local Top = Object.AbsolutePosition
				local Bottom = Top + Object.AbsoluteSize

				return CompareVectors(Top, BoundryTop) or CompareVectors(BoundryBottom, Bottom)
			end

			Items["ColorpickerButton"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and Colorpicker.IsOpen then
					Colorpicker.IsOpen = not IsClipped(
						Items["ColorpickerWindow"].Instance,
						Data.Section.Items["Section"].Instance.Parent
					)
					Items["ColorpickerWindow"].Instance.Visible = Colorpicker.IsOpen
				end
			end)

			Library:Connect(UserInputService.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
					if SlidingPalette then
						Colorpicker:SlidePalette(Input)
					elseif SlidingHue then
						Colorpicker:SlideHue(Input)
					elseif SlidingAlpha then
						Colorpicker:SlideAlpha(Input)
					end
				end
			end)

			Library:Connect(UserInputService.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					if not Colorpicker.IsOpen then
						return
					end

					if
						Library:IsMouseOverFrame(Items["ColorpickerWindow"])
						or Library:IsMouseOverFrame(Items["ColorpickerWindow2"])
					then
						return
					end

					Colorpicker:SetOpen(false)
					Colorpicker:SetOpen2(false)
				end
			end)

			Items["ColorpickerButton"]:Connect("MouseButton1Down", function()
				Colorpicker:SetOpen(not Colorpicker.IsOpen)
			end)

			Items["ColorpickerButton"]:Connect("MouseButton2Down", function()
				Colorpicker:SetOpen2(not Colorpicker.IsOpen2)
			end)

			if Data.Default then
				Colorpicker:Set(Data.Default, Data.Alpha)
			end

			Library.SetFlags[Colorpicker.Flag] = function(Color, Alpha)
				Colorpicker:Set(Color, Alpha)
			end

			return Colorpicker, Items
		end

		Library.CreateKeybind = function(self, Data)
			local Keybind = {
				IsOpen = false,

				Key = "",
				Toggled = false,
				Mode = "",

				Flag = Data.Flag,

				Picking = false,
				Value = "",
			}

			local KeyListItem
			if Library.KeyList then
				KeyListItem = Library.KeyList:Add("", "")
			end

			local Items = {}
			do
				Items["KeyButton"] = Instances:Create("TextButton", {
					Parent = Data.Parent.Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.5,
					Text = "Unbound",
					AutoButtonColor = false,
					Size = UDim2New(0, 0, 0, 15),
					BorderSizePixel = 0,
					BorderColor3 = FromRGB(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["KeyButton"]:AddToTheme({ TextColor3 = "Text", BackgroundColor3 = "Element" })

				Instances:Create("UIPadding", {
					Parent = Items["KeyButton"].Instance,
					Name = "\0",
					PaddingRight = UDimNew(0, 8),
					PaddingLeft = UDimNew(0, 8),
				})

				Instances:Create("UIStroke", {
					Parent = Items["KeyButton"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["KeybindWindow"] = Instances:Create("Frame", {
					Parent = Library.UnusedHolder.Instance,
					Name = "\0",
					Visible = false,
					Position = UDim2New(0, 114, 0, 35),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					Size = UDim2New(0, 78, 0, 66),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["KeybindWindow"]:AddToTheme({ BackgroundColor3 = "Element" })

				Items["Toggle"] = Instances:Create("TextButton", {
					Parent = Items["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					Position = UDim2New(0, 2, 0, 2),
					Size = UDim2New(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["Toggle"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIGradient", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(200, 200, 200)),
					}),
				})

				Items["ToggleStroke"] = Instances:Create("UIStroke", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				Items["ToggleStroke"]:AddToTheme({ Color = "Border" })

				Items["ToggleLiner"] = Instances:Create("Frame", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					Size = UDim2New(0, 1, 1, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["ToggleLiner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["ToggleText"] = Instances:Create("TextLabel", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "Toggle",
					AutomaticSize = Enum.AutomaticSize.X,
					AnchorPoint = Vector2New(0, 0.5),
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 7, 0.5, 0),
					BorderSizePixel = 0,
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["ToggleText"]:AddToTheme({ TextColor3 = "Text" })

				Items["Hold"] = Instances:Create("TextButton", {
					Parent = Items["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0, 2, 0, 22),
					Size = UDim2New(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["Hold"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIGradient", {
					Parent = Items["Hold"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(200, 200, 200)),
					}),
				})

				Items["HoldStroke"] = Instances:Create("UIStroke", {
					Parent = Items["Hold"].Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				Items["HoldStroke"]:AddToTheme({ Color = "Border" })

				Items["HoldLiner"] = Instances:Create("Frame", {
					Parent = Items["Hold"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = UDim2New(0, 1, 1, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["HoldLiner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["HoldText"] = Instances:Create("TextLabel", {
					Parent = Items["Hold"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = "Hold",
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2New(0, 0, 0, 15),
					AnchorPoint = Vector2New(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0, 10, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["HoldText"]:AddToTheme({ TextColor3 = "Text" })

				Items["AlwaysOn"] = Instances:Create("TextButton", {
					Parent = Items["KeybindWindow"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0, 2, 0, 44),
					Size = UDim2New(1, -4, 0, 20),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})

				Instances:Create("UIGradient", {
					Parent = Items["AlwaysOn"].Instance,
					Name = "\0",
					Rotation = -90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(200, 200, 200)),
					}),
				})

				Items["AlwaysOnStroke"] = Instances:Create("UIStroke", {
					Parent = Items["AlwaysOn"].Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				Items["AlwaysOnStroke"]:AddToTheme({ Color = "Border" })

				Items["AlwaysOnLiner"] = Instances:Create("Frame", {
					Parent = Items["AlwaysOn"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = UDim2New(0, 1, 1, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["AlwaysOnLiner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["AlwaysOnText"] = Instances:Create("TextLabel", {
					Parent = Items["AlwaysOn"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = "Always On",
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2New(0, 0, 0, 15),
					AnchorPoint = Vector2New(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0, 10, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["AlwaysOnText"]:AddToTheme({ TextColor3 = "Text" })

				Items["KeyButton"]:OnHover(function()
					Items["KeyButton"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["KeyButton"]:OnHoverLeave(function()
					Items["KeyButton"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)
			end

			local Update = function()
				if KeyListItem then
					KeyListItem:SetText(Data.Name, Keybind.Value)
					KeyListItem:SetStatus(Keybind.Toggled)
				end
			end

			local Modes = {
				["Toggle"] = { Items["Toggle"], Items["ToggleText"], Items["ToggleStroke"], Items["ToggleLiner"] },
				["Hold"] = { Items["Hold"], Items["HoldText"], Items["HoldStroke"], Items["HoldLiner"] },
				["Always On"] = {
					Items["AlwaysOn"],
					Items["AlwaysOnText"],
					Items["AlwaysOnStroke"],
					Items["AlwaysOnLiner"],
				},
			}

			function Keybind:Get()
				return Keybind.Mode, Keybind.Key, Keybind.Toggled
			end

			local Debounce = false
			local RenderStepped

			function Keybind:SetOpen(Bool)
				if Debounce then
					return
				end

				Keybind.IsOpen = Bool

				Debounce = true

				if Keybind.IsOpen then
					Items["KeybindWindow"].Instance.Visible = true
					Items["KeybindWindow"].Instance.Parent = Library.Holder.Instance

					RenderStepped = RunService.RenderStepped:Connect(function()
						Items["KeybindWindow"].Instance.Position = UDim2New(
							0,
							Items["KeyButton"].Instance.AbsolutePosition.X,
							0,
							Items["KeyButton"].Instance.AbsolutePosition.Y
								+ Items["KeyButton"].Instance.AbsoluteSize.Y
								+ 65
						)
					end)

					if not Debounce then
						for Index, Value in Library.OpenFrames do
							if Value ~= Keybind then
								Value:SetOpen(false)
							end
						end

						Library.OpenFrames[Keybind] = Keybind
					end
				else
					if not Debounce then
						if Library.OpenFrames[Keybind] then
							Library.OpenFrames[Keybind] = nil
						end
					end

					if RenderStepped then
						RenderStepped:Disconnect()
						RenderStepped = nil
					end
				end

				local Descendants = Items["KeybindWindow"].Instance:GetDescendants()
				TableInsert(Descendants, Items["KeybindWindow"].Instance)

				local NewTween

				for Index, Value in Descendants do
					local TransparencyProperty = Tween:GetProperty(Value)

					if not TransparencyProperty then
						continue
					end

					if type(TransparencyProperty) == "table" then
						for _, Property in TransparencyProperty do
							NewTween = Tween:FadeItem(Value, Property, Bool, Library.FadeSpeed)
						end
					else
						NewTween = Tween:FadeItem(Value, TransparencyProperty, Bool, Library.FadeSpeed)
					end
				end

				NewTween.Tween.Completed:Connect(function()
					Debounce = false
					Items["KeybindWindow"].Instance.Visible = Keybind.IsOpen
					task.wait(0.2)
					Items["KeybindWindow"].Instance.Parent = not Keybind.IsOpen and Library.UnusedHolder.Instance
						or Library.Holder.Instance
				end)
			end

			function Keybind:Set(Key)
				if StringFind(tostring(Key), "Enum") then
					Keybind.Key = tostring(Key)

					Key = Key.Name == "Backspace" and "None" or Key.Name

					local KeyString = Keys[Keybind.Key] or StringGSub(Key, "Enum.", "") or "None"
					local TextToDisplay = StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "")
						or "None"

					Keybind.Value = TextToDisplay
					Items["KeyButton"].Instance.Text = TextToDisplay

					Library.Flags[Keybind.Flag] = {
						Mode = Keybind.Mode,
						Key = Keybind.Key,
						Toggled = Keybind.Toggled,
					}

					if Data.Callback then
						Library:SafeCall(Data.Callback, Keybind.Toggled)
					end

					Update()
				elseif type(Key) == "table" then
					local RealKey = Key.Key == "Backspace" and "None" or Key.Key
					Keybind.Key = tostring(Key.Key)

					if Key.Mode then
						Keybind.Mode = Key.Mode
						Keybind:SetMode(Key.Mode)
					else
						Keybind.Mode = "Toggle"
						Keybind:SetMode("Toggle")
					end

					local KeyString = Keys[Keybind.Key] or StringGSub(tostring(RealKey), "Enum.", "") or RealKey
					local TextToDisplay = KeyString
							and StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "")
						or "None"

					TextToDisplay = StringGSub(StringGSub(KeyString, "KeyCode.", ""), "UserInputType.", "")

					Keybind.Value = TextToDisplay
					Items["KeyButton"].Instance.Text = TextToDisplay

					if Key.Toggled then
						Keybind:Press(Key.Toggled, true)
					end

					if Data.Callback then
						Library:SafeCall(Data.Callback, Keybind.Toggled)
					end

					Update()
				elseif TableFind({ "Toggle", "Hold", "Always" }, Key) then
					Keybind.Mode = Key
					Keybind:SetMode(Keybind.Mode)

					if Data.Callback then
						Library:SafeCall(Data.Callback, Keybind.Toggled)
					end

					Update()
				elseif type(Key) == "boolean" then
					Keybind:Press(Key)
				end

				Keybind.Picking = false
			end

			function Keybind:Press(Bool)
				if Keybind.Mode == "Toggle" then
					Keybind.Toggled = not Keybind.Toggled
				elseif Keybind.Mode == "Hold" then
					Keybind.Toggled = Bool
				elseif Keybind.Mode == "Always" then
					Keybind.Toggled = true
				end

				Library.Flags[Keybind.Flag] = {
					Mode = Keybind.Mode,
					Key = Keybind.Key,
					Toggled = Keybind.Toggled,
				}

				if Data.Callback then
					Library:SafeCall(Data.Callback, Keybind.Toggled)
				end

				Update()
			end

			function Keybind:SetMode(Mode)
				for Index, Value in Modes do
					if Index == Mode then
						Value[1]:Tween(nil, { BackgroundTransparency = 0 })
						Value[4]:Tween(nil, { BackgroundTransparency = 0 })
						Value[2]:Tween(nil, { TextTransparency = 0 })
						Value[3]:Tween(nil, { Transparency = 0 })
					else
						Value[1]:Tween(nil, { BackgroundTransparency = 1 })
						Value[4]:Tween(nil, { BackgroundTransparency = 1 })
						Value[2]:Tween(nil, { TextTransparency = 0.4 })
						Value[3]:Tween(nil, { Transparency = 1 })
					end
				end

				Library.Flags[Keybind.Flag] = {
					Mode = Keybind.Mode,
					Key = Keybind.Key,
					Toggled = Keybind.Toggled,
				}

				if Data.Callback then
					Library:SafeCall(Data.Callback, Keybind.Toggled)
				end

				Update()
			end

			local CompareVectors = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local IsClipped = function(Object, Column)
				local Parent = Column

				local BoundryTop = Parent.AbsolutePosition
				local BoundryBottom = BoundryTop + Parent.AbsoluteSize

				local Top = Object.AbsolutePosition
				local Bottom = Top + Object.AbsoluteSize

				return CompareVectors(Top, BoundryTop) or CompareVectors(BoundryBottom, Bottom)
			end

			Items["KeyButton"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and Keybind.IsOpen then
					Keybind.IsOpen =
						not IsClipped(Items["KeybindWindow"].Instance, Data.Section.Items["Section"].Instance.Parent)
					Items["KeybindWindow"].Instance.Visible = Keybind.IsOpen
				end
			end)

			Items["KeyButton"]:Connect("MouseButton1Click", function()
				Keybind.Picking = true

				Items["KeyButton"].Instance.Text = "."
				Library:Thread(function()
					local Count = 1

					while true do
						if not Keybind.Picking then
							break
						end

						if Count == 4 then
							Count = 1
						end

						Items["KeyButton"].Instance.Text = Count == 1 and "."
							or Count == 2 and ".."
							or Count == 3 and "..."
						Count += 1
						task.wait(0.4)
					end
				end)

				local InputBegan
				InputBegan = UserInputService.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.Keyboard then
						Keybind:Set(Input.KeyCode)
					else
						Keybind:Set(Input.UserInputType)
					end

					InputBegan:Disconnect()
					InputBegan = nil
				end)
			end)

			Items["KeyButton"]:Connect("MouseButton2Down", function()
				Keybind:SetOpen(not Keybind.IsOpen)
			end)

			Library:Connect(UserInputService.InputBegan, function(Input)
				if Keybind.Value == "None" then
					return
				end

				if tostring(Input.KeyCode) == Keybind.Key then
					if Keybind.Mode == "Toggle" then
						Keybind:Press()
					elseif Keybind.Mode == "Hold" then
						Keybind:Press(true)
					elseif Keybind.Mode == "Always" then
						Keybind:Press(true)
					end
				elseif tostring(Input.UserInputType) == Keybind.Key then
					if Keybind.Mode == "Toggle" then
						Keybind:Press()
					elseif Keybind.Mode == "Hold" then
						Keybind:Press(true)
					elseif Keybind.Mode == "Always" then
						Keybind:Press(true)
					end
				end

				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					if not Keybind.IsOpen then
						return
					end

					if Library:IsMouseOverFrame(Items["KeybindWindow"]) then
						return
					end

					Keybind:SetOpen(false)
				end
			end)

			Library:Connect(UserInputService.InputEnded, function(Input)
				if Keybind.Value == "None" then
					return
				end

				if tostring(Input.KeyCode) == Keybind.Key then
					if Keybind.Mode == "Hold" then
						Keybind:Press(false)
					elseif Keybind.Mode == "Always" then
						Keybind:Press(true)
					end
				elseif tostring(Input.UserInputType) == Keybind.Key then
					if Keybind.Mode == "Hold" then
						Keybind:Press(false)
					elseif Keybind.Mode == "Always" then
						Keybind:Press(true)
					end
				end
			end)

			Items["Toggle"]:Connect("MouseButton1Down", function()
				Keybind.Mode = "Toggle"
				Keybind:SetMode("Toggle")
			end)

			Items["Hold"]:Connect("MouseButton1Down", function()
				Keybind.Mode = "Hold"
				Keybind:SetMode("Hold")
			end)

			Items["AlwaysOn"]:Connect("MouseButton1Down", function()
				Keybind.Mode = "Always"
				Keybind:SetMode("Always On")
			end)

			if Data.Default then
				Keybind:Set({ Key = Data.Default, Mode = Data.Mode or "Toggle", Toggled = Data.Toggled })
			elseif KeyListItem then
				KeyListItem:SetText(Data.Name or "", "Unbound")
				KeyListItem:SetStatus(false)
			end

			Library.SetFlags[Keybind.Flag] = function(Value)
				Keybind:Set(Value)
			end

			return Keybind, Items
		end

		Library.Watermark = function(self, _)
			local Watermark = {}

			local Items = {}
			do
				Items["Watermark"] = Instances:Create("Frame", {
					Parent = Library.Holder.Instance,
					Name = "\0",
					AnchorPoint = Vector2New(0.5, 0),
					Position = UDim2New(0.5, 0, 0, 25),
					BorderColor3 = FromRGB(0, 34, 37),
					Size = UDim2New(0, 0, 0, 30),
					BorderSizePixel = 2,
					BackgroundColor3 = FromRGB(17, 21, 27),
					ZIndex = 5,
					AutomaticSize = Enum.AutomaticSize.X,
				})
				Items["Watermark"]:AddToTheme({ BackgroundColor3 = "Background 1" })

				Items["UIStroke"] = Instances:Create("UIStroke", {
					Parent = Items["Watermark"].Instance,
					Name = "\0",
					Color = ACCENT_COLOR,
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				Items["UIStroke"]:AddToTheme({ Color = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["UIStroke"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({
						NumSequenceKeypoint(0, 0),
						NumSequenceKeypoint(0.696, 0.2749999761581421),
						NumSequenceKeypoint(0.84, 0.574999988079071),
						NumSequenceKeypoint(1, 1),
					}),
				})

				Items["Glow"] = Instances:Create("ImageLabel", {
					Parent = Items["Watermark"].Instance,
					Name = "\0",
					ImageColor3 = ACCENT_COLOR,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
					Size = UDim2New(1, 25, 1, 25),
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					ZIndex = 4,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
				})
				Items["Glow"]:AddToTheme({ ImageColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Watermark"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "dopamine.wtf | gg/VJXXXd5UzP",
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 10, 0, 7),
					BorderSizePixel = 0,
					ZIndex = 5,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })
			end

			Items["Watermark"]:MakeDraggable(function()
				return Library.MainFrame and Library.MainFrame.Visible == true
			end)

			Library.WatermarkInstance = Items["Watermark"]

			function Watermark:SetText(Text)
				Items["Text"].Instance.Text = Text
			end

			function Watermark:SetVisibility(Bool)
				Items["Watermark"].Instance.Visible = Bool
			end

			return Watermark
		end

		Library.KeybindList = function(self)
			local KeybindList = {}
			self.KeyList = KeybindList

			local Items = {}
			do
				Items["KeybindList"] = Instances:Create("Frame", {
					Parent = Library.Holder.Instance,
					Name = "\0",
					AnchorPoint = Vector2New(0, 0.5),
					Position = UDim2New(0, 20, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = FromRGB(24, 28, 36),
				})
				Items["KeybindList"]:AddToTheme({ BackgroundColor3 = "Background 2" })

				Instances:Create("UIPadding", {
					Parent = Items["KeybindList"].Instance,
					Name = "\0",
					PaddingTop = UDimNew(0, 9),
					PaddingBottom = UDimNew(0, 9),
					PaddingRight = UDimNew(0, 9),
					PaddingLeft = UDimNew(0, 9),
				})

				Items["Liner"] = Instances:Create("Frame", {
					Parent = Items["KeybindList"].Instance,
					Name = "\0",
					Position = UDim2New(0, -9, 0, -9),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 18, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["Glow"] = Instances:Create("ImageLabel", {
					Parent = Items["Liner"].Instance,
					Name = "\0",
					ImageColor3 = ACCENT_COLOR,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = ACCENT_COLOR,
					Size = UDim2New(0, 113, 1, 8),
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
				})
				Items["Glow"]:AddToTheme({ ImageColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				Items["Title"] = Instances:Create("TextLabel", {
					Parent = Items["KeybindList"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "Keybinds",
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2New(0, 0, 0, 15),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Title"]:AddToTheme({ TextColor3 = "Text" })

				Items["Liner2"] = Instances:Create("Frame", {
					Parent = Items["KeybindList"].Instance,
					Name = "\0",
					Position = UDim2New(0, 0, 0, 21),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 0, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(46, 52, 61),
				})
				Items["Liner2"]:AddToTheme({ BackgroundColor3 = "Border" })

				Items["Content"] = Instances:Create("Frame", {
					Parent = Items["KeybindList"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 0, 28),
					BorderColor3 = FromRGB(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["Content"].Instance,
					Name = "\0",
					Padding = UDimNew(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

			Instances:Create("UIStroke", {
				Parent = Items["KeybindList"].Instance,
				Name = "\0",
				Color = FromRGB(46, 52, 61),
				LineJoinMode = Enum.LineJoinMode.Miter,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}):AddToTheme({ Color = "Border" })
			end

			Items["KeybindList"]:MakeDraggable(function()
				return Library.MainFrame and Library.MainFrame.Visible == true
			end)

			Library.KeybindListInstance = Items["KeybindList"]

			function KeybindList:SetVisibility(Bool)
				Items["KeybindList"].Instance.Visible = Bool
			end

			function KeybindList:Add(Name, Key)
				local NewKey = Instances:Create("TextLabel", {
					Parent = Items["Content"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = Name .. " [" .. Key .. "]",
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					BorderColor3 = FromRGB(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				NewKey:AddToTheme({ TextColor3 = "Text" })

				function NewKey:SetText(Name, Key)
					NewKey.Instance.Text = Name .. " [" .. Key .. "]"
				end

				function NewKey:SetStatus(Bool)
					if NewKey.Instance.Text:find("Menu Keybind") then
						NewKey.Instance.Visible = false
						return
					end
					NewKey.Instance.Visible = Bool
				end

				return NewKey
			end

			return KeybindList
		end


		Library.Notification = function(self, Name, Duration)
			local Items = {}
			do
				Items["Notification"] = Instances:Create("Frame", {
					Parent = self.NotifHolder.Instance,
					Name = "\0",
					Size = UDim2New(0, 20, 0, 20),
					BorderColor3 = FromRGB(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundColor3 = FromRGB(24, 28, 36),
				})
				Items["Notification"]:AddToTheme({ BackgroundColor3 = "Inline" })

				Instances:Create("UIPadding", {
					Parent = Items["Notification"].Instance,
					Name = "\0",
					PaddingTop = UDimNew(0, 7),
					PaddingBottom = UDimNew(0, 7),
					PaddingRight = UDimNew(0, 7),
					PaddingLeft = UDimNew(0, 7),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Notification"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Name,
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })

				Instances:Create("UIStroke", {
					Parent = Items["Notification"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })
			end

			local Size = Items["Notification"].Instance.AbsoluteSize

			for Index, Value in Items do
				if Value.Instance:IsA("Frame") then
					Value.Instance.BackgroundTransparency = 1
				elseif Value.Instance:IsA("TextLabel") then
					Value.Instance.TextTransparency = 1
				end
			end

			Items["Notification"].Instance.AutomaticSize = Enum.AutomaticSize.None

			Library:Thread(function()
				for Index, Value in Items do
					if Value.Instance:IsA("Frame") then
						Value:Tween(nil, { BackgroundTransparency = 0 })
					elseif Value.Instance:IsA("TextLabel") then
						Value:Tween(nil, { TextTransparency = 0 })
					end
				end

				Items["Notification"]:Tween(nil, { Size = UDim2New(0, Size.X, 0, Size.Y) })

				task.delay(Duration + 0.1, function()
					for Index, Value in Items do
						if Value.Instance:IsA("Frame") then
							Value:Tween(nil, { BackgroundTransparency = 1 })
						elseif Value.Instance:IsA("TextLabel") then
							Value:Tween(nil, { TextTransparency = 1 })
						end
					end

					Items["Notification"]:Tween(nil, { Size = UDim2New(0, 0, 0, 0) })

					task.wait(0.5)
					Items["Notification"]:Clean()
				end)
			end)
		end

		Library.Window = function(self, Data)
			Data = Data or {}

			local ScreenSize = Camera.ViewportSize
			local MobileMenuWidth = math.floor(ScreenSize.X * 0.9)
			local MobileMenuHeight = math.floor(ScreenSize.Y * 0.75)
			local MobileButtonSize = math.floor(math.min(ScreenSize.X, ScreenSize.Y) * 0.08)
			local MobileButtonMargin = math.floor(MobileButtonSize * 0.33)

			local Window = {
				Name = FIXED_NAME,
				Logo = Data.Logo or Data.logo or FIXED_LOGO,

				Pages = {},
				Items = {},
				IsOpen = false,
			}

			local Items = {}
			do
				Items["MainFrame"] = Instances:Create("Frame", {
					Parent = Library.Holder.Instance,
					Name = "\0",
					AnchorPoint = Vector2New(0.5, 0.5),
					Position = UDim2New(0.5, 0, 0.6, 0),
					BorderColor3 = FromRGB(0, 34, 37),
					Size = not IsMobile and UDim2New(0, 543, 0, 624) or UDim2New(0, MobileMenuWidth, 0, MobileMenuHeight),
					BorderSizePixel = 2,
					BackgroundColor3 = FromRGB(17, 21, 27),
				})
				Items["MainFrame"]:AddToTheme({ BackgroundColor3 = "Background 1" })
				Library.MainFrame = Items["MainFrame"].Instance

				Items["MainFrame"]:MakeDraggable()

				Items["UIStroke"] = Instances:Create("UIStroke", {
					Parent = Items["MainFrame"].Instance,
					Name = "\0",
					Color = ACCENT_COLOR,
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				})
				Items["UIStroke"]:AddToTheme({ Color = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["UIStroke"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({
						NumSequenceKeypoint(0, 0),
						NumSequenceKeypoint(0.696, 0.2749999761581421),
						NumSequenceKeypoint(0.84, 0.574999988079071),
						NumSequenceKeypoint(1, 1),
					}),
				})

				Items["Inline"] = Instances:Create("Frame", {
					Parent = Items["MainFrame"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = UDim2New(0, 1, 0, 1),
					BorderColor3 = FromRGB(0, 34, 37),
					Size = UDim2New(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					Color = FromRGB(0, 34, 37),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Window Outline" })

				Items["Logo"] = Instances:Create("ImageLabel", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					ImageColor3 = FromRGB(202, 243, 255),
					ScaleType = Enum.ScaleType.Fit,
					BorderColor3 = FromRGB(0, 0, 0),
					Image = "rbxassetid://" .. Window.Logo,
					BackgroundTransparency = 1,
					AnchorPoint = Vector2New(0.5, 0),
					Position = UDim2New(0.5, 0, 0, 3),
					Size = UDim2New(0, 48, 0, 48),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Logo"]:AddToTheme({ ImageColor3 = "Accent" })

				Items["Title"] = Instances:Create("TextLabel", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = FIXED_NAME,
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
Position = UDim2New(0, 8, 0, 35),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = FromRGB(255, 255, 255),
			})
			Items["Title"]:AddToTheme({ TextColor3 = "Text" })

				Items["UIDLabel"] = Instances:Create("TextLabel", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					TextTransparency = 0.4,
					Text = tostring(CURRENT_UID),
					AnchorPoint = Vector2New(1, 0),
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = UDim2New(1, -8, 0, 19),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
					ZIndex = 5,
				})
				Items["UIDLabel"]:AddToTheme({ TextColor3 = "Text" })

Items["DiscordButton"] = Instances:Create("TextButton", {
				Parent = Items["Inline"].Instance,
				Name = "\0",
				FontFace = Library.Font,
				TextColor3 = FromRGB(88, 101, 242),
				BorderColor3 = FromRGB(0, 0, 0),
				Text = "Discord",
				AutoButtonColor = false,
				AnchorPoint = Vector2New(1, 0),
				Size = UDim2New(0, 0, 0, 15),
				BackgroundTransparency = 1,
				Position = UDim2New(1, -8, 0, 36),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
					ZIndex = 5,
				})
				Items["DiscordButton"]:Connect("MouseButton1Click", function()
					pcall(setclipboard, "https://discord.gg/VJXXXd5UzP")
				end)

				Items["Content"] = Instances:Create("Frame", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 7, 0, 55),
					ClipsDescendants = true,
					Size = UDim2New(1, -14, 1, -62),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["Content"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Pages"] = Instances:Create("Frame", {
					Parent = Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 0, 0, 30),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["Pages"].Instance,
					Name = "\0",
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					Padding = UDimNew(0, 1),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				Items["Glow"] = Instances:Create("ImageLabel", {
					Parent = Items["MainFrame"].Instance,
					Name = "\0",
					ImageColor3 = ACCENT_COLOR,
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 0.5,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
					Size = UDim2New(1, 25, 1, 25),
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					ZIndex = -1,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
				})
				Items["Glow"]:AddToTheme({ ImageColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				if IsMobile then
				Items["MobileButton"] = Instances:Create("ImageButton", {
						Parent = Library.Holder.Instance,
						Name = "\0",
						Image = "rbxassetid://" .. Window.Logo,
						BackgroundColor3 = Color3.fromRGB(24, 24, 27),
						AnchorPoint = Vector2New(1, 1),
						Position = UDim2New(1, -MobileButtonMargin, 1, -MobileButtonMargin),
						Size = UDim2New(0, MobileButtonSize, 0, MobileButtonSize),
						BorderSizePixel = 0,
						ScaleType = Enum.ScaleType.Fit,
						ZIndex = 100,
					})

					Instances:Create("UICorner", {
						Parent = Items["MobileButton"].Instance,
						CornerRadius = UDimNew(1, 0),
					})

					Instances:Create("UIStroke", {
						Parent = Items["MobileButton"].Instance,
						Color = Color3.fromRGB(0, 191, 255),
						Thickness = math.max(2, math.floor(MobileButtonSize * 0.05)),
					})

					local MobileDragStart
					Items["MobileButton"].Instance.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
							MobileDragStart = Input.Position
						end
					end)

					Items["MobileButton"].Instance.InputEnded:Connect(function(Input)
						if (Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1) and MobileDragStart then
							local Delta = (Input.Position - MobileDragStart).Magnitude
							if Delta < 10 then
								Window:SetOpen(not Window.IsOpen)
							end
							MobileDragStart = nil
						end
					end)

					Items["MobileButton"]:MakeDraggable()
				end

			Window.Items = Items
			end

			-- Snow effect system
			local Snowflakes = {}
			Window.SnowContainer = nil
			local SnowRunning = false
			local SnowConnection = nil
			Library.SnowEnabled = false

			local NUM_SNOWFLAKES = 80

			local function InitSnow(firstTime)
				for _, sf in Snowflakes do
					sf.Frame:Clean()
				end
				Snowflakes = {}

				Window.SnowContainer = Instances:Create("Frame", {
					Parent = Library.Holder.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 0, 0),
					Size = UDim2New(1, 0, 1, 0),
					ZIndex = -2,
					BorderSizePixel = 0,
				})

				local RNG = Random.new()
				for i = 1, NUM_SNOWFLAKES do
					local size = RNG:NextNumber(2, 5)
					local x = RNG:NextNumber(0, 1)
					local y = firstTime and RNG:NextNumber(0, 1) or -0.05

					local sf = Instances:Create("Frame", {
						Parent = Window.SnowContainer.Instance,
						Name = "\0",
						BackgroundColor3 = FromRGB(255, 255, 255),
						BackgroundTransparency = 0,
						Size = UDim2New(0, size, 0, size),
						Position = UDim2New(x, 0, y, 0),
						ZIndex = -2,
						BorderSizePixel = 0,
					})

					Instances:Create("UICorner", {
						Parent = sf.Instance,
						CornerRadius = UDimNew(1, 0),
					})

					Snowflakes[i] = {
						Frame = sf,
						Speed = RNG:NextNumber(0.03, 0.08),
						Size = size,
						X = x,
						Y = y,
						Drift = RNG:NextNumber(-0.02, 0.02),
					}
				end
			end

			local function StartSnow()
				if SnowRunning or not Library or not Library.SnowEnabled then return end
				SnowRunning = true
				if #Snowflakes == 0 then
					InitSnow(true)
				end
				if Window.SnowContainer then
					Window.SnowContainer.Instance.Visible = true
				end

				SnowConnection = RunService.RenderStepped:Connect(function(dt)
					if not SnowRunning or not Library or not Library.SnowEnabled or not Window.SnowContainer then
						return
					end

					for _, sf in Snowflakes do
						sf.Y = sf.Y + sf.Speed * dt
						if sf.Y > 1 then
							sf.Y = -sf.Size / 600
							sf.X = Random.new():NextNumber(0, 1)
						end

						sf.X = sf.X + sf.Drift * dt
						if sf.X < 0 then sf.X = 1 end
						if sf.X > 1 then sf.X = 0 end

						sf.Frame.Instance.Position = UDim2New(sf.X, 0, sf.Y, 0)
					end
				end)
			end

			local function StopSnow()
				SnowRunning = false
				if SnowConnection then
					SnowConnection:Disconnect()
					SnowConnection = nil
				end
				if Window.SnowContainer then
					Window.SnowContainer.Instance.Visible = false
				end
			end

			Window.StartSnow = StartSnow
			Window.StopSnow = StopSnow

			-- Background Blur effect
			local BlurEffect = Instance.new("BlurEffect")
			BlurEffect.Name = "MenuBlur"
			BlurEffect.Size = 0
			BlurEffect.Parent = Lighting
			Window.Blur = BlurEffect
			Library.BlurEffect = BlurEffect
			Library.BlurEnabled = true

			-- Menu Background Snow
			Window.MenuSnowContainer = nil
			local MenuSnowflakes = {}
			local MenuSnowRunning = false
			local MenuSnowConnection = nil
			Library.MenuSnowEnabled = true

			local NUM_MENU_SNOWFLAKES = 40

			local function InitMenuSnow(firstTime)
				for _, sf in MenuSnowflakes do
					sf.Frame:Clean()
				end
				MenuSnowflakes = {}

				Window.MenuSnowContainer = Instances:Create("Frame", {
					Parent = Items["Inline"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 0, 0),
					Size = UDim2New(1, 0, 1, 0),
					ZIndex = 1,
					ClipsDescendants = true,
					BorderSizePixel = 0,
				})

				local RNG = Random.new()
				for i = 1, NUM_MENU_SNOWFLAKES do
					local size = RNG:NextNumber(1.5, 4)
					local x = RNG:NextNumber(0, 1)
					local y = firstTime and RNG:NextNumber(0, 1) or -0.05

					local sf = Instances:Create("Frame", {
						Parent = Window.MenuSnowContainer.Instance,
						Name = "\0",
						BackgroundColor3 = FromRGB(255, 255, 255),
						BackgroundTransparency = 0,
						Size = UDim2New(0, size, 0, size),
						Position = UDim2New(x, 0, y, 0),
						ZIndex = 1,
						BorderSizePixel = 0,
					})

					Instances:Create("UICorner", {
						Parent = sf.Instance,
						CornerRadius = UDimNew(1, 0),
					})

					MenuSnowflakes[i] = {
						Frame = sf,
						Speed = RNG:NextNumber(0.02, 0.06),
						Size = size,
						X = x,
						Y = y,
						Drift = RNG:NextNumber(-0.015, 0.015),
					}
				end
			end

			local function StartMenuSnow()
				if MenuSnowRunning or not Library or not Library.MenuSnowEnabled then return end
				MenuSnowRunning = true
				if #MenuSnowflakes == 0 then
					InitMenuSnow(true)
				end
				if Window.MenuSnowContainer then
					Window.MenuSnowContainer.Instance.Visible = true
				end

				MenuSnowConnection = RunService.RenderStepped:Connect(function(dt)
					if not MenuSnowRunning or not Library or not Library.MenuSnowEnabled or not Window.MenuSnowContainer then
						return
					end

					for _, sf in MenuSnowflakes do
						sf.Y = sf.Y + sf.Speed * dt
						if sf.Y > 1 then
							sf.Y = -sf.Size / 600
							sf.X = Random.new():NextNumber(0, 1)
						end

						sf.X = sf.X + sf.Drift * dt
						if sf.X < 0 then sf.X = 1 end
						if sf.X > 1 then sf.X = 0 end

						sf.Frame.Instance.Position = UDim2New(sf.X, 0, sf.Y, 0)
					end
				end)
			end

			local function StopMenuSnow()
				MenuSnowRunning = false
				if MenuSnowConnection then
					MenuSnowConnection:Disconnect()
					MenuSnowConnection = nil
				end
				if Window.MenuSnowContainer then
					Window.MenuSnowContainer.Instance.Visible = false
				end
			end

			Window.StartMenuSnow = StartMenuSnow
			Window.StopMenuSnow = StopMenuSnow

			-- Fade overlay for universal fade
			Window.FadeOverlay = Instances:Create("Frame", {
				Parent = Items["MainFrame"].Instance,
				Name = "\0",
				BackgroundColor3 = FromRGB(0, 0, 0),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Size = UDim2New(1, 0, 1, 0),
				ZIndex = 99999,
				Visible = true,
			})

			local Debounce = false

			function Window:SetCenter()
				local CenterPosition = Items["MainFrame"].Instance.AbsolutePosition
				task.wait()
				Items["MainFrame"].Instance.AnchorPoint = Vector2New(0, 0)

				Items["MainFrame"].Instance.Position = UDim2New(0, CenterPosition.X, 0, CenterPosition.Y)
			end

			function Window:SetOpen(Bool, FadeIn, FadeOut)
				FadeIn = FadeIn or 1.2
				FadeOut = FadeOut or 0.4
				local Fade = Bool and FadeIn or FadeOut
				for Index, Value in Library.OpenFrames do
					Value:SetOpen(false)
				end

				if Debounce then
					return
				end

				Debounce = true
				Window.IsOpen = Bool

				if Bool then
					if Library.BlurEnabled and Window.Blur then
						TweenService:Create(Window.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 15 }):Play()
				end
				StartSnow()
				StartMenuSnow()
				else
					StopSnow()
					StopMenuSnow()
					if Window.Blur then
						TweenService:Create(Window.Blur, TweenInfo.new(Fade, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 0 }):Play()
					end
				end

				local Overlay = Window.FadeOverlay
				if Bool then
					Items["MainFrame"].Instance.Visible = true
					Overlay.Instance.BackgroundTransparency = 0
					Overlay.Instance.Visible = true
					local FTween = Overlay:Tween(TweenInfo.new(Fade, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
					if FTween and FTween.Tween then
						FTween.Tween.Completed:Connect(function()
							Overlay.Instance.Visible = false
							Debounce = false
						end)
					else
						Debounce = false
					end
				else
					Overlay.Instance.BackgroundTransparency = 1
					Overlay.Instance.Visible = true
					local FTween = Overlay:Tween(TweenInfo.new(Fade, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
					if FTween and FTween.Tween then
						FTween.Tween.Completed:Connect(function()
							Items["MainFrame"].Instance.Visible = false
							Overlay.Instance.Visible = false
							Debounce = false
						end)
					else
						Items["MainFrame"].Instance.Visible = false
						Overlay.Instance.Visible = false
						Debounce = false
					end
				end
			end

			Library:Connect(UserInputService.InputBegan, function(Input)
				if
					tostring(Input.KeyCode) == Library.MenuKeybind
					or tostring(Input.UserInputType) == Library.MenuKeybind
				then
					Window:SetOpen(not Window.IsOpen)
				end
			end)

			Window:SetCenter()
			task.wait()
			Window:SetOpen(true)
			return setmetatable(Window, Library)
		end

		Library.Page = function(self, Data)
			Data = Data or {}

			local Page = {
				Window = self,

				Name = Data.Name or Data.name or "Page",
				Columns = Data.Columns or Data.columns or 2,

				Items = {},
				ColumnsData = {},
				Active = false,
			}

			local Items = {}
			do
				Items["Inactive"] = Instances:Create("TextButton", {
					Parent = Page.Window.Items["Pages"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = UDim2New(0, 0, 1, 0),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIStroke", {
					Parent = Items["Inactive"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Liner"] = Instances:Create("Frame", {
					Parent = Items["Inactive"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = UDim2New(0, 0, 0, 1),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["Glow"] = Instances:Create("ImageLabel", {
					Parent = Items["Liner"].Instance,
					Name = "\0",
					Visible = false,
					ImageTransparency = 0.5,
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
					ScaleType = Enum.ScaleType.Slice,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					ImageColor3 = ACCENT_COLOR,
					Size = UDim2New(1, 8, 1, 8),
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Glow"]:AddToTheme({ ImageColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Glow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Inactive"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = Page.Name,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2New(0, 0, 0, 15),
					AnchorPoint = Vector2New(0.5, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 5,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })

				Items["TextGlow"] = Instances:Create("ImageLabel", {
					Parent = Items["Text"].Instance,
					Name = "\0",
					ScaleType = Enum.ScaleType.Slice,
					ImageTransparency = 1,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
					Size = UDim2New(1, 8, 1, 8),
					AnchorPoint = Vector2New(0.5, 0.5),
					Image = "rbxassetid://18245826428",
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 3),
					ZIndex = 2,
					BorderSizePixel = 0,
					SliceCenter = RectNew(Vector2New(21, 21), Vector2New(79, 79)),
				})
				Items["TextGlow"]:AddToTheme({ ImageColor3 = "Text" })

				Instances:Create("UIGradient", {
					Parent = Items["TextGlow"].Instance,
					Name = "\0",
					Rotation = 90,
					Transparency = NumSequence({ NumSequenceKeypoint(0, 0), NumSequenceKeypoint(1, 1) }),
				})

				Items["Hide"] = Instances:Create("Frame", {
					Parent = Items["Inactive"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					AnchorPoint = Vector2New(0, 1),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 1, 1),
					Size = UDim2New(1, 0, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(17, 21, 27),
				})
				Items["Hide"]:AddToTheme({ BackgroundColor3 = "Background 1" })

				Items["Page"] = Instances:Create("Frame", {
					Parent = Library.UnusedHolder.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 0, 80),
					BorderColor3 = FromRGB(0, 0, 0),
					Visible = false,
					Size = UDim2New(1, 0, 1, -35),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["Page"].Instance,
					Name = "\0",
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalFlex = Enum.UIFlexAlignment.Fill,
				})

				for Index = 1, Page.Columns do
					local NewColumn = Instances:Create("ScrollingFrame", {
						Parent = Items["Page"].Instance,
						Name = "\0",
						ScrollBarImageColor3 = FromRGB(0, 0, 0),
						Active = true,
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						BorderColor3 = FromRGB(0, 0, 0),
						ScrollBarThickness = 0,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 100, 0, 100),
						CanvasSize = UDim2New(0, 0, 0, 0),
						BorderSizePixel = 0,
						BackgroundColor3 = FromRGB(255, 255, 255),
					})

					Instances:Create("UIPadding", {
						Parent = NewColumn.Instance,
						Name = "\0",
						PaddingTop = UDimNew(0, 5),
						PaddingBottom = UDimNew(0, 8),
						PaddingRight = UDimNew(0, 8),
						PaddingLeft = UDimNew(0, 8),
					})

					Instances:Create("UIListLayout", {
						Parent = NewColumn.Instance,
						Name = "\0",
						Padding = UDimNew(0, 12),
						SortOrder = Enum.SortOrder.LayoutOrder,
					})

					Page.ColumnsData[Index] = NewColumn
				end

				Page.Items = Items
			end

			local Debounce = false

			function Page:Turn(Bool)
				if Debounce then
					return
				end

				Page.Active = Bool

				Debounce = true
				Items["Page"].Instance.Visible = Bool
				Items["Page"].Instance.Parent = Bool and Page.Window.Items["Content"].Instance
					or Library.UnusedHolder.Instance

				if Page.Active then
					Items["Liner"]:Tween(
						TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 0, Size = UDim2New(1, 0, 0, 1) }
					)
					Items["TextGlow"]:Tween(nil, { ImageTransparency = 0.7 })
					Items["Text"]:Tween(nil, { TextTransparency = 0 })
					Items["Hide"]:Tween(nil, { BackgroundTransparency = 0 })

					Items["Page"]:Tween(
						TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Position = UDim2New(0, 0, 0, 35) }
					)
				else
					Items["Liner"]:Tween(
						TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 0, Size = UDim2New(0, 0, 0, 1) }
					)
					Items["TextGlow"]:Tween(nil, { ImageTransparency = 1 })
					Items["Text"]:Tween(nil, { TextTransparency = 0.4 })
					Items["Hide"]:Tween(nil, { BackgroundTransparency = 1 })

					Items["Page"]:Tween(
						TweenInfo.new(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{ Position = UDim2New(0, 0, 0, 80) }
					)
				end

				Debounce = false
			end

			Items["Inactive"]:Connect("MouseButton1Down", function()
				for Index, Value in Page.Window.Pages do
					if Value == Page and Page.Active then
						return
					end

					Value:Turn(Value == Page)
				end
			end)

			if #Page.Window.Pages == 0 then
				Page:Turn(true)
			end

			TableInsert(Page.Window.Pages, Page)
			return setmetatable(Page, Library.Pages)
		end

		Library.Pages.Section = function(self, Data)
			Data = Data or {}

			local Section = {
				Window = self.Window,
				Page = self,

				Name = Data.Name or Data.name or "Section",
				Side = Data.Side or Data.side or 1,

				Items = {},
			}

			local Items = {}
			do
				Items["Section"] = Instances:Create("Frame", {
					Parent = Section.Page.ColumnsData[Section.Side].Instance,
					Name = "\0",
					Size = UDim2New(1, 0, 0, 40),
					BorderColor3 = FromRGB(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = FromRGB(19, 25, 31),
				})
				Items["Section"]:AddToTheme({ BackgroundColor3 = "Inline" })

				Instances:Create("UIStroke", {
					Parent = Items["Section"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Instances:Create("UIPadding", {
					Parent = Items["Section"].Instance,
					Name = "\0",
					PaddingBottom = UDimNew(0, 8),
				})

				Items["Topbar"] = Instances:Create("Frame", {
					Parent = Items["Section"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 0, 0, 25),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(19, 25, 31),
				})
				Items["Topbar"]:AddToTheme({ BackgroundColor3 = "Inline" })

				Instances:Create("UIGradient", {
					Parent = Items["Topbar"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(165, 165, 165)),
					}),
				})

				Instances:Create("UIStroke", {
					Parent = Items["Topbar"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Liner"] = Instances:Create("Frame", {
					Parent = Items["Topbar"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0, 1, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["Liner"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Instances:Create("UIGradient", {
					Parent = Items["Liner"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(171, 171, 171)),
					}),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Topbar"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Section.Name,
					AnchorPoint = Vector2New(0, 0.5),
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 8, 0.5, -1),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })

				Items["Content"] = Instances:Create("Frame", {
					Parent = Items["Section"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 8, 0, 35),
					Size = UDim2New(1, -16, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["Content"].Instance,
					Name = "\0",
					Padding = UDimNew(0, 6),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				Section.Items = Items
			end

			return setmetatable(Section, Library.Sections)
		end

		Library.Sections.Toggle = function(self, Data)
			Data = Data or {}

			local Risk = Data.Risk or Data.risk or nil
			local Tooltip = Data.Tooltip or Data.tooltip or nil

			local Toggle = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Data.Name or Data.name or "Toggle",
				Flag = Data.Flag or Data.flag or Library:NextFlag(),
				Default = Data.Default or Data.default or false,
				Callback = Data.Callback or Data.callback or function() end,

				Value = false,
			}

			local Items = {}
			do
				Items["Toggle"] = Instances:Create("TextButton", {
					Parent = Toggle.Section.Items["Content"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 0, 15),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Items["IndicatorOutline"] = Instances:Create("Frame", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					AnchorPoint = Vector2New(0, 0.5),
					Position = UDim2New(0, 0, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0, 12, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["IndicatorOutline"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["IndicatorOutline"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["IndicatorInline"] = Instances:Create("Frame", {
					Parent = Items["IndicatorOutline"].Instance,
					Name = "\0",
					AnchorPoint = Vector2New(0.5, 0.5),
					BackgroundTransparency = 1,
					Position = UDim2New(0.5, 0, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0, -2, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["IndicatorInline"]:AddToTheme({ BackgroundColor3 = "Accent" })

				local RiskColor = Risk == "detected" and FromRGB(255, 0, 0) or Risk == "risky" and FromRGB(255, 255, 0) or nil

				Items["TextHolder"] = Instances:Create("Frame", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AnchorPoint = Vector2New(0, 0.5),
					Position = UDim2New(0, 20, 0.5, 0),
					Size = UDim2New(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDimNew(0, 4),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["TextHolder"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = RiskColor or FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = Toggle.Name,
					Size = UDim2New(0, 0, 0, 15),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				if not RiskColor then
					Items["Text"]:AddToTheme({ TextColor3 = "Text" })
				end

				if Tooltip then
					Items["TooltipIconWrap"] = Instances:Create("Frame", {
						Parent = Items["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2New(0, 14, 0, 14),
						BackgroundColor3 = FromRGB(255, 255, 255),
					})

					Instances:Create("UIPadding", {
						Parent = Items["TooltipIconWrap"].Instance,
						PaddingTop = UDimNew(0, 2),
					})

					Items["TooltipIcon"] = Instances:Create("TextButton", {
						Parent = Items["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = "?",
						TextColor3 = FromRGB(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					Items["TooltipFrame"] = Instances:Create("Frame", {
						Parent = Items["Toggle"].Instance,
						Name = "\0",
						BackgroundColor3 = FromRGB(32, 38, 48),
						BorderColor3 = FromRGB(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					Items["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					Instances:Create("UIStroke", {
						Parent = Items["TooltipFrame"].Instance,
						Color = FromRGB(46, 52, 61),
					}):AddToTheme({ Color = "Border" })

					Instances:Create("TextLabel", {
						Parent = Items["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = Tooltip,
						TextColor3 = FromRGB(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

					if not IsMobile then
						Items["TooltipIcon"]:OnHover(function()
							local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
							local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
							local TogglePos = Items["Toggle"].Instance.AbsolutePosition
							local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
							local X = (IconPos.X + IconSize.X / 2) - TogglePos.X - FrameSize.X / 2
							local Y = IconPos.Y - TogglePos.Y + IconSize.Y + 8
							Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
							Items["TooltipFrame"].Instance.Visible = true
						end)

						Items["TooltipIcon"]:OnHoverLeave(function()
							Items["TooltipFrame"].Instance.Visible = false
						end)
					else
						Items["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
								local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
								local TogglePos = Items["Toggle"].Instance.AbsolutePosition
								local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
								local X = (IconPos.X + IconSize.X / 2) - TogglePos.X - FrameSize.X / 2
								local Y = IconPos.Y - TogglePos.Y + IconSize.Y + 8
								Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
								Items["TooltipFrame"].Instance.Visible = not Items["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

				Items["SubElements"] = Instances:Create("Frame", {
					Parent = Items["Toggle"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					AnchorPoint = Vector2New(1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(1, 0, 0, 0),
					Size = UDim2New(0, 0, 1, 0),
					ZIndex = 2,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["SubElements"].Instance,
					Name = "\0",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Padding = UDimNew(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				Items["Toggle"]:OnHover(function()
					-- if Toggle.Value then return end
					Items["IndicatorOutline"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["Toggle"]:OnHoverLeave(function()
					-- if Toggle.Value then return end
					Items["IndicatorOutline"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)
			end

			function Toggle:Get()
				return Toggle.Value
			end

			function Toggle:Set(Value)
				Toggle.Value = Value
				Library.Flags[Toggle.Flag] = Value

				if Toggle.Value then
					Items["IndicatorInline"]:Tween(
						TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 0, Size = UDim2New(1, -2, 1, -2) }
					)
				else
					Items["IndicatorInline"]:Tween(
						TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 1, Size = UDim2New(0, -2, 0, -2) }
					)
				end

				if Toggle.Callback then
					Library:SafeCall(Toggle.Callback, Toggle.Value)
				end
			end

			function Toggle:Colorpicker(Data)
				Data = Data or {}

				local Colorpicker = {
					Window = Toggle.Window,
					Page = Toggle.Page,
					Section = Toggle.Section,

					Flag = Data.Flag or Data.flag or Library:NextFlag(),
					Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
					Alpha = Data.Alpha or Data.alpha or 0,
					Callback = Data.Callback or Data.callback or function() end,
				}

				local NewColorpicker, ColorpickerItems = Library:CreateColorpicker({
					Parent = Items["SubElements"],
					Page = Colorpicker.Page,
					Flag = Colorpicker.Flag,
					Section = Colorpicker.Section,
					Default = Colorpicker.Default,
					Alpha = Colorpicker.Alpha,
					Callback = Colorpicker.Callback,
				})

				return NewColorpicker
			end

				function Toggle:Keybind(Data)
					Data = Data or {}

					local Keybind = {
						Window = Toggle.Window,
						Page = Toggle.Page,
						Section = Toggle.Section,

						Name = Data.Name or Data.name or "Keybind",
						Flag = Data.Flag or Data.flag or Library:NextFlag(),
						Default = Data.Default or Data.default,
						Callback = Data.Callback or Data.callback or function() end,
						Mode = Data.Mode or Data.mode or "Toggle",
					}

				local NewKeybind, Items = Library:CreateKeybind({
					Name = Toggle.Name,
					Parent = Items["SubElements"],
					Flag = Keybind.Flag,
					Section = Keybind.Section,
					Default = Keybind.Default,
					Mode = Keybind.Mode,
					Callback = Keybind.Callback,
				})

				return NewKeybind
			end

			function Toggle:SetVisibility(Bool)
				Items["Toggle"].Instance.Visible = Bool
			end

			Items["Toggle"]:Connect("MouseButton1Down", function()
				Toggle:Set(not Toggle.Value)
			end)

			Toggle:Set(Toggle.Default)

			Library.SetFlags[Toggle.Flag] = function(Value)
				Toggle:Set(Value)
			end

			return Toggle
		end

		Library.Sections.Button = function(self, Data)
			Data = Data or {}

			local Risk = Data.Risk or Data.risk or nil
			local RiskColor = Risk == "detected" and FromRGB(255, 0, 0) or Risk == "risky" and FromRGB(255, 255, 0) or nil

			local Button = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Data.Name or Data.name or "Button",
				Callback = Data.Callback or Data.callback or function() end,
			}

			local Items = {}
			do
				Items["Button"] = Instances:Create("TextButton", {
					Parent = Button.Section.Items["Content"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = RiskColor or FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Button.Name,
					AutoButtonColor = false,
					Size = UDim2New(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["Button"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIGradient", {
					Parent = Items["Button"].Instance,
					Name = "\0",
					Rotation = 90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(199, 199, 199)),
					}),
				})

				Items["Button"]:OnHover(function()
					Items["Button"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["Button"]:OnHoverLeave(function()
					Items["Button"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)

			end

			function Button:SetVisibility(Bool)
				Items["Button"].Instance.Visible = Bool
			end

			function Button:Press()
				if not Library or not Library.Theme then return end
				Items["Button"]:ChangeItemTheme({ BackgroundColor3 = "Accent" })
				Items["Button"]:Tween(nil, { BackgroundColor3 = Library.Theme.Accent })
				Library:SafeCall(Button.Callback)
				task.wait(0.1)
				if not Library or not Library.Theme then return end
				Items["Button"]:ChangeItemTheme({ BackgroundColor3 = "Element" })
				Items["Button"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
			end

			Items["Button"]:Connect("MouseButton1Down", function()
				Button:Press()
			end)

			return Button
		end

		Library.Sections.Slider = function(self, Data)
			Data = Data or {}

			local Risk = Data.Risk or Data.risk or nil
			local RiskColor = Risk == "detected" and FromRGB(255, 0, 0) or Risk == "risky" and FromRGB(255, 255, 0) or nil
			local Tooltip = Data.Tooltip or Data.tooltip or nil

			local Slider = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Data.Name or Data.name or "Slider",
				Flag = Data.Flag or Data.flag or Library:NextFlag(),
				Min = Data.Min or Data.min or 0,
				Decimals = Data.Decimals or Data.decimals or 1,
				Suffix = Data.Suffix or Data.suffix or "",
				Max = Data.Max or Data.max or 100,
				Default = Data.Default or Data.Default or 0,
				Callback = Data.Callback or Data.callback or function() end,

				Value = 0,
				Sliding = false,
			}

			local Items = {}
			do
				Items["Slider"] = Instances:Create("Frame", {
					Parent = Slider.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 0, 0, 35),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

			Items["TextHolder"] = Instances:Create("Frame", {
					Parent = Items["Slider"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2New(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDimNew(0, 4),
				})

			Items["Text"] = Instances:Create("TextLabel", {
				Parent = Items["TextHolder"].Instance,
				Name = "\0",
				FontFace = Library.Font,
				TextColor3 = RiskColor or FromRGB(255, 255, 255),
				BorderColor3 = FromRGB(0, 0, 0),
				Text = Slider.Name,
				BackgroundTransparency = 1,
				Size = UDim2New(0, 0, 0, 15),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = FromRGB(255, 255, 255),
			})
			if not RiskColor then
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })
			end

			if Tooltip then
					Items["TooltipIconWrap"] = Instances:Create("Frame", {
						Parent = Items["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2New(0, 14, 0, 14),
						BackgroundColor3 = FromRGB(255, 255, 255),
					})

					Instances:Create("UIPadding", {
						Parent = Items["TooltipIconWrap"].Instance,
						PaddingTop = UDimNew(0, 2),
					})

					Items["TooltipIcon"] = Instances:Create("TextButton", {
						Parent = Items["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = "?",
						TextColor3 = FromRGB(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					Items["TooltipFrame"] = Instances:Create("Frame", {
						Parent = Items["Slider"].Instance,
						Name = "\0",
						BackgroundColor3 = FromRGB(32, 38, 48),
						BorderColor3 = FromRGB(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					Items["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					Instances:Create("UIStroke", {
						Parent = Items["TooltipFrame"].Instance,
						Color = FromRGB(46, 52, 61),
					}):AddToTheme({ Color = "Border" })

					Instances:Create("TextLabel", {
						Parent = Items["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = Tooltip,
						TextColor3 = FromRGB(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

				if not IsMobile then
						Items["TooltipIcon"]:OnHover(function()
							local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
							local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
							local SliderPos = Items["Slider"].Instance.AbsolutePosition
							local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
							local X = (IconPos.X + IconSize.X / 2) - SliderPos.X - FrameSize.X / 2
							local Y = IconPos.Y - SliderPos.Y + IconSize.Y + 8
							Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
							Items["TooltipFrame"].Instance.Visible = true
						end)

						Items["TooltipIcon"]:OnHoverLeave(function()
							Items["TooltipFrame"].Instance.Visible = false
						end)
					else
						Items["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
								local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
								local SliderPos = Items["Slider"].Instance.AbsolutePosition
								local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
								local X = (IconPos.X + IconSize.X / 2) - SliderPos.X - FrameSize.X / 2
								local Y = IconPos.Y - SliderPos.Y + IconSize.Y + 8
								Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
								Items["TooltipFrame"].Instance.Visible = not Items["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

			Items["RealSlider"] = Instances:Create("TextButton", {
					Parent = Items["Slider"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = Vector2New(0, 1),
					Position = UDim2New(0, 0, 1, 0),
					Size = UDim2New(1, 0, 0, 12),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["RealSlider"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["RealSlider"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Accent"] = Instances:Create("Frame", {
					Parent = Items["RealSlider"].Instance,
					Name = "\0",
					Position = UDim2New(0, 1, 0, 1),
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0.5, 0, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				Items["Accent"]:AddToTheme({ BackgroundColor3 = "Accent" })

				Items["Value"] = Instances:Create("TextBox", {
					Parent = Items["Slider"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					Active = false,
					TextTransparency = 0.5,
					AnchorPoint = Vector2New(1, 0),
					TextSize = 14,
					Size = UDim2New(0, 0, 0, 15),
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "50s",
					Selectable = false,
					BackgroundTransparency = 1,
					Position = UDim2New(1, 0, 0, 0),
					BorderSizePixel = 0,
					ClearTextOnFocus = false,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Value"]:AddToTheme({ TextColor3 = "Text" })

				Items["RealSlider"]:OnHover(function()
					Items["RealSlider"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["RealSlider"]:OnHoverLeave(function()
					Items["RealSlider"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)
			end

			function Slider:Get()
				return Slider.Value
			end

			function Slider:Set(Value)
				Slider.Value = MathClamp(Library:Round(Value, Slider.Decimals), Slider.Min, Slider.Max)
				Library.Flags[Slider.Flag] = Slider.Value

				Items["Accent"]:Tween(
					TweenInfo.new(Library.Tween.Time, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Size = UDim2New((Slider.Value - Slider.Min) / (Slider.Max - Slider.Min), -2, 1, -2) }
				)
				Items["Value"].Instance.Text = StringFormat("%s%s", Slider.Value, Slider.Suffix)

				if Slider.Value <= Slider.Min then
					Items["Accent"].Instance.Visible = false
				else
					Items["Accent"].Instance.Visible = true
				end

				if Slider.Callback then
					Library:SafeCall(Slider.Callback, Slider.Value)
				end
			end

			local InputChanged

			Items["RealSlider"]:Connect("InputBegan", function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					Slider.Sliding = true

					local SizeX = (Input.Position.X - Items["RealSlider"].Instance.AbsolutePosition.X)
						/ Items["RealSlider"].Instance.AbsoluteSize.X
					local Value = ((Slider.Max - Slider.Min) * SizeX) + Slider.Min

					Slider:Set(Value)

					if InputChanged then return end 

					InputChanged = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then 
							Slider.Sliding = false

							if InputChanged then
								InputChanged:Disconnect()
								InputChanged = nil
							end
						end
					end)
				end
			end)

			Library:Connect(UserInputService.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
					if Slider.Sliding then
						local SizeX = (Input.Position.X - Items["RealSlider"].Instance.AbsolutePosition.X)
							/ Items["RealSlider"].Instance.AbsoluteSize.X
						local Value = ((Slider.Max - Slider.Min) * SizeX) + Slider.Min

						Slider:Set(Value)
					end
				end
			end)

			if Slider.Default then
				Slider:Set(Slider.Default)
			end

			Library.SetFlags[Slider.Flag] = function(Value)
				Slider:Set(Value)
			end

			return Slider
		end

		Library.Sections.Dropdown = function(self, Data)
			Data = Data or {}

			local Risk = Data.Risk or Data.risk or nil
			local Tooltip = Data.Tooltip or Data.tooltip or nil

			local Dropdown = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Data.Name or Data.name or "Dropdown",
				Flag = Data.Flag or Data.flag or Library:NextFlag(),
				Items = Data.Items or Data.items or Data.Options or Data.options or { "One", "Two", "Three" },
				Default = Data.Default or Data.default or nil,
				MaxSize = Data.MaxSize or Data.maxsize or 75,
				Callback = Data.Callback or Data.callback or function() end,
				Multi = Data.Multi or Data.multi or false,

				Options = {},
				Value = {},
				IsOpen = false,
			}

			local Items = {}
			do
				Items["Dropdown"] = Instances:Create("Frame", {
					Parent = Dropdown.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 0, 45),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

			local RiskColor = Risk == "detected" and FromRGB(255, 0, 0) or Risk == "risky" and FromRGB(255, 255, 0) or nil

			Items["TextHolder"] = Instances:Create("Frame", {
					Parent = Items["Dropdown"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2New(0, 0, 0, 15),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["TextHolder"].Instance,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDimNew(0, 4),
				})

			Items["Text"] = Instances:Create("TextLabel", {
				Parent = Items["TextHolder"].Instance,
				Name = "\0",
				FontFace = Library.Font,
				TextColor3 = RiskColor or FromRGB(255, 255, 255),
				BorderColor3 = FromRGB(0, 0, 0),
				Text = Dropdown.Name,
				BackgroundTransparency = 1,
				Size = UDim2New(0, 0, 0, 15),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = FromRGB(255, 255, 255),
			})
			if not RiskColor then
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })
			end

			if Tooltip then
					Items["TooltipIconWrap"] = Instances:Create("Frame", {
						Parent = Items["TextHolder"].Instance,
						Name = "\0",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2New(0, 14, 0, 14),
						BackgroundColor3 = FromRGB(255, 255, 255),
					})

					Instances:Create("UIPadding", {
						Parent = Items["TooltipIconWrap"].Instance,
						PaddingTop = UDimNew(0, 2),
					})

					Items["TooltipIcon"] = Instances:Create("TextButton", {
						Parent = Items["TooltipIconWrap"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = "?",
						TextColor3 = FromRGB(200, 200, 200),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 14, 0, 12),
						BorderSizePixel = 0,
						AutoButtonColor = false,
						ZIndex = 5,
					})

					Items["TooltipFrame"] = Instances:Create("Frame", {
						Parent = Items["Dropdown"].Instance,
						Name = "\0",
						BackgroundColor3 = FromRGB(32, 38, 48),
						BorderColor3 = FromRGB(0, 0, 0),
						BorderSizePixel = 1,
						Visible = false,
						ZIndex = 10,
					})

					Items["TooltipFrame"].Instance.AutomaticSize = Enum.AutomaticSize.XY

					Instances:Create("UIStroke", {
						Parent = Items["TooltipFrame"].Instance,
						Color = FromRGB(46, 52, 61),
					}):AddToTheme({ Color = "Border" })

					Instances:Create("TextLabel", {
						Parent = Items["TooltipFrame"].Instance,
						Name = "\0",
						FontFace = Library.Font,
						Text = Tooltip,
						TextColor3 = FromRGB(0, 191, 255),
						TextSize = 13,
						BackgroundTransparency = 1,
						Size = UDim2New(0, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.X,
						ZIndex = 10,
					})

				if not IsMobile then
						Items["TooltipIcon"]:OnHover(function()
							local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
							local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
							local DropdownPos = Items["Dropdown"].Instance.AbsolutePosition
							local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
							local X = (IconPos.X + IconSize.X / 2) - DropdownPos.X - FrameSize.X / 2
							local Y = IconPos.Y - DropdownPos.Y + IconSize.Y + 8
							Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
							Items["TooltipFrame"].Instance.Visible = true
						end)

						Items["TooltipIcon"]:OnHoverLeave(function()
							Items["TooltipFrame"].Instance.Visible = false
						end)
					else
						Items["TooltipIcon"].Instance.InputBegan:Connect(function(Input)
							if Input.UserInputType == Enum.UserInputType.Touch then
								local IconPos = Items["TooltipIcon"].Instance.AbsolutePosition
								local IconSize = Items["TooltipIcon"].Instance.AbsoluteSize
								local DropdownPos = Items["Dropdown"].Instance.AbsolutePosition
								local FrameSize = Items["TooltipFrame"].Instance.AbsoluteSize
								local X = (IconPos.X + IconSize.X / 2) - DropdownPos.X - FrameSize.X / 2
								local Y = IconPos.Y - DropdownPos.Y + IconSize.Y + 8
								Items["TooltipFrame"].Instance.Position = UDim2New(0, X, 0, Y)
								Items["TooltipFrame"].Instance.Visible = not Items["TooltipFrame"].Instance.Visible
							end
						end)
					end
				end

			Items["RealDropdown"] = Instances:Create("TextButton", {
					Parent = Items["Dropdown"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = Vector2New(0, 1),
					Position = UDim2New(0, 0, 1, 0),
					Size = UDim2New(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["RealDropdown"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["RealDropdown"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Value"] = Instances:Create("TextLabel", {
					Parent = Items["RealDropdown"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "-",
					AnchorPoint = Vector2New(0, 0.5),
					Size = UDim2New(1, -16, 0, 15),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2New(0, 4, 0.5, 0),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Value"]:AddToTheme({ TextColor3 = "Text" })

				Items["OptionHolder"] = Instances:Create("TextButton", {
					Parent = Library.Holder.Instance,
					Name = "\0",
					FontFace = Library.Font,
					Visible = false,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					Position = UDim2New(0, 0, 1, 0),
					Size = UDim2New(1, 0, 0, 130),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["OptionHolder"]:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIStroke", {
					Parent = Items["OptionHolder"].Instance,
					Name = "\0",
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}):AddToTheme({ Color = "Border" })

				Items["Search"] = Instances:Create("TextBox", {
					Parent = Items["OptionHolder"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					TextTransparency = 0.5,
					Text = "",
					Size = UDim2New(1, -8, 0, 15),
					Position = UDim2New(0, 4, 0, 4),
					BorderSizePixel = 0,
					BorderColor3 = FromRGB(0, 0, 0),
					BackgroundTransparency = 1,
					PlaceholderColor3 = FromRGB(255, 255, 255),
					TextXAlignment = Enum.TextXAlignment.Left,
					PlaceholderText = "Search..",
					TextSize = 12,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Search"]:AddToTheme({ TextColor3 = "Text" })

				Items["Holder"] = Instances:Create("ScrollingFrame", {
					Parent = Items["OptionHolder"].Instance,
					Name = "\0",
					Active = true,
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					BorderSizePixel = 0,
					CanvasSize = UDim2New(0, 0, 0, 0),
					ScrollBarImageColor3 = FromRGB(46, 52, 61),
					MidImage = "rbxassetid://93024691806056",
					BorderColor3 = FromRGB(0, 0, 0),
					ScrollBarThickness = 4,
					Size = UDim2New(1, -4, 1, -26),
					BackgroundTransparency = 1,
					Position = UDim2New(0, 0, 0, 22),
					BottomImage = "rbxassetid://93024691806056",
					TopImage = "rbxassetid://93024691806056",
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Holder"]:AddToTheme({ ScrollBarImageColor3 = "Border" })

				Instances:Create("UIPadding", {
					Parent = Items["Holder"].Instance,
					Name = "\0",
					PaddingTop = UDimNew(0, 6),
					PaddingBottom = UDimNew(0, 6),
					PaddingRight = UDimNew(0, 10),
					PaddingLeft = UDimNew(0, 6),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["Holder"].Instance,
					Name = "\0",
					Padding = UDimNew(0, 6),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				Items["RealDropdown"]:OnHover(function()
					Items["RealDropdown"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["RealDropdown"]:OnHoverLeave(function()
					Items["RealDropdown"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)
			end

			function Dropdown:Get()
				return Dropdown.Value
			end

			function Dropdown:Set(Option)
				if Data.Multi then
					if type(Option) ~= "table" then
						return
					end

					Dropdown.Value = Option
					Library.Flags[Dropdown.Flag] = Option

					for Index, Value in Option do
						local OptionData = Dropdown.Options[Value]

						if not OptionData then
							continue
						end

						OptionData.Selected = true
						OptionData:Toggle("Active")
					end

					Items["Value"].Instance.Text = TableConcat(Option, ", ")
				else
					if not Dropdown.Options[Option] then
						return
					end

					local OptionData = Dropdown.Options[Option]

					Dropdown.Value = Option
					Library.Flags[Dropdown.Flag] = Option

					for Index, Value in Dropdown.Options do
						if Value ~= OptionData then
							Value.Selected = false
							Value:Toggle("Inactive")
						else
							Value.Selected = true
							Value:Toggle("Active")
						end
					end

					Items["Value"].Instance.Text = Option
				end

				if Dropdown.Callback then
					Library:SafeCall(Dropdown.Callback, Dropdown.Value)
				end
			end

			local CompareVectors = function(PointA, PointB)
				return (PointA.X < PointB.X) or (PointA.Y < PointB.Y)
			end

			local IsClipped = function(Object, Column)
				local Parent = Column

				local BoundryTop = Parent.AbsolutePosition
				local BoundryBottom = BoundryTop + Parent.AbsoluteSize

				local Top = Object.AbsolutePosition
				local Bottom = Top + Object.AbsoluteSize

				return CompareVectors(Top, BoundryTop) or CompareVectors(BoundryBottom, Bottom)
			end

			Items["RealDropdown"]:Connect("Changed", function(Property)
				if Property == "AbsolutePosition" and Dropdown.IsOpen then
					Dropdown.IsOpen =
						not IsClipped(Items["OptionHolder"].Instance, Dropdown.Section.Items["Section"].Instance.Parent)
					Items["OptionHolder"].Instance.Visible = Dropdown.IsOpen
				end
			end)

			local Debounce = false
			local RenderStepped

			function Dropdown:SetOpen(Bool)
				if Debounce then
					return
				end

				Dropdown.IsOpen = Bool
				Debounce = true

				if Bool then
					Items["OptionHolder"].Instance.Visible = true
					Items["OptionHolder"].Instance.Parent = Library.Holder.Instance

					RenderStepped = RunService.RenderStepped:Connect(function()
						Items["OptionHolder"].Instance.Position = UDim2New(
							0,
							Items["RealDropdown"].Instance.AbsolutePosition.X,
							0,
							Items["RealDropdown"].Instance.AbsolutePosition.Y
								+ Items["RealDropdown"].Instance.AbsoluteSize.Y
								+ 65
						)

						Items["OptionHolder"].Instance.Size =
							UDim2New(0, Items["RealDropdown"].Instance.AbsoluteSize.X, 0, Dropdown.MaxSize)
					end)

					for Index, Value in Library.OpenFrames do
						if Value ~= Dropdown then
							Value:SetOpen(false)
						end
					end

					Library.OpenFrames[Dropdown] = Dropdown
				else
					if RenderStepped then
						RenderStepped:Disconnect()
						RenderStepped = nil
					end

					if Library.OpenFrames[Dropdown] then
						Library.OpenFrames[Dropdown] = nil
					end
				end

				local AllInstances = Items["OptionHolder"].Instance:GetDescendants()
				TableInsert(AllInstances, Items["OptionHolder"].Instance)

				local NewTween

				for Index, Value in AllInstances do
					local TransparencyProperty = Tween:GetProperty(Value)

					if not TransparencyProperty then
						continue
					end

					if not Value.ClassName:find("UI") then
						Value.ZIndex = Dropdown.IsOpen and 10 or 1
					end

					if type(TransparencyProperty) == "table" then
						for _, Property in TransparencyProperty do
							NewTween = Tween:FadeItem(Value, Property, Bool, 0.2)
						end
					else
						NewTween = Tween:FadeItem(Value, TransparencyProperty, Bool, 0.2)
					end
				end

				Library:Connect(NewTween.Tween.Completed, function()
					Debounce = false
					Items["OptionHolder"].Instance.Visible = Dropdown.IsOpen
					task.wait(0.2)
					Items["OptionHolder"].Instance.Parent = not Dropdown.IsOpen and Library.UnusedHolder.Instance
						or Library.Holder.Instance
				end)
			end

			function Dropdown:Add(Option)
				local OptionName = type(Option) == "table" and Option.Name or Option
				local OptionRisk = type(Option) == "table" and Option.Risk or nil
				local OptionRiskColor = OptionRisk == "detected" and FromRGB(255, 0, 0) or OptionRisk == "risky" and FromRGB(255, 255, 0) or nil

				local OptionButton = Instances:Create("TextButton", {
					Parent = Items["Holder"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(0, 0, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 0, 20),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				OptionButton:AddToTheme({ BackgroundColor3 = "Element" })

				Instances:Create("UIGradient", {
					Parent = OptionButton.Instance,
					Name = "\0",
					Rotation = -90,
					Color = RGBSequence({
						RGBSequenceKeypoint(0, FromRGB(255, 255, 255)),
						RGBSequenceKeypoint(1, FromRGB(200, 200, 200)),
					}),
				})

				local OptionStroke = Instances:Create("UIStroke", {
					Parent = OptionButton.Instance,
					Name = "\0",
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 1,
					Color = FromRGB(46, 52, 61),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})
				OptionStroke:AddToTheme({ Color = "Border" })

				local OptionLiner = Instances:Create("Frame", {
					Parent = OptionButton.Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(0, 1, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = ACCENT_COLOR,
				})
				OptionLiner:AddToTheme({ BackgroundColor3 = "Accent" })

				local OptionText = Instances:Create("TextLabel", {
					Parent = OptionButton.Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = OptionRiskColor or FromRGB(255, 255, 255),
					TextTransparency = 0.4000000059604645,
					Text = OptionName,
					Size = UDim2New(0, 0, 0, 15),
					AnchorPoint = Vector2New(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(0, 10, 0.5, 0),
					BorderColor3 = FromRGB(0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				if not OptionRiskColor then
					OptionText:AddToTheme({ TextColor3 = "Text" })
				end

				local OptionData = {
					Button = OptionButton,
					Selected = false,
					Name = OptionName,
					Risk = OptionRisk,
					Text = OptionText,
					Liner = OptionLiner,
					Stroke = OptionStroke,
				}

				function OptionData:Toggle(Status)
					if Status == "Active" then
						OptionData.Liner:Tween(nil, { BackgroundTransparency = 0, Size = UDim2New(0, 1, 1, 0) })
						OptionData.Text:Tween(nil, { TextTransparency = 0 })
						OptionData.Button:Tween(nil, { BackgroundTransparency = 0 })
						OptionData.Stroke:Tween(nil, { Transparency = 0 })
					else
						OptionData.Liner:Tween(nil, { BackgroundTransparency = 1 })
						OptionData.Text:Tween(nil, { TextTransparency = 0.4 })
						OptionData.Button:Tween(nil, { BackgroundTransparency = 1 })
						OptionData.Stroke:Tween(nil, { Transparency = 1 })
					end
				end

				function OptionData:Set()
					OptionData.Selected = not OptionData.Selected

					if Data.Multi then
						local Index = TableFind(Dropdown.Value, OptionData.Name)

						if Index then
							TableRemove(Dropdown.Value, Index)
						else
							TableInsert(Dropdown.Value, OptionData.Name)
						end

						OptionData:Toggle(Index and "Inactive" or "Active")

						Library.Flags[Dropdown.Flag] = Dropdown.Value

						local TextFormat = #Dropdown.Value > 0 and TableConcat(Dropdown.Value, ", ") or "--"
						Items["Value"].Instance.Text = TextFormat
					else
						if OptionData.Selected then
							Dropdown.Value = OptionData.Name
							Library.Flags[Dropdown.Flag] = OptionData.Name

							OptionData.Selected = true
							OptionData:Toggle("Active")

							for Index, Value in Dropdown.Options do
								if Value ~= OptionData then
									Value.Selected = false
									Value:Toggle("Inactive")
								end
							end

							Items["Value"].Instance.Text = OptionData.Name
						else
							Dropdown.Value = nil
							Library.Flags[Dropdown.Flag] = nil

							OptionData.Selected = false
							OptionData:Toggle("Inactive")

							Items["Value"].Instance.Text = "-"
						end
					end

					if Dropdown.Callback then
						Library:SafeCall(Dropdown.Callback, Dropdown.Value)
					end
				end

				OptionData.Button:Connect("MouseButton1Down", function()
					OptionData:Set()
				end)

				Dropdown.Options[OptionData.Name] = OptionData
				return OptionData
			end

			function Dropdown:Remove(Option)
				local OptionData = Dropdown.Options[Option]
				if OptionData then
					OptionData.Button:Clean()
					Dropdown.Options[Option] = nil
				end
			end

			function Dropdown:Refresh(List)
				for Index, Value in Dropdown.Options do
					Dropdown:Remove(Value.Name)
				end

				for Index, Value in List do
					Dropdown:Add(Value)
				end
			end

			for Index, Value in Dropdown.Items do
				Dropdown:Add(Value)
			end

			Items["RealDropdown"]:Connect("MouseButton1Down", function()
				Dropdown:SetOpen(not Dropdown.IsOpen)
			end)

			Library:Connect(UserInputService.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					if not Dropdown.IsOpen then
						return
					end

					if Library:IsMouseOverFrame(Items["OptionHolder"]) then
						return
					end

					Dropdown:SetOpen(false)
				end
			end)

			local SearchStepped

			Items["Search"]:Connect("Focused", function()
				SearchStepped = RunService.RenderStepped:Connect(function()
					for Index, Value in Dropdown.Options do
						if Items["Search"].Instance.Text ~= "" then
							if
								StringFind(
									StringLower(Value.Name),
									Library:EscapePattern(StringLower(Items["Search"].Instance.Text))
								)
							then
								Value.Button.Instance.Visible = true
							else
								Value.Button.Instance.Visible = false
							end
						else
							Value.Button.Instance.Visible = true
						end
					end
				end)
			end)

			Items["Search"]:Connect("FocusLost", function()
				if SearchStepped then
					SearchStepped:Disconnect()
					SearchStepped = nil
				end
			end)

			Library.SetFlags[Dropdown.Flag] = function(Value)
				Dropdown:Set(Value)
			end

			if Dropdown.Default then
				Dropdown:Set(Dropdown.Default)
			end

			return Dropdown
		end

		Library.Sections.Label = function(self, Name)
			local Label = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Name or "Label",
			}

			local Items = {}
			do
				Items["Label"] = Instances:Create("Frame", {
					Parent = Label.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = UDim2New(1, 0, 0, 15),
					BorderColor3 = FromRGB(0, 0, 0),
					ZIndex = 2,
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Label"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Label.Name,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					Size = UDim2New(0, 0, 0, 15),
					BorderSizePixel = 0,
					ZIndex = 2,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })

				Items["SubElements"] = Instances:Create("Frame", {
					Parent = Items["Label"].Instance,
					Name = "\0",
					BorderColor3 = FromRGB(0, 0, 0),
					AnchorPoint = Vector2New(1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2New(1, 0, 0, 0),
					Size = UDim2New(0, 0, 1, 0),
					ZIndex = 2,
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Instances:Create("UIListLayout", {
					Parent = Items["SubElements"].Instance,
					Name = "\0",
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Padding = UDimNew(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			end

			function Label:SetText(Text)
				Text = tostring(Text)
				Items["Text"].Instance.Text = Text
			end

			function Label:SetVisibility(Bool)
				Items["Label"].Instance.Visible = Bool
			end

			function Label:Colorpicker(Data)
				Data = Data or {}

				local Colorpicker = {
					Window = Label.Window,
					Page = Label.Page,
					Section = Label.Section,

					Flag = Data.Flag or Data.flag or Library:NextFlag(),
					Default = Data.Default or Data.default or Color3.fromRGB(255, 255, 255),
					Alpha = Data.Alpha or Data.alpha or 0,
					Callback = Data.Callback or Data.callback or function() end,
				}

				local NewColorpicker, ColorpickerItems = Library:CreateColorpicker({
					Parent = Items["SubElements"],
					Page = Colorpicker.Page,
					Flag = Colorpicker.Flag,
					Section = Colorpicker.Section,
					Default = Colorpicker.Default,
					Alpha = Colorpicker.Alpha,
					Callback = Colorpicker.Callback,
				})

				return NewColorpicker
			end

				function Label:Keybind(Data)
					Data = Data or {}

					local Keybind = {
						Window = Label.Window,
						Page = Label.Page,
						Section = Label.Section,

						Name = Data.Name or Data.name or "Keybind",
						Flag = Data.Flag or Data.flag or Library:NextFlag(),
						Default = Data.Default or Data.default,
						Callback = Data.Callback or Data.callback or function() end,
						Mode = Data.Mode or Data.mode or "Toggle",
					}

				local NewKeybind, Items = Library:CreateKeybind({
					Name = Keybind.Name,
					Parent = Items["SubElements"],
					Flag = Keybind.Flag,
					Section = Keybind.Section,
					Default = Keybind.Default,
					Mode = Keybind.Mode,
					Callback = Keybind.Callback,
				})

				return NewKeybind
			end

			return Label
		end

		Library.Sections.Textbox = function(self, Data)
			Data = Data or {}

			local Textbox = {
				Window = self.Window,
				Page = self.Page,
				Section = self,

				Name = Data.Name or Data.name or "Textbox",
				Flag = Data.Flag or Data.flag or Library:NextFlag(),
				Default = Data.Default or Data.default or "",
				Callback = Data.Callback or Data.callback or function() end,
				Placeholder = Data.Placeholder or Data.placeholder or "...",
				Finished = Data.Finished or Data.finished or false,
				Numeric = Data.Numeric or Data.numeric or false,

				Value = "",
			}

			local Items = {}
			do
				Items["Textbox"] = Instances:Create("Frame", {
					Parent = Textbox.Section.Items["Content"].Instance,
					Name = "\0",
					BackgroundTransparency = 1,
					BorderColor3 = FromRGB(0, 0, 0),
					Size = UDim2New(1, 0, 0, 20),
					BorderSizePixel = 0,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})

				Items["Input"] = Instances:Create("TextBox", {
					Parent = Items["Textbox"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					CursorPosition = -1,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = "",
					Size = UDim2New(0.6000000238418579, 0, 1, 0),
					BorderSizePixel = 0,
					PlaceholderColor3 = FromRGB(185, 185, 185),
					TextXAlignment = Enum.TextXAlignment.Left,
					PlaceholderText = Textbox.Placeholder,
					TextSize = 14,
					BackgroundColor3 = FromRGB(32, 38, 48),
				})
				Items["Input"]:AddToTheme({
					TextColor3 = "Text",
					PlaceholderColor3 = "Inactive Text",
					BackgroundColor3 = "Element",
				})

				Instances:Create("UIPadding", {
					Parent = Items["Input"].Instance,
					Name = "\0",
					PaddingLeft = UDimNew(0, 6),
				})

				Items["Text"] = Instances:Create("TextLabel", {
					Parent = Items["Textbox"].Instance,
					Name = "\0",
					FontFace = Library.Font,
					TextColor3 = FromRGB(255, 255, 255),
					BorderColor3 = FromRGB(0, 0, 0),
					Text = Textbox.Name,
					AnchorPoint = Vector2New(1, 0),
					Size = UDim2New(0, 0, 0, 15),
					BackgroundTransparency = 1,
					Position = UDim2New(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 14,
					BackgroundColor3 = FromRGB(255, 255, 255),
				})
				Items["Text"]:AddToTheme({ TextColor3 = "Text" })

				Items["Input"]:OnHover(function()
					Items["Input"]:Tween(
						nil,
						{ BackgroundColor3 = Library:GetLighterColor(Library.Theme.Element, 1.35) }
					)
				end)

				Items["Input"]:OnHoverLeave(function()
					Items["Input"]:Tween(nil, { BackgroundColor3 = Library.Theme.Element })
				end)
			end

			function Textbox:Get()
				return Textbox.Value
			end

			function Textbox:SetVisibility(Bool)
				Items["Textbox"].Instance.Visible = Bool
			end

			function Textbox:Set(Value)
				if Textbox.Numeric then
					if (not tonumber(Value)) and StringLen(tostring(Value)) > 0 then
						Value = Textbox.Value
					end
				end

				Textbox.Value = Value
				Items["Input"].Instance.Text = Value
				Library.Flags[Textbox.Flag] = Value

				if Textbox.Callback then
					Library:SafeCall(Textbox.Callback, Textbox.Value)
				end
			end

			if Textbox.Finished then
				Items["Input"]:Connect("FocusLost", function(PressedEnterQuestionMark)
					if PressedEnterQuestionMark then
						Textbox:Set(Items["Input"].Instance.Text)
					end
				end)
			else
				Items["Input"].Instance:GetPropertyChangedSignal("Text"):Connect(function()
					Textbox:Set(Items["Input"].Instance.Text)
				end)
			end

			if Textbox.Default then
				Textbox:Set(Textbox.Default)
			end

			Library.SetFlags[Textbox.Flag] = function(Value)
				Textbox:Set(Value)
			end

			return Textbox
		end

		Library.CreateSettingsPage = function(self, Window, KeybindList, Watermark)
			local SettingsPage = Window:Page({ Name = "Settings", Columns = 2 })
			local SettingsSection = SettingsPage:Section({ Name = "Settings", Side = 1 })
			do
				SettingsSection:Button({
					Name = "Unload",
					Callback = function()
						Library:Unload()
					end,
				})

				SettingsSection:Toggle({
					Name = "Watermark",
					Flag = "Watermark",
					Default = true,
					Callback = function(Value)
						Watermark:SetVisibility(Value)
					end,
				})

				SettingsSection:Toggle({
					Name = "Keybind List",
					Flag = "Keybind list",
					Default = true,
					Callback = function(Value)
						KeybindList:SetVisibility(Value)
					end,
				})

				SettingsSection:Toggle({
					Name = "Background Blur",
					Flag = "Background Blur",
					Default = true,
					Callback = function(Value)
						Library.BlurEnabled = Value
						if Value and Window.IsOpen and Window.Blur then
							TweenService:Create(Window.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 15 }):Play()
						elseif not Value and Window.Blur then
							TweenService:Create(Window.Blur, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 0 }):Play()
						end
					end,
				})

				SettingsSection:Toggle({
					Name = "Snow Background Effect",
					Flag = "Snow Background Effect",
					Default = false,
					Callback = function(Value)
						Library.SnowEnabled = Value
						if Value then
							if Window.SnowContainer then
								Window.SnowContainer.Instance.Visible = true
							end
							if Window.IsOpen then
								Window.StartSnow()
							end
						else
							Window.StopSnow()
						end
					end,
				})

				SettingsSection:Toggle({
					Name = "Menu Background Snow",
					Flag = "Menu Background Snow",
					Default = true,
					Callback = function(Value)
						Library.MenuSnowEnabled = Value
						if Value then
							if Window.MenuSnowContainer then
								Window.MenuSnowContainer.Instance.Visible = true
							end
							if Window.IsOpen then
								Window.StartMenuSnow()
							end
						else
							Window.StopMenuSnow()
						end
					end,
				})

				SettingsSection:Label("Menu Keybind"):Keybind({
					Name = "Menu Keybind",
					Flag = "MenuKeybind",
					Default = Library.MenuKeybind,
					Mode = "Toggle",
					Callback = function()
						Library.MenuKeybind = Library.Flags["MenuKeybind"].Key
					end,
				})


			end

			if IsMobile then
				local MobileSection = SettingsPage:Section({ Name = "Mobile", Side = 2 })
				MobileSection:Label("CONFIGS NOT SUPPORTED FOR MOBILE")
			else
				local ConfigsSection = SettingsPage:Section({ Name = "Configs", Side = 2 })
				do
					local ConfigName
					local ConfigSelected

					local ConfigsSearchbox = ConfigsSection:Dropdown({
						Name = "Profiles list",
						Flag = "Profiles list",
						Multi = false,
						Items = {},
						Callback = function(Value)
							ConfigSelected = Value
						end,
					})

					ConfigsSection:Textbox({
						Name = "Config name",
						Default = "",
						Flag = "ConfigName",
						Placeholder = "...",
						Callback = function(Value)
							ConfigName = Value
						end,
					})

					ConfigsSection:Button({
						Name = "Create",
						Callback = function()
							if ConfigName ~= "" then
								if not isfile(Library.Folders.Configs .. "/" .. ConfigName .. ".json") then
									writefile(Library.Folders.Configs .. "/" .. ConfigName .. ".json", Library:GetConfig())
									Library:RefreshConfigsList(ConfigsSearchbox)
									Library:Notification("Created config " .. ConfigName .. ".json", 5)
								end
							end
						end,
					})

					ConfigsSection:Button({
						Name = "Delete",
						Callback = function()
							if ConfigSelected ~= nil then
								delfile(Library.Folders.Configs .. "/" .. ConfigSelected .. ".json")
								Library:RefreshConfigsList(ConfigsSearchbox)
								Library:Notification("Deleted config " .. ConfigSelected .. ".json", 5, FromRGB(255, 0, 0))
							end
						end,
					})

					ConfigsSection:Button({
						Name = "Load",
						Callback = function()
							if ConfigSelected ~= nil then
								local Success, Result = Library:LoadConfig(
									readfile(Library.Folders.Configs .. "/" .. ConfigSelected .. ".json")
								)
								if Success then
									Library:Notification("Loaded config " .. ConfigSelected .. ".json", 5)
								else
									Library:Notification("Failed to load config " .. ConfigSelected .. ".json", 5)
								end
							end
						end,
					})

					ConfigsSection:Button({
						Name = "Save",
						Callback = function()
							if ConfigSelected ~= nil then
								writefile(Library.Folders.Configs .. "/" .. ConfigSelected .. ".json", Library:GetConfig())
								Library:Notification("Saved config " .. ConfigSelected .. ".json", 5)
							end
						end,
					})

					ConfigsSection:Button({
						Name = "Refresh",
						Callback = function()
							Library:RefreshConfigsList(ConfigsSearchbox)
						end,
					})

					Library:RefreshConfigsList(ConfigsSearchbox)
				end
			end

		end
	end
end

-- Executor support check
local Executor = pcall(identifyexecutor) and identifyexecutor() or "Unknown"

local SupportedExecutors = {
	Volcano = true, Bunni = true, Seliware = true, Krnl = true,
	Volt = true, Swift = true, Valex = true, Potassium = true,
	Wave = true, Hydrogen = true, ["Synapse Z"] = true,
}

local PartialExecutors = {
	Madium = true, Real = true, Velocity = true,
}

local UnsupportedExecutors = {
	MacSploit = true, Xeno = true, Solara = true,
}

-- MessageBox is self-contained (defined at the top of this file)

if IsMobile then
	MessageBox.Show({
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your on Mobile not ALL Features will be working/supported",
		MessageBoxIcon = "Warning",
		MessageBoxButtons = "OK",
	})
end

if UnsupportedExecutors[Executor] then
	MessageBox.Show({
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your Executor Is NOT Supported",
		MessageBoxIcon = "Error",
		MessageBoxButtons = "OK",
	})
	return
end

if PartialExecutors[Executor] then
	MessageBox.Show({
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Text = "dopamine.wtf",
		Description = "Your Executor Is NOT FULLY Supported May Be Laggy/Detected",
		MessageBoxIcon = "Warning",
		MessageBoxButtons = "OK",
	})
end

getgenv().Library = Library
Library:ChangeTheme("Accent",          Color3.fromRGB(0, 191, 255))  --// original purple accent
Library:ChangeTheme("Background",      Color3.fromRGB(12,  12,  12))   --// darker bg
Library:ChangeTheme("Inline",          Color3.fromRGB(18,  18,  18))   --// section bg
Library:ChangeTheme("Page Background", Color3.fromRGB(20,  20,  20))   --// tab bg
Library:ChangeTheme("Element",         Color3.fromRGB(26,  26,  26))   --// toggle/slider bg
Library:ChangeTheme("Hovered Element", Color3.fromRGB(35,  35,  35))   --// hover
Library:ChangeTheme("Border",          Color3.fromRGB(10,  10,  10))   --// outer border
Library:ChangeTheme("Outline",         Color3.fromRGB(38,  38,  38))   --// inner outline
Library:ChangeTheme("Text",            Color3.fromRGB(230, 230, 230))  --// text
Library:ChangeTheme("Gradient",        Color3.fromRGB(180, 180, 180))  --// gradient end
Library:ChangeTheme("Text Stroke",     Color3.fromRGB(0,   0,   0))    --// text stroke

--// nooo
local _origGetConfig = Library.GetConfig
Library.GetConfig = function(self)
    local json = _origGetConfig(self)
    --// append our custom positions
    local ok, data = pcall(function() return game:GetService("HttpService"):JSONDecode(json) end)
    if ok and type(data) == "table" then
        --// moderator list position
        if StaffListGui then
            local mf = StaffListGui:FindFirstChildOfClass("Frame")
            if mf then
                data["__modlist_pos_x"] = mf.Position.X.Offset
                data["__modlist_pos_y"] = mf.Position.Y.Offset
            end
        end
        --// armor viewer position
        if ArmorInfoFrame then
            data["__armor_pos_x"] = ArmorInfoFrame.Position.X.Offset
            data["__armor_pos_y"] = ArmorInfoFrame.Position.Y.Offset
        end
        local ok2, newJson = pcall(function() return game:GetService("HttpService"):JSONEncode(data) end)
        if ok2 then return newJson end
    end
    return json
end

local _origLoadConfig = Library.LoadConfig
Library.LoadConfig = function(self, json)
    local result = _origLoadConfig(self, json)
    --// restore our custom positions
    local ok, data = pcall(function() return game:GetService("HttpService"):JSONDecode(json) end)
    if ok and type(data) == "table" then
        if data["__modlist_pos_x"] and StaffListGui then
            local mf = StaffListGui:FindFirstChildOfClass("Frame")
            if mf then
                mf.Position = UDim2.new(0, data["__modlist_pos_x"], 0, data["__modlist_pos_y"] or 0)
            end
        end
        if data["__armor_pos_x"] and ArmorInfoFrame then
            ArmorInfoFrame.Position = UDim2.new(0, data["__armor_pos_x"], 0, data["__armor_pos_y"] or 12)
        end
    end
    return result
end

--// sync "custom uis" with library theme whenever accent changes
local _origChangeTheme = Library.ChangeTheme
Library.ChangeTheme = function(self, theme, color)
    _origChangeTheme(self, theme, color)
    if theme == "Accent" then
        --// update armor viewer accent
        pcall(function()
            for _, v in ipairs(ArmorInfoFrame:GetDescendants()) do
                if v:IsA("Frame") and v.BackgroundColor3 == Library.Theme.Accent then
                    v.BackgroundColor3 = color
                end
            end
        end)
        --// update moderator list accent
        pcall(function()
            if StaffListGui then
                for _, v in ipairs(StaffListGui:GetDescendants()) do
                    if v:IsA("Frame") and v.BackgroundColor3 == Library.Theme.Accent then
                        v.BackgroundColor3 = color
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

local Cheat = { GameName = "Rost Alpha", Modules = {}, Globals = {} }
local flags = {}
local config_flags = {}

function safeRun(func)
    local ok, err = xpcall(func, function(e) return e end)
    if not ok then
        local msg = tostring(err)
        pcall(function() Library:Notification("Error | " .. tostring(msg), 5) end)
    end
end
--// Modules
    local Workspace = cloneref(game:GetService("Workspace"))
    local SoundService = game:GetService("SoundService")
    local run_service = cloneref(game:GetService("RunService"))
    local rs = cloneref(game:GetService("ReplicatedStorage"))
    local players = cloneref(game:GetService("Players"))
    local uis = cloneref(game:GetService("UserInputService"))
    local tween_service = cloneref(game:GetService("TweenService"))
    local stats = cloneref(game:GetService("Stats"))
    local get_team = cloneref(game:GetService("Teams"))
    local lighting = cloneref(game:GetService("Lighting"))
    local teams = get_team:GetTeams()
    local camera = Workspace["CurrentCamera"]
    local viewport_size = camera["ViewportSize"]
    local local_player = players["LocalPlayer"]
    local lplayer_name = local_player["Name"]
    local local_char = local_player.Character or local_player.CharacterAdded:Wait()
    Cheat.Globals.ClientCharacter = local_char
    local get_mouse = local_player:GetMouse()
    local sky = lighting:FindFirstChildOfClass("Sky") or cloneref(Instance.new("Sky", lighting))
    local originalSkybox = {
        SkyboxBk = sky.SkyboxBk, SkyboxDn = sky.SkyboxDn, SkyboxFt = sky.SkyboxFt,
        SkyboxLf = sky.SkyboxLf, SkyboxRt = sky.SkyboxRt, SkyboxUp = sky.SkyboxUp,
    }
    local color_correct = lighting:FindFirstChildOfClass("ColorCorrectionEffect")
            or cloneref(Instance.new("ColorCorrectionEffect", lighting))
    local fov_circle, sounds, tracs, snap_lines, skys = {}, {}, {}, {},  {};
    local info_viewer= {};
    local player = players.LocalPlayer
--//

--// cache
    local lighting_cache = {
        ClockTime = lighting.ClockTime,
        FogEnd = lighting.FogEnd,
        Ambient = lighting.Ambient,
        OutdoorAmbient = lighting.OutdoorAmbient
    }

    local atmosphere = lighting:FindFirstChild("Atmosphere")
    if atmosphere then
        lighting_cache.Density = atmosphere.Density
        lighting_cache.Offset = atmosphere.Offset
        lighting_cache.Glare = atmosphere.Glare
        lighting_cache.Haze = atmosphere.Haze
    end

    local player = local_player
    local character = nil
    local hrp = nil
    local humanoid = nil

    function waitForCharacter()
        character = player.Character or player.CharacterAdded:Wait()
        hrp = character:WaitForChild("HumanoidRootPart")
        humanoid = character:WaitForChild("Humanoid")
        Cheat.Globals.ClientCharacter = character
    end
    
    player.CharacterAdded:Connect(function()
        waitForCharacter()
        if Cheat.Globals.RaycastParams then
            Cheat.Globals.RaycastParams.FilterDescendantsInstances = {
                workspace.CurrentCamera,
                Cheat.Globals.ClientCharacter,
            }
        end
    end)
--//
local run = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local localPlayer = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera
local Character

run.Heartbeat:Connect(function(Delta)
	Character = localPlayer.Character
	local Root = Character and Character:FindFirstChild("HumanoidRootPart")
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

	local IsFlying = false
	if Humanoid and Root then 
		if flags["FlyEnabled"] and flags["FlyKeybind"] and flags["FlyKeybind"].active then
			IsFlying = true
			task.spawn(function()
				if Humanoid and Humanoid.Health > 0 then
					local speedMult = flags["FlySpeed"] or 1
					local currentDelta = Delta * speedMult * 3
					local MoveVector = Humanoid.MoveDirection

					if uis:IsKeyDown(Enum.KeyCode.E) then
						MoveVector = MoveVector + Vector3.new(0, 1, 0)
					end
					if uis:IsKeyDown(Enum.KeyCode.LeftControl) then
						MoveVector = MoveVector + Vector3.new(0, -1, 0)
					end
					if uis:IsKeyDown(Enum.KeyCode.W) then
						MoveVector = MoveVector + Vector3.new(0, camera.CFrame.LookVector.Y, 0)
					end
					if uis:IsKeyDown(Enum.KeyCode.S) then
						MoveVector = MoveVector + Vector3.new(0, -camera.CFrame.LookVector.Y, 0)
					end

					local MovementDelta = MoveVector * currentDelta
					local Position = Root.CFrame.Position + MovementDelta
					Humanoid.PlatformStand = false
					Root.Velocity = Vector3.zero
					Root.CFrame = CFrame.new(Position, Position + Vector3.new(camera.CFrame.LookVector.X, 0, camera.CFrame.LookVector.Z))
				end
			end)
		end

		if flags["FlyEnabled"] and IsFlying then
			local Origin = Root.Position
			local rayParams = RaycastParams.new()
			rayParams.FilterType = Enum.RaycastFilterType.Exclude
			rayParams.FilterDescendantsInstances = {Character}
			rayParams.IgnoreWater = true
			
			local Result = workspace:Raycast(Origin, Vector3.new(0, -1000, 0), rayParams)
			if Result and Result.Distance > 12 then
				task.spawn(function()
					local OldVel = Root.Velocity
					for _, Part in ipairs(Character:GetChildren()) do
						if Part:IsA("BasePart") or Part:IsA("MeshPart") then
							Part.Velocity = Vector3.new(0, -9999, 0)
						end
					end
					run.RenderStepped:Wait()
					for _, Part in ipairs(Character:GetChildren()) do
						if Part:IsA("BasePart") or Part:IsA("MeshPart") then
							Part.Velocity = OldVel
						end
					end
				end)
			end
		end
	end
end)
    local chams_textures = {
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

    local targetutil = {entry = nil, closest_part = nil, hasshot = false}

    local skyboxes = {
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

    local hit_sounds = {
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

    local tracers_ids = {
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

    for name in pairs(tracers_ids) do 
        table.insert(tracs, name) 
    end;


    for v in pairs(skyboxes) do
        table.insert(skys, v)
    end

    for name in pairs(hit_sounds) do 
        table.insert(sounds, name) 
    end;
--//


local freecam = {
    enabled = false,
    pitch = 0,
    yaw = 0,
    keys = {},
    old_type = Enum.CameraType.Custom,
    old_behavior = Enum.MouseBehavior.Default,
}


local entry, closest_part
local target_frame = {
    target = {
        entry = nil,
        part = nil,
        distance = math.huge,
    },
}   
local highlight_player = nil
local player_esp = {
    player_cache = {},
    drawing_cache = {},

    childadded_connections = {},
    childremoved_connections = {},
    functions = {},
}


local platform = Instance.new("Part")
platform.Size = Vector3.new(2, 0.1, 2)
platform.Anchored = true
platform.BrickColor = BrickColor.new("Black")
platform.CanCollide = true
platform.Name = "Platform"
platform.Parent = Workspace
platform.Transparency = 1


local xere = 0.2
local yere = -1
local zere = -2
local rotX = 0
local rotY = 0
local rotZ = 0
local viewenabal = false

local selected_sound = "rbxassetid://8255306220"
local newId = hit_sounds[selected_sound]


function getSoundId(sound)
	if not sound:IsA("Sound") then
		return false
	end

	local name = sound.Name:lower()

	if name:find("headshot") then
		return true
	end

	if name:find("hit") then
		return true
	end

	return false
end


function replaceSounds(root)
	if not root then return end
    if not flags["Hitsounds"] then return end

	for _, inst in ipairs(root:GetDescendants()) do
		if inst:IsA("Sound") then
			local name = inst.Name:lower()
            local should = getSoundId(inst)
			if newId and inst.SoundId ~= newId and should then
				inst.SoundId = newId
			end
		end
	end
end


function onCharacterAdded(character)
    character.ChildAdded:Connect(function(child)
        if child:IsA("Tool") then
            if flags["Hitsounds"] then
                replaceSounds(child)
            end
        end
    end)
end

if local_player.Character then
    onCharacterAdded(local_player.Character)
end

local_player.CharacterAdded:Connect(onCharacterAdded)

local RunHandler = require(rs.Modules.RunHandler)

RunHandler.CanRun = true

hookfunction(RunHandler.stopRun, function()
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


run_service.RenderStepped:Connect(function()
	if flags["NoJumpi"] then
		if not jumpScript or not jumpScript.Parent then
			jumpScript = local_player.PlayerGui:FindFirstChild("JumpCooldown")
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
local_player.CharacterAdded:Connect(function()
    jumpScript = nil
end)


local RecoilModule = rs
	:WaitForChild("Gun")
	:WaitForChild("Scripts")
	:WaitForChild("RecoilHandler")

local Recoil = require(RecoilModule)

local originalNextStep = Recoil.nextStep
local hooky = false

function applyRecoilHook()
	if hooky then return end
	hooky = true

	Recoil.nextStep = function(self, ...)
		if flags["NoRecoil"] then
			return
		else
            return originalNextStep(self, ...)
        end
	end
end

function removeRecoilHook()
	if not hooky then return end
	hooky = false
	Recoil.nextStep = originalNextStep
end



local hooksEnabled = false

local FAKE_PITCH_ENABLED = false

local GunClient = require(rs.Gun.Scripts.GunClient)
local ToolClient = require(rs.Tool.Scripts.ToolClient)

local originalGunUpdate = GunClient.updateServerCharacterRotation
local originalToolUpdate = ToolClient.updateServerCharacterRotation


local function getJitterPitch()
    local values = {
        math.rad(-89),
        math.rad(89),
        math.rad(-70),
        math.rad(70),
        math.rad(-45),
        math.rad(45)
    }
    return values[math.random(1, #values)]
end

local HARD_PITCHES = {
    -89, 
     89, 
    -70,
     70,
    -45,
     45
}

local Remotes = rs.Tool.Remotes


local function gunHook(self, ...)
    if not FAKE_PITCH_ENABLED then
        return originalGunUpdate(self, ...)
    end

    local realCFrame = camera.CFrame

    local fakeCFrame =
        CFrame.new(realCFrame.Position)
        * CFrame.Angles(getJitterPitch(), 0, 0)

    camera.CFrame = fakeCFrame
    local result = originalGunUpdate(self, ...)
    camera.CFrame = realCFrame

    return result
end

local function toolHook(self)
    if not FAKE_PITCH_ENABLED or not self or not self.Id then
        return originalToolUpdate(self)
    end

    local fakePitch = math.rad(HARD_PITCHES[math.random(1, #HARD_PITCHES)])

    local buf = buffer.create(8)
    buffer.writeu32(buf, 0, self.Id)
    buffer.writef32(buf, 4, fakePitch)

    Remotes.UpdateCharacterRotation:FireServer(buf)
end

function EnableFakePitch()
    if hooksEnabled then return end
    hooksEnabled = true
    FAKE_PITCH_ENABLED = true

    GunClient.updateServerCharacterRotation = gunHook
    ToolClient.updateServerCharacterRotation = toolHook
end

function DisableFakePitch()
    if not hooksEnabled then return end
    hooksEnabled = false
    FAKE_PITCH_ENABLED = false

    GunClient.updateServerCharacterRotation = originalGunUpdate
    ToolClient.updateServerCharacterRotation = originalToolUpdate
end




GunBase = require(rs.Gun.Scripts.GunBase)

originalcanFire = GunBase.canFire
originalfire = GunBase.fire

hooked = false

--////// RELOAD INDICATOR
do
    local _reloadGui = Instance.new("ScreenGui")
    _reloadGui.Name = "ReloadIndicator"
    _reloadGui.ResetOnSpawn = false
    _reloadGui.IgnoreGuiInset = true
    _reloadGui.DisplayOrder = 998
    _reloadGui.Parent = gethui and gethui() or game:GetService("CoreGui")

    local _reloadHolder = Instance.new("Frame")
    _reloadHolder.Name = "ReloadHolder"
    _reloadHolder.AnchorPoint = Vector2.new(0.5, 1)
    _reloadHolder.Position = UDim2.new(0.5, 0, 1, -80)
    _reloadHolder.Size = UDim2.new(0, 160, 0, 16)
    _reloadHolder.BackgroundTransparency = 1
    _reloadHolder.Visible = false
    _reloadHolder.Parent = _reloadGui

    --//// background track
    local _reloadBg = Instance.new("Frame")
    _reloadBg.Size = UDim2.new(1, 0, 0, 6)
    _reloadBg.Position = UDim2.new(0, 0, 0.5, -3)
    _reloadBg.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    _reloadBg.BorderSizePixel = 0
    _reloadBg.Parent = _reloadHolder
    local _bgCorner = Instance.new("UICorner"); _bgCorner.CornerRadius = UDim.new(1,0); _bgCorner.Parent = _reloadBg
    local _bgStroke = Instance.new("UIStroke"); _bgStroke.Color = Color3.fromRGB(0,0,0); _bgStroke.Thickness = 1; _bgStroke.Parent = _reloadBg

    --//// fill bar
    local _reloadFill = Instance.new("Frame")
    _reloadFill.Size = UDim2.new(0, 0, 1, 0)
    _reloadFill.BackgroundColor3 = Color3.fromRGB(255, 200, 50)
    _reloadFill.BorderSizePixel = 0
    _reloadFill.Parent = _reloadBg
    local _fillCorner = Instance.new("UICorner"); _fillCorner.CornerRadius = UDim.new(1,0); _fillCorner.Parent = _reloadFill

    --//// label removed, bar only

    --//// state
    local _reloadStart = 0
    local _reloadDuration = 0
    local _isReloading = false
    local _lastReloadEnd = 0
    local _hookedTriggered = false  --//// true if the hook fired this reload (blocks fallback poll)

    --//// hook GunBase reload methods
    local function _hookReload(base)
        local origReload = base.reload or base.Reload or base.startReload or base.beginReload
        if not origReload then return end
        local hooked_name = base.reload and "reload" or base.Reload and "Reload" or base.startReload and "startReload" or "beginReload"
        local orig = base[hooked_name]
        base[hooked_name] = function(self, ...)
            --//// try to read reload time from self
            local dur = rawget(self, "ReloadTime") or rawget(self, "ReloadDuration")
                     or rawget(self, "reload_time") or rawget(self, "reloadTime") or 2
            _reloadStart    = tick()
            _reloadDuration = dur
            _isReloading    = true
            _hookedTriggered = true
            local result = orig(self, ...)
            return result
        end
    end
    pcall(_hookReload, GunBase)

    --// render on heartbeat
    run_service.Heartbeat:Connect(function()
        if not flags["ReloadIndicator"] then
            _reloadHolder.Visible = false
            return
        end

        if _isReloading then
            local elapsed = tick() - _reloadStart
            local progress = math.clamp(elapsed / math.max(_reloadDuration, 0.01), 0, 1)

            --// auto-stop when done
            if progress >= 1 then
                _isReloading = false
                _hookedTriggered = false
                _lastReloadEnd = tick()
                _reloadHolder.Visible = false
                return
            end

            _reloadHolder.Visible = true
            _reloadFill.Size = UDim2.new(progress, 0, 1, 0)

            --// color shifts yellow -> green as it fills
            _reloadFill.BackgroundColor3 = Color3.fromRGB(
                math.floor(255 * (1 - progress) + 0.5),
                math.floor(180 + 75 * progress + 0.5),
                50
            )
        else
            _reloadHolder.Visible = false
        end
    end)

    --// expose _gunCache reference for the fallback poll above
    --// (set after gun cache do-block runs, so we use a late-bind via getgenv)
    getgenv()._reloadGetCache = function() return _gunCache end
end

function applyHooks()
	if hooked then return end
	hooked = true
	GunBase.canFire = function(self)
		if flags["ForceShoot"] then
			return true
		end
		return originalcanFire(self)
	end
end

function removeHooks()
	if not hooked then return end
	hooked = false
	GunBase.canFire = originalcanFire
end

--// Gun Mods: rapid fire / full auto
local function _buildCaches()
    if _isScanning then return end
    _isScanning = true
    
    task.spawn(function()
        _gunCache = {}
        _meleeCache = {}
        
        -- Single getgc loop for both to prevent game freezing
        for _, v in pairs(getgc(true)) do
            if type(v) == "table" then
                if rawget(v, "FireDelay") ~= nil and rawget(v, "FiringOnCooldown") ~= nil and rawget(v, "OwnerPlayer") ~= nil then
                    table.insert(_gunCache, v)
                end
                
                if rawget(v, "UseDelay") ~= nil and rawget(v, "Range") ~= nil and rawget(v, "UsingOnCooldown") ~= nil and rawget(v, "Destroyed") ~= true then
                    table.insert(_meleeCache, v)
                end
            end
        end
        
        _cachesBuilt = true
        _isScanning = false
    end)
end

local _gunBaseDelay = {}
local _meleeBaseDelay = {}

local function _applyMods()
    if not _cachesBuilt then return end
    
    if flags["gun firerate"] == true or flags["gun auto"] == true then
        local mult = flags["rapid fire speed"] or 3
        for _, v in ipairs(_gunCache) do
            pcall(function()
                local base = _gunBaseDelay[v] or rawget(v, "FireDelay") or 0.2
                _gunBaseDelay[v] = base
                if flags["gun firerate"] == true then
                    local delay = base / mult
                    rawset(v, "FireDelay", delay)
                    if rawget(v, "FireRate") ~= nil then
                        rawset(v, "FireRate", math.floor(1 / delay))
                    end
                    rawset(v, "FiringOnCooldown", false)
                end
                if flags["gun auto"] == true then
                    if rawget(v, "FiringType") ~= nil then rawset(v, "FiringType", 2) end
                    if rawget(v, "FireMode") ~= nil then rawset(v, "FireMode", "Auto") end
                    if rawget(v, "Auto") ~= nil then rawset(v, "Auto", true) end
                end
            end)
        end
    end

    if flags["MeleeMods"] then        local mult = flags["MeleeSwingSpeed"] or 3
        local rng = flags["MeleeSwingRange"] or 5
        for _, v in ipairs(_meleeCache) do
            pcall(function()
                if rawget(v, "Destroyed") == true then return end
                local base = _meleeBaseDelay[v] or rawget(v, "UseDelay") or 0.5
                _meleeBaseDelay[v] = base
                local delay = base / mult
                rawset(v, "UseDelay", delay)
                rawset(v, "UseTime", delay)
                rawset(v, "Range", rng)
                rawset(v, "CharacterRange", rng)
                rawset(v, "UsingOnCooldown", false)
            end)
        end
    end
end

local function _setupTriggers(char)
    -- Trigger on Equip
    char.ChildAdded:Connect(function(child)
        if child:IsA("Tool") then
            task.wait(0.1)
            _buildCaches()
        end
    end)
end

-- Trigger on Rejoin
if local_player.Character then
    _setupTriggers(local_player.Character)
    _buildCaches()
end

-- Trigger on Die and Respawn
local_player.CharacterAdded:Connect(function(char)
    _cachesBuilt = false
    _setupTriggers(char)
    _buildCaches()
end)

-- Trigger on Teleport
local_player.OnTeleport:Connect(function()
   _cachesBuilt = false 
end)

-- Apply on Heartbeat
run_service.Heartbeat:Connect(_applyMods)

getgenv()._reloadGetCache = function() return _gunCache end

--// GunBase.fire hook: ForceShoot + silent aim distance bypass via Raycast redirect
do
    local _origFireBase = GunBase.fire

    GunBase.fire = function(self, ...)
        if flags["ForceShoot"] then
            self.FiringOnCooldown = false
        end

        if getgenv().silent and closest_part then
            local args = {...}
            local patched = false

            for i, v in ipairs(args) do
                if typeof(v) == "Vector3" and not patched then
                    local pos =
                        Cheat.Globals.ManipulationPosition
                        or (closest_part.Position + Vector3.new(0, 1.5, 0))

                    args[i] = pos
                    patched = true

                elseif typeof(v) == "buffer" and not patched then
                    local pos =
                        Cheat.Globals.ManipulationPosition
                        or (closest_part.Position + Vector3.new(0, 1.5, 0))

                    pcall(function()
                        buffer.writef32(v, 4,  pos.X)
                        buffer.writef32(v, 8,  pos.Y)
                        buffer.writef32(v, 12, pos.Z)
                    end)

                    patched = true
                end
            end

            if patched then
                return _origFireBase(self, table.unpack(args))
            end
        end

        return _origFireBase(self, ...)
    end
end

--// manipulation hook removed

Settings = {
    Hemp = {
        Enabled = false,
        Color = Color3.fromRGB(0, 255, 0),
        MaxDistance = 300
    },

    iron = {
        Enabled = false,
        Color = Color3.fromRGB(200, 200, 200),
        MaxDistance = 500
    },

    stone = {
        Enabled = false,
        Color = Color3.fromRGB(150, 150, 150),
        MaxDistance = 450
    },

    sulfur = {
        Enabled = false,
        Color = Color3.fromRGB(255, 200, 0),
        MaxDistance = 400
    }
}

local Configuration = {
    Visuals = {
        PlayerArmorInfoWindow = false
    }
}

--//// STAFF LIST MODULE

local StaffListFrame = nil --// exposed for toggle

do
    local _players = game:GetService("Players")
    local _lp = _players.LocalPlayer
    local TextService = game:GetService("TextService")

    local GROUP_ID = 15631191
    local HIGH_ROLES = { Admin = true, ["Admin+"] = true, Bob = true }
    local detected = {}
    local staffLabels = {}

    local StaffList = Instance.new("Frame")
    StaffList.Name = "AdminList"
    StaffList.Parent = Library.Holder.Instance
    StaffList.AnchorPoint = Vector2.new(0, 0.5)
    StaffList.Position = UDim2.new(0, 12, 0.5, 105) 
    StaffList.Size = UDim2.new(0, 116, 0, 32)
    StaffList.BackgroundColor3 = Library.Theme["Background 2"] or Library.Theme.Background
    StaffList.BorderColor3 = Color3.fromRGB(0, 0, 0)
    StaffList.BorderSizePixel = 0
    StaffList.Visible = false  --// hidden by default, toggled via UI
    StaffListFrame = StaffList
    
    local dragging = false
    local dragstart, startPos
    
    StaffList.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragstart = input.Position
            startPos = StaffList.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragstart
            StaffList.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    
    local Liner = Instance.new("Frame")
    Liner.Parent = StaffList
    Liner.Position = UDim2.new(0, -9, 0, -9)
    Liner.Size = UDim2.new(1, 18, 0, 2)
    Liner.BorderSizePixel = 0
    Liner.BackgroundColor3 = Library.Theme.Accent
    
    local Glow = Instance.new("ImageLabel")
    Glow.Parent = Liner
    Glow.ImageColor3 = Library.Theme.Accent
    Glow.ScaleType = Enum.ScaleType.Slice
    Glow.ImageTransparency = 0.5
    Glow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Glow.BackgroundColor3 = Library.Theme.Accent
    Glow.Size = UDim2.new(0, 113, 1, 8)
    Glow.AnchorPoint = Vector2.new(0.5, 0.5)
    Glow.Image = "rbxassetid://18245826428"
    Glow.BackgroundTransparency = 1
    Glow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Glow.ZIndex = 2
    Glow.BorderSizePixel = 0
    Glow.SliceCenter = Rect.new(Vector2.new(21, 21), Vector2.new(79, 79))
    
    local Title = Instance.new("TextLabel")
    Title.Parent = StaffList
    Title.FontFace = Library.Font
    Title.TextColor3 = Library.Theme.Text
    Title.Text = "Admin Online"
    Title.Size = UDim2.new(0, 0, 0, 15)
    Title.BackgroundTransparency = 1
    Title.BorderSizePixel = 0
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.AutomaticSize = Enum.AutomaticSize.X
    Title.TextSize = 14
    
    local Liner2 = Instance.new("Frame")
    Liner2.Parent = StaffList
    Liner2.Position = UDim2.new(0, 0, 0, 21)
    Liner2.Size = UDim2.new(1, 0, 0, 1)
    Liner2.BorderSizePixel = 0
    Liner2.BackgroundColor3 = Library.Theme.Border
    
    local Content = Instance.new("Frame")
    Content.Parent = StaffList
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 0, 0, 28)
    Content.Size = UDim2.new(1, 0, 0, 0)
    Content.AutomaticSize = Enum.AutomaticSize.Y
    
    local contentLayout = Instance.new("UIListLayout")
    contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    contentLayout.Padding = UDim.new(0, 4)
    contentLayout.Parent = Content
    
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 9)
    padding.PaddingBottom = UDim.new(0, 18)
    padding.PaddingRight = UDim.new(0, 9)
    padding.PaddingLeft = UDim.new(0, 9)
    padding.Parent = StaffList
    
    local outlineStroke = Instance.new("UIStroke")
    outlineStroke.Color = Library.Theme.Border
    outlineStroke.Thickness = 1
    outlineStroke.LineJoinMode = Enum.LineJoinMode.Miter
    outlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    outlineStroke.Parent = StaffList
    
    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Parent = Content
    StatusLabel.FontFace = Library.Font
    StatusLabel.TextColor3 = Library.Theme.Text
    StatusLabel.Text = "0 admin online"
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Size = UDim2.new(0, 0, 0, 15)
    StatusLabel.AutomaticSize = Enum.AutomaticSize.X
    StatusLabel.TextSize = 14
    StatusLabel.TextTransparency = 0.4
    
    local function create(player, role)
        local label = Instance.new("TextLabel")
        label.Parent = Content
        label.FontFace = Library.Font
        label.TextColor3 = Library.Theme.Text
        label.Text = player.Name .. " [" .. role .. "]"
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(0, 0, 0, 15)
        label.AutomaticSize = Enum.AutomaticSize.X
        label.TextSize = 14
        label.TextTransparency = 0.4
        
        return label
    end
    
    local function measureText(text)
        local ok, size = pcall(function() return TextService:GetTextSize(text, 14, Library.Font, Vector2.new(1000, 1000)) end)
        if ok then return size.X end
        return 116
    end

    local function update()
        local count = 0
        for _ in pairs(detected) do count = count + 1 end
        
        StatusLabel.Visible = (count == 0)
        
        local maxW = math.max(measureText(Title.Text), measureText(StatusLabel.Text))
        for _, label in pairs(staffLabels) do
            maxW = math.max(maxW, measureText(label.Text))
        end
        local boxW = maxW + 18  --// 9px padding each side
        
        local contentH
        if count == 0 then
            contentH = 15  --// status label height
        else
            contentH = (count * 19) - 4  --// rows minus final gap
        end
        local boxH = 28 + contentH + 22  --// content offset + content + bottom padding
        StaffList.Size = UDim2.new(0, boxW, 0, boxH)
    end
    
    local function checkPlayer(p)
        if p == _lp then return end
        local success, role = pcall(function() return p:GetRoleInGroup(GROUP_ID) end)
        if success and HIGH_ROLES[role] then
            if not detected[p] then
                detected[p] = role
                local label = create(p, role)
                staffLabels[p] = label
                update()
            end
        end
    end
    
    local function removePlayer(p)
        if detected[p] then
            detected[p] = nil
            if staffLabels[p] then
                staffLabels[p]:Destroy()
                staffLabels[p] = nil
            end
            update()
        end
    end
    
    for _, p in ipairs(_players:GetPlayers()) do
        task.spawn(checkPlayer, p)
    end
    
    _players.PlayerAdded:Connect(checkPlayer)
    _players.PlayerRemoving:Connect(removePlayer)
    
    update()
end

gigaesp = false

ESP_FOLDER = Instance.new("Folder")
ESP_FOLDER.Name = "ExplosionESP"
ESP_FOLDER.Parent = game:GetService("CoreGui")

explosion_cache = {}

LIFETIME = 20

function createESP(explosion)
	if explosion_cache[explosion] then return end
    if not flags["BoomNigar"] then return end
	local anchor = Instance.new("Part")
	anchor.Size = Vector3.new(0.1, 0.1, 0.1)
	anchor.Anchored = true
	anchor.CanCollide = false
	anchor.Transparency = 1
	anchor.Name = "ExplosionAnchor"
	anchor.CFrame = CFrame.new(explosion.Position)
	anchor.Parent = workspace

	local billboard = Instance.new("BillboardGui")
	billboard.AlwaysOnTop = true
	billboard.Size = UDim2.fromOffset(120, 40)
	billboard.Adornee = anchor
	billboard.Parent = ESP_FOLDER

	local label = Instance.new("TextLabel")
	label.Size = UDim2.fromScale(1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.Font = Enum.Font.SourceSansBold
	label.TextScaled = true
	label.TextColor3 = flags["giganigacolar"].Color
	label.Parent = billboard

	local start_time = tick()

	local conn
	conn = run_service.RenderStepped:Connect(function()
		if tick() - start_time >= LIFETIME then
			conn:Disconnect()
			billboard:Destroy()
			anchor:Destroy()
			explosion_cache[explosion] = nil
			return
		end

		local char = local_player.Character
		local hrp = char and char:FindFirstChild("HumanoidRootPart")
		if hrp then
			label.Text = ("Explosion\n%dm"):format(
				(hrp.Position - anchor.Position).Magnitude
			)
		end
	end)

	explosion_cache[explosion] = true
end

workspace.DescendantAdded:Connect(function(inst)
	if inst:IsA("Explosion") then
		createESP(inst)
	end
end)

for _, inst in ipairs(workspace:GetDescendants()) do
	if inst:IsA("Explosion") then
		createESP(inst)
	end
end


--// no footsteps ass
local NoFootsteps = {
    Enabled = false,
    OldVolumes = setmetatable({}, { __mode = "k" })
}

function NoFootsteps:MuteSound(sound)
    if not self.Enabled then return end
    if not sound:IsA("Sound") then return end

    if self.OldVolumes[sound] == nil then
        self.OldVolumes[sound] = sound.Volume
    end

    sound.Volume = 0
    sound:Stop()
end

function NoFootsteps:MuteFootstepFolder()
    if not self.Enabled then return end

    local folder = SoundService:FindFirstChild("FootstepSounds")
    if not folder then return end

    for _, obj in ipairs(folder:GetDescendants()) do
        if obj:IsA("Sound") then
            self:MuteSound(obj)
        end
    end
end

function NoFootsteps:MuteCharacter(char)
    if not self.Enabled then return end

    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    for _, obj in ipairs(root:GetChildren()) do
        if obj:IsA("Sound") then
            self:MuteSound(obj)
        end
    end
end

function NoFootsteps:Set(state)
    self.Enabled = state == true

    if self.Enabled then
        self:MuteFootstepFolder()

        if local_player.Character then
            self:MuteCharacter(local_player.Character)
        end
    else
        for sound, oldVolume in pairs(self.OldVolumes) do
            if sound and sound.Parent and sound:IsA("Sound") then
                sound.Volume = oldVolume
            end
        end

        table.clear(self.OldVolumes)
    end
end

run_service.Heartbeat:Connect(function()
    if not NoFootsteps.Enabled then return end

    NoFootsteps:MuteFootstepFolder()

    if local_player.Character then
        NoFootsteps:MuteCharacter(local_player.Character)
    end
end)

local_player.CharacterAdded:Connect(function(char)
    task.wait(1)
    NoFootsteps:MuteCharacter(char)
end)

dodido = false

nigarzzz = nil

--// ZonePlus hookmetamethod REMOVED

--// ESP START
local espLibrary = {
    instances = {},
    espCache = {},
    chamsCache = {},
    objectCache = {},
    conns = {},
    whitelist = {}, 
    blacklist = {}, 
    options = {
        enabled = false,
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
espLibrary.__index = espLibrary;

local getService = game.GetService;
local instanceNew = Instance.new;
local drawingNew = Drawing.new;
local vector2New = Vector2.new;
local vector3New = Vector3.new;
local cframeNew = CFrame.new;
local color3New = Color3.new;
local raycastParamsNew = RaycastParams.new;
local abs = math.abs;
local tan = math.tan;
local rad = math.rad;
local clamp = math.clamp;
local floor = math.floor;
local find = table.find;
local insert = table.insert;
local findFirstChild = game.FindFirstChild;
local findFirstChildOfClass = game.FindFirstChildOfClass;
local getChildren = game.GetChildren;
local getDescendants = game.GetDescendants;
local isA = workspace.IsA;
local raycast = workspace.Raycast;
local emptyCFrame = cframeNew();
local pointToObjectSpace = emptyCFrame.PointToObjectSpace;
local getComponents = emptyCFrame.GetComponents;
local cross = vector3New().Cross;
local inf = 1 / 0;

local workspace = getService(game, "Workspace");
local runService = getService(game, "RunService");
local players = getService(game, "Players");
local coreGui = getService(game, "CoreGui");
userInputService = getService(game, "UserInputService");

currentCamera = workspace.CurrentCamera;
localPlayer = players.LocalPlayer;
screenGui = instanceNew("ScreenGui", coreGui);
local lastFov, lastScale;

local wtvp = currentCamera.WorldToViewportPoint;

function isDrawing(type)
    return type == "Square" or type == "Text" or type == "Triangle" or type == "Image" or type == "Line" or type == "Circle";
end

function create(type, properties)
    local drawing = isDrawing(type);
    local object = drawing and drawingNew(type) or instanceNew(type);

    if (properties) then
        for i,v in next, properties do
            object[i] = v;
        end
    end

    if (not drawing) then
        insert(espLibrary.instances, object);
    end

    return object;
end

function worldToViewportPoint(position)
    local screenPosition, onScreen = wtvp(currentCamera, position);
    return vector2New(screenPosition.X, screenPosition.Y), onScreen, screenPosition.Z;
end

function round(number)
    return typeof(number) == "Vector2" and vector2New(round(number.X), round(number.Y)) or floor(number);
end

function espLibrary.getTeam(player)
    local team = player.Team;
    return team, player.TeamColor.Color;
end

function espLibrary.getCharacter(player)
    local character = player.Character
    if not character then return nil, nil end
    
    local torso = character:FindFirstChild("HumanoidRootPart")
    
    if not torso then
        torso = character:FindFirstChild("UpperTorso")
    end
    
    if not torso then
        torso = character:FindFirstChild("Torso")
    end
    
    return character, torso
end

function espLibrary.getTool(player)
    local character = player.Character;
    if not character then return "None" end
    
    local tool = findFirstChildOfClass(character, "Tool")
    return tool and tostring(tool) or "None"
end

function espLibrary.getBoundingBox(character, torso)
    if (espLibrary.options.boundingBox) then
        local minX, minY, minZ = inf, inf, inf;
        local maxX, maxY, maxZ = -inf, -inf, -inf;

        for _, part in next, espLibrary.options.boundingBoxDescending and getDescendants(character) or getChildren(character) do
            if (isA(part, "BasePart") and not find(espLibrary.options.excludedPartNames, part.Name)) then
                local size = part.Size;
                local sizeX, sizeY, sizeZ = size.X, size.Y, size.Z;

                local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = getComponents(part.CFrame);

                local wiseX = 0.5 * (abs(r00) * sizeX + abs(r01) * sizeY + abs(r02) * sizeZ);
                local wiseY = 0.5 * (abs(r10) * sizeX + abs(r11) * sizeY + abs(r12) * sizeZ);
                local wiseZ = 0.5 * (abs(r20) * sizeX + abs(r21) * sizeY + abs(r22) * sizeZ);

                minX = minX > x - wiseX and x - wiseX or minX;
                minY = minY > y - wiseY and y - wiseY or minY;
                minZ = minZ > z - wiseZ and z - wiseZ or minZ;

                maxX = maxX < x + wiseX and x + wiseX or maxX;
                maxY = maxY < y + wiseY and y + wiseY or maxY;
                maxZ = maxZ < z + wiseZ and z + wiseZ or maxZ;
            end
        end

        local oMin, oMax = vector3New(minX, minY, minZ), vector3New(maxX, maxY, maxZ);
        return (oMax + oMin) * 0.5, oMax - oMin;
    else
        return torso.Position, vector2New(espLibrary.options.scaleFactorX, espLibrary.options.scaleFactorY);
    end
end

function espLibrary.getScaleFactor(fov, depth)
    if (fov ~= lastFov) then
        lastScale = tan(rad(fov * 0.5)) * 2;
        lastFov = fov;
    end

    return 1 / (depth * lastScale) * 1000;
end

function espLibrary.getBoxData(position, size)
    local torsoPosition, onScreen, depth = worldToViewportPoint(position);
    local scaleFactor = espLibrary.getScaleFactor(currentCamera.FieldOfView, depth);

    local clampX = clamp(size.X, espLibrary.options.minScaleFactorX, espLibrary.options.maxScaleFactorX);
    local clampY = clamp(size.Y, espLibrary.options.minScaleFactorY, espLibrary.options.maxScaleFactorY);
    local size = round(vector2New(clampX * scaleFactor, clampY * scaleFactor));

    return onScreen, size, round(vector2New(torsoPosition.X - (size.X * 0.5), torsoPosition.Y - (size.Y * 0.5))), torsoPosition;
end

function espLibrary.getHealth(player, character)
    local humanoid = findFirstChild(character, "Humanoid");

    if (humanoid) then
        return math.floor(humanoid.Health), humanoid.MaxHealth;
    end

    return 100, 100;
end

local _esp_vis_params = nil
function espLibrary.visibleCheck(character, position)
    if not _esp_vis_params then
        _esp_vis_params = raycastParamsNew()
        _esp_vis_params.FilterType = Enum.RaycastFilterType.Blacklist
        _esp_vis_params.IgnoreWater = true
    end

    local localChar = espLibrary.getCharacter(localPlayer)
    _esp_vis_params.FilterDescendantsInstances = { localChar, currentCamera, character }

    local origin = currentCamera.CFrame.Position
    return (not raycast(workspace, origin, position - origin, _esp_vis_params))
end

function espLibrary.addEsp(player)
    if (player == localPlayer) then
        return
    end

    local objects = {
        arrow = create("Triangle", {
            Thickness = 1,
        }),
        arrowOutline = create("Triangle", {
            Thickness = 1,
        }),
        distanceText = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        tool = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        top = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        healthText = create("Text", {
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        boxFill = create("Square", {
            Thickness = 1,
            Filled = true,
        }),
        boxOutline = create("Square", {
            Thickness = 3,
            Color = color3New()
        }),
        box = create("Square", {
            Thickness = 1
        }),
        healthBarOutline = create("Square", {
            Thickness = 1,
            Color = color3New(),
            Filled = true
        }),
        healthBar = create("Square", {
            Thickness = 1,
            Filled = true
        }),
        lineoutline = create("Line", {Thickness = 3}),
        line = create("Line", {Thickness = 1}),
    };

    espLibrary.espCache[player] = objects;

    local character = player.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.Died:Connect(function()
                for _, object in next, objects do
                    object.Visible = false
                end
            end)
        end
    end

    player.CharacterAdded:Connect(function(char)
        local humanoid = char:WaitForChild("Humanoid", 5)
        if humanoid then
            humanoid.Died:Connect(function()
                for _, object in next, objects do
                    object.Visible = false
                end
            end)
        end
    end)
end

function espLibrary.removeEsp(player)
    local espCache = espLibrary.espCache[player];

    if (espCache) then
        espLibrary.espCache[player] = nil;

        for index, object in next, espCache do
            espCache[index] = nil;
            object:Remove();
        end
    end
end

function espLibrary.addChams(player)
    if (player == localPlayer) then
        return
    end

    espLibrary.chamsCache[player] = create("Highlight", {
        Parent = screenGui,
    });
end

function espLibrary.removeChams(player)
    local highlight = espLibrary.chamsCache[player];

    if (highlight) then
        espLibrary.chamsCache[player] = nil;
        highlight:Destroy();
    end
end

function espLibrary.addObject(object, options)
    espLibrary.objectCache[object] = {
        options = options,
        text = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        })
    };
end

function espLibrary.removeObject(object)
    local cache = espLibrary.objectCache[object];

    if (cache) then
        espLibrary.objectCache[object] = nil;
        cache.text:Remove();
    end
end

function espLibrary:AddObjectEsp(object, defaultOptions)
    assert(object and object.Parent, "invalid object passed");

    local options = defaultOptions or {};

    options.enabled = options.enabled or true;
    options.limitDistance = options.limitDistance or false;
    options.maxDistance = options.maxDistance or false;
    options.visibleOnly = options.visibleOnly or false;
    options.color = options.color or color3New(1, 1, 1);
    options.transparency = options.transparency or 1;
    options.text = options.text or object.Name;
    options.font = options.font or 2;
    options.fontSize = options.fontSize or 13;

    self.addObject(object, options);

    insert(self.conns, object.Parent.ChildRemoved:Connect(function(child)
        if (child == object) then
            self.removeObject(child);
        end
    end));

    return options;
end

function espLibrary:Unload()
    for _, connection in next, self.conns do
        connection:Disconnect();
    end

    for _, player in next, players:GetPlayers() do
        self.removeEsp(player);
        self.removeChams(player);
    end

    for object, _ in next, self.objectCache do
        self.removeObject(object);
    end

    for _, object in next, self.instances do
        object:Destroy();
    end

    screenGui:Destroy();
    runService:UnbindFromRenderStep("esp_rendering");
end

function espLibrary:Load(renderValue)
    insert(self.conns, players.PlayerAdded:Connect(function(player)
        self.addEsp(player);
        self.addChams(player);
    end));

    insert(self.conns, players.PlayerRemoving:Connect(function(player)
        self.removeEsp(player);
        self.removeChams(player);
    end));

    for _, player in next, players:GetPlayers() do
        self.addEsp(player);
        self.addChams(player);
    end

    runService:BindToRenderStep("esp_rendering", renderValue or (Enum.RenderPriority.Camera.Value + 1), function()
        local opts = self.options;
        local boxSizeConst = Vector3.new(5, 6.5);
        local viewport = currentCamera.ViewportSize;
        for player, objects in next, self.espCache do
            local character, torso = self.getCharacter(player);

            if (character and torso) then
                local humanoid = character:FindFirstChild("Humanoid")
                if not humanoid or humanoid.Health <= 0 then
                    for _, object in next, objects do
                        object.Visible = false
                    end
                    continue
                end

                local onScreen, size, position, torsoPosition = self.getBoxData(torso.Position, boxSizeConst);
                local distanceInStuds = (currentCamera.CFrame.Position - torso.Position).Magnitude;
                local distanceInMeters = distanceInStuds / 3.28084;
                local canShow, enabled = onScreen and (size and position), opts.enabled;
                local team, teamColor = self.getTeam(player);
                local color = opts.teamColor and teamColor or nil;
                local tool = self.getTool(player)

                if opts.useCustomTeamColor and opts.teamColor then
                    color = opts.customteamColor
                end

                if (opts.fillColor ~= nil) then
                    color = opts.fillColor;
                end

                if (find(self.whitelist, player.Name)) then
                    color = opts.whitelistColor;
                end

                if (find(self.blacklist, player.Name)) then
                    enabled = false;
                end

                if (opts.limitDistance and distanceInStuds > opts.maxDistance) then
                    enabled = false;
                end

                if (opts.visibleOnly and not self.visibleCheck(character, torso.Position)) then
                    enabled = false;
                end

                if (opts.teamCheck and (team == self.getTeam(localPlayer))) then
                    enabled = false;
                end

                local viewportSize = currentCamera.ViewportSize;

                local screenCenter = vector2New(viewportSize.X / 2, viewportSize.Y / 2);
                local objectSpacePoint = (pointToObjectSpace(currentCamera.CFrame, torso.Position) * vector3New(1, 0, 1)).Unit;
                local crossVector = cross(objectSpacePoint, vector3New(0, 1, 1));
                local rightVector = vector2New(crossVector.X, crossVector.Z);

                local arrowRadius, arrowSize = opts.outOfViewArrowsRadius, opts.outOfViewArrowsSize;
                local arrowPosition = screenCenter + vector2New(objectSpacePoint.X, objectSpacePoint.Z) * arrowRadius;
                local arrowDirection = (arrowPosition - screenCenter).Unit;

                local pointA, pointB, pointC = arrowPosition, screenCenter + arrowDirection * (arrowRadius - arrowSize) + rightVector * arrowSize, screenCenter + arrowDirection * (arrowRadius - arrowSize) + -rightVector * arrowSize;

                local health, maxHealth = self.getHealth(player, character);
                local healthBarSize = round(vector2New(opts.healthBarsSize, -(size.Y * (health / maxHealth))));
                local healthBarPosition = round(vector2New(position.X - (3 + healthBarSize.X), position.Y + size.Y));

                local origin = opts.tracerOrigin;
                local show = canShow and enabled;

                objects.arrow.Visible = (not canShow and enabled) and opts.outOfViewArrows;
                objects.arrow.Filled = opts.outOfViewArrowsFilled;
                objects.arrow.Transparency = opts.outOfViewArrowsTransparency;
                objects.arrow.Color = color or opts.outOfViewArrowsColor;
                objects.arrow.PointA = pointA;
                objects.arrow.PointB = pointB;
                objects.arrow.PointC = pointC;

                objects.arrowOutline.Visible = (not canShow and enabled) and opts.outOfViewArrowsOutline;
                objects.arrowOutline.Filled = opts.outOfViewArrowsOutlineFilled;
                objects.arrowOutline.Transparency = opts.outOfViewArrowsOutlineTransparency;
                objects.arrowOutline.Color = color or opts.outOfViewArrowsOutlineColor;
                objects.arrowOutline.PointA = pointA;
                objects.arrowOutline.PointB = pointB;
                objects.arrowOutline.PointC = pointC;

                local currentYOffset = 0
                
                if show and opts.names then
                    objects.top.Visible = true
                    objects.top.Font = opts.font;
                    objects.top.Size = opts.fontSize;
                    objects.top.Transparency = opts.nameTransparency;
                    objects.top.Color = color or opts.nameColor;
                    objects.top.Text = player.Name;
                    objects.top.Position = round(position + vector2New(size.X * 0.5, -(objects.top.TextBounds.Y + 2)));
                    currentYOffset = objects.top.TextBounds.Y + 2
                else
                    objects.top.Visible = false
                end

                objects.healthText.Visible = show and opts.healthText;
                if objects.healthText.Visible then
                    objects.healthText.Font = opts.font;
                    objects.healthText.Size = opts.fontSize;
                    objects.healthText.Transparency = opts.healthTextTransparency;
                    objects.healthText.Color = color or opts.healthTextColor;
                    objects.healthText.Text = health .. opts.healthTextSuffix;
                    --// Position on the right side of the box
                    objects.healthText.Position = round(position + vector2New(size.X + 3, -3));
                end

                local hasTool = opts.tool and tool ~= "None"
                objects.tool.Visible = show and hasTool;
                if objects.tool.Visible then
                    objects.tool.Font = opts.font;
                    objects.tool.Size = opts.fontSize;
                    objects.tool.Transparency = opts.toolTransparency;
                    objects.tool.Color = color or opts.toolColor;
                    objects.tool.Text = tostring(tool);
                    objects.tool.Position = round(position + vector2New(size.X * 0.5, size.Y + 1));
                end

                objects.distanceText.Visible = show and opts.distance;
                if objects.distanceText.Visible then
                    objects.distanceText.Font = opts.font;
                    objects.distanceText.Size = opts.fontSize;
                    objects.distanceText.Transparency = opts.distanceTransparency;
                    objects.distanceText.Color = color or opts.distanceColor;
                    local formattedDistance = string.format("%.0f", distanceInMeters)
                    objects.distanceText.Text = formattedDistance .. opts.distanceSuffix;
                    
                    local yOffset
                    if hasTool and objects.tool.Visible then
                        local toolBoundsY = objects.tool.TextBounds.Y
                        if toolBoundsY == 0 then toolBoundsY = opts.fontSize + 2 end
                        yOffset = size.Y + 1 + toolBoundsY + 4
                    else
                        yOffset = size.Y + 4
                    end
                    objects.distanceText.Position = round(position + vector2New(size.X * 0.5, yOffset));
                end

                objects.box.Visible = show and opts.boxes;
                objects.box.Color = color or opts.boxesColor;
                objects.box.Transparency = opts.boxesTransparency;
                objects.box.Size = size;
                objects.box.Position = position;

                objects.boxOutline.Visible = show and opts.boxes;
                objects.boxOutline.Transparency = opts.boxesTransparency;
                objects.boxOutline.Size = size;
                objects.boxOutline.Position = position;

                objects.boxFill.Visible = show and opts.boxFill;
                objects.boxFill.Color = color or opts.boxFillColor;
                objects.boxFill.Transparency = opts.boxFillTransparency;
                objects.boxFill.Size = size;
                objects.boxFill.Position = position;

                objects.healthBar.Visible = show and opts.healthBars;
                objects.healthBar.Color = opts.healthBarsColor;
                objects.healthBar.Transparency = opts.healthBarsTransparency;
                objects.healthBar.Size = healthBarSize;
                objects.healthBar.Position = healthBarPosition;

                objects.healthBarOutline.Visible = show and opts.healthBars;
                objects.healthBarOutline.Transparency = opts.healthBarsTransparency;
                objects.healthBarOutline.Size = round(vector2New(healthBarSize.X, -size.Y) + vector2New(2, -2));
                objects.healthBarOutline.Position = healthBarPosition - vector2New(1, -1);

                objects.line.Visible = show and opts.tracers;
                objects.line.Color = color or opts.tracerColor;
                objects.line.Transparency = opts.tracerTransparency;
                objects.line.From =
                    origin == "Mouse" and userInputService:GetMouseLocation() or
                    origin == "Top" and vector2New(viewportSize.X * 0.5, 0) or
                    origin == "Bottom" and vector2New(viewportSize.X * 0.5, viewportSize.Y);
                objects.line.To = torsoPosition;
                objects.lineoutline.Visible = show and opts.tracers;
                objects.lineoutline.Color = Color3.new(0,0,0)
                objects.lineoutline.Transparency = opts.tracerTransparency;
                objects.lineoutline.From =
                    origin == "Mouse" and userInputService:GetMouseLocation() or
                    origin == "Top" and vector2New(viewportSize.X * 0.5, 0) or
                    origin == "Bottom" and vector2New(viewportSize.X * 0.5, viewportSize.Y);
                    objects.lineoutline.To = torsoPosition;
            else
                local objects = objects
                for objectName, object in next, objects do
                    object.Visible = false
                end
            end
        end

        for player, highlight in next, self.chamsCache do
            local character, torso = self.getCharacter(player);

            if (character and torso) then
                local distance = (currentCamera.CFrame.Position - torso.Position).Magnitude;
                local canShow = opts.enabled and opts.chams;
                local team, teamColor = self.getTeam(player);
                local color = opts.teamColor and teamColor or nil;

                if opts.useCustomTeamColor and opts.teamColor then
                    color = opts.customteamColor
                end

                if (opts.fillColor ~= nil) then
                    color = opts.fillColor;
                end

                if (find(self.whitelist, player.Name)) then
                    color = opts.whitelistColor;
                end

                if (find(self.blacklist, player.Name)) then
                    canShow = false;
                end

                if (opts.limitDistance and distance > opts.maxDistance) then
                    canShow = false;
                end

                if (opts.teamCheck and (team == self.getTeam(localPlayer))) then
                    canShow = false;
                end

                highlight.Enabled = canShow;
                highlight.DepthMode = opts.visibleOnly and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop;
                highlight.Adornee = character;
                highlight.FillColor = color or opts.chamsFillColor;
                highlight.FillTransparency = opts.chamsFillTransparency;
                highlight.OutlineColor = color or opts.chamsOutlineColor;
                highlight.OutlineTransparency = opts.chamsOutlineTransparency;
            end
        end

        for object, cache in next, self.objectCache do
            local partPosition = vector3New();

            if (object:IsA("BasePart")) then
                partPosition = object.Position;
            elseif (object:IsA("Model")) then
                partPosition = self.getBoundingBox(object);
            end

            local distance = (currentCamera.CFrame.Position - partPosition).Magnitude;
            local screenPosition, onScreen = worldToViewportPoint(partPosition);
            local canShow = cache.options.enabled and onScreen;

            if (opts.limitDistance and distance > opts.maxDistance) then
                canShow = false;
            end

            if (opts.visibleOnly and not self.visibleCheck(object, partPosition)) then
                canShow = false;
            end

            cache.text.Visible = canShow;
            cache.text.Font = cache.options.font;
            cache.text.Size = cache.options.fontSize;
            cache.text.Transparency = cache.options.transparency;
            cache.text.Color = cache.options.color;
            cache.text.Text = cache.options.text;
            cache.text.Position = round(screenPosition);
        end
    end);
end
espLibrary:Load()
--// ESP END

--// UI
local Window    = Library:Window({ Logo = '132447680232071', FadeTime = 0.3 })
local Watermark = Library:Watermark('dopamine.wtf | discord.gg/hZAj73bwnv')
local KeybindList = Library:KeybindList()

--// PAGES
local CombatPage  = Window:Page({ Name = 'Combat',  Columns = 2 })
local VisualsPage = Window:Page({ Name = 'Visuals', Columns = 2 })
local MiscPage    = Window:Page({ Name = 'Misc',    Columns = 2 })
local SettingsPage = Library:CreateSettingsPage(Window, KeybindList, Watermark)

--// ===================== COMBAT PAGE =====================
--// Section 1: Aimbot
local AimbotSub = CombatPage

do
    local Main = AimbotSub:Section({ Name = 'Aimbot', Side = 1 })
    Main:Toggle({ Name = 'Aimbot', Flag = 'Enable Aimbot', Default = false, Callback = function(s) flags['Enable Aimbot'] = s end }):Keybind({ Flag = 'Aimbot Keybind', Mode = 'Hold', Callback = function(s) flags['Aimbot Keybind'] = type(s) == "table" and s or {active = s == true} end })
    Main:Toggle({ Name = 'Silent Aim', Flag = 'Silent Aim', Default = false, Callback = function(s)
        flags['Silent Aim'] = s
        if not flags['Silent Aim Keybind'] then getgenv().silent = s end
    end }):Keybind({ Flag = 'Silent Aim Keybind', Mode = 'Hold', Callback = function(s)
        flags['Silent Aim Keybind'] = type(s) == "table" and s or {active = s == true}
    end })
    Main:Slider({ Name = 'Aimbot Speed', Flag = 'Aimbot Speed', Min = 0.05, Max = 1, Default = 0.5, Decimals = 0.01, Suffix = '', Callback = function(s) flags['Aimbot Speed'] = s end })
    Main:Slider({ Name = 'Max Distance', Flag = 'Aimbot Max Distance', Min = 100, Max = 2500, Default = 500, Decimals = 1, Suffix = '', Callback = function(s) flags['Aimbot Max Distance'] = s end })
    Main:Dropdown({ Name = 'Aimbone', Flag = 'Aimbot Bone', Items = { 'Head', 'Torso', 'HumanoidRootPart', 'Closest Bone' }, Default = 'Head', Callback = function(s) flags['Aimbot Bone'] = s end })
    Main:Toggle({ Name = 'Team Check', Flag = 'Friendly Check', Default = false, Callback = function(s) flags['Friendly Check'] = s end })
    Main:Toggle({ Name = 'Visible Check', Flag = 'Visible Check', Default = false, Callback = function(s) flags['Visible Check'] = s end })

    --// Gun Mods (moved from Misc)
    local Guns = AimbotSub:Section({ Name = 'Gun Mods', Side = 2 })
    Guns:Toggle({ Name = 'No Recoil', Flag = 'NoRecoil', Default = false, Callback = function(s) flags['NoRecoil'] = s; if s then applyRecoilHook() else removeRecoilHook() end end })
    Guns:Toggle({ Name = 'ForceShoot', Flag = 'ForceShoot', Default = false, Callback = function(s) flags['ForceShoot'] = s; if s then applyHooks() else removeHooks() end end })
    Guns:Toggle({ Name = 'No Spread', Flag = 'No Spread', Default = false, Callback = function(s) flags['No Spread'] = s end })
    Guns:Toggle({ Name = 'No Gun Effects', Flag = 'No Gun Effects', Default = false, Callback = function(s) flags['No Gun Effects'] = s end })
    Guns:Toggle({ Name = 'Rapid Fire', Flag = 'gun firerate', Default = false, Callback = function(s) flags['gun firerate'] = s end })
    Guns:Slider({ Name = 'Rapid Fire Speed', Flag = 'rapid fire speed', Min = 1, Max = 10, Default = 3, Decimals = 0.1, Suffix = 'x', Callback = function(s) flags['rapid fire speed'] = s end })
    Guns:Toggle({ Name = 'Full Auto', Flag = 'gun auto', Default = false, Callback = function(s) flags['gun auto'] = s end })
end

--// Section 2: Aimbot Settings
local AimbotSettingsSub = CombatPage

do
    local Draw = AimbotSettingsSub:Section({ Name = 'Aimbot Settings', Side = 1 })
    Draw:Toggle({ Name = 'FOV Circle', Flag = 'Enable FOV', Default = false, Callback = function(s) flags['Enable FOV'] = s end }):Colorpicker({ Flag = 'FOV Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['FOV Accent'] = {Color=s, Transparency=0} end })
    Draw:Toggle({ Name = 'FOV Filled', Flag = 'FOV Filled', Default = false, Callback = function(s) flags['FOV Filled'] = s end }):Colorpicker({ Flag = 'FOV Fill Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['FOV Fill Accent'] = {Color=s, Transparency=0} end })
    Draw:Slider({ Name = 'FOV Fill Opacity', Flag = 'FOV Fill Opacity', Min = 0, Max = 100, Default = 50, Decimals = 1, Suffix = '%', Callback = function(s) flags['FOV Fill Opacity'] = s end })
    Draw:Slider({ Name = 'FOV Radius', Flag = 'FOV Radius', Min = 30, Max = 750, Default = 120, Decimals = 1, Suffix = 'px', Callback = function(s) flags['FOV Radius'] = s end })
    Draw:Toggle({ Name = 'Snaplines', Flag = 'Enable Snaplines', Default = false, Callback = function(s) flags['Enable Snaplines'] = s end }):Colorpicker({ Flag = 'Snaplines Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Snaplines Accent'] = {Color=s, Transparency=0} end })

    local MeleeMods = AimbotSettingsSub:Section({ Name = 'Melee Mods', Side = 2 })
    MeleeMods:Toggle({ Name = 'Melee Mods', Flag = 'MeleeMods', Default = false, Callback = function(s) flags['MeleeMods'] = s end })
    MeleeMods:Slider({ Name = 'Swing Speed', Flag = 'MeleeSwingSpeed', Min = 1, Max = 10, Default = 3, Decimals = 0.1, Suffix = 'x', Callback = function(s) flags['MeleeSwingSpeed'] = s end })
    MeleeMods:Slider({ Name = 'Swing Range', Flag = 'MeleeSwingRange', Min = 2, Max = 20, Default = 5, Decimals = 0.5, Suffix = '', Callback = function(s) flags['MeleeSwingRange'] = s end })
end

--// ===================== VISUALS PAGE =====================
--// Section 1: Player ESP
local PlayerESPSub = VisualsPage

do
    local Opt = PlayerESPSub:Section({ Name = 'Main Visuals', Side = 1 })
    Opt:Toggle({ Name = "Master Switch", Flag = "ESPEnabled", Callback = function(value) espLibrary.options.enabled = value end })
    Opt:Toggle({ Name = "Names", Flag = "ESPNames", Callback = function(value) espLibrary.options.names = value end }):Colorpicker({ Name = "Name Color", Flag = "ESPNameColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.nameColor = value end })
    Opt:Toggle({ Name = "Box", Flag = "ESPBoxes", Callback = function(value) espLibrary.options.boxes = value end }):Colorpicker({ Name = "Box Color", Flag = "ESPBoxColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.boxesColor = value end })
    Opt:Toggle({ Name = "Box Fill", Flag = "ESPBoxFill", Callback = function(value) espLibrary.options.boxFill = value end }):Colorpicker({ Name = "Fill Color", Flag = "ESPBoxFillColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.boxFillColor = value end })
    Opt:Toggle({ Name = "Health Bar", Flag = "ESPHealthBars", Callback = function(value) espLibrary.options.healthBars = value end }):Colorpicker({ Name = "Health Bar Color", Flag = "ESPHealthBarColor", Default = Color3.fromRGB(0, 222, 0), Callback = function(value) espLibrary.options.healthBarsColor = value end })
    Opt:Toggle({ Name = "Health Text", Flag = "ESPHealthText", Callback = function(value) espLibrary.options.healthText = value end }):Colorpicker({ Name = "Health Text Color", Flag = "ESPHealthTextColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.healthTextColor = value end })
    Opt:Toggle({ Name = "Distance", Flag = "ESPDistance", Callback = function(value) espLibrary.options.distance = value end }):Colorpicker({ Name = "Distance Color", Flag = "ESPDistanceColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.distanceColor = value end })
    Opt:Toggle({ Name = "Weapon", Flag = "ESPTool", Callback = function(value) espLibrary.options.tool = value end }):Colorpicker({ Name = "Tool Color", Flag = "ESPToolColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.toolColor = value end })
    Opt:Toggle({ Name = "Tracers", Flag = "ESPTracers", Callback = function(value) espLibrary.options.tracers = value end }):Colorpicker({ Name = "Tracer Color", Flag = "ESPTracerColor", Default = Color3.fromRGB(0, 191, 255), Callback = function(value) espLibrary.options.tracerColor = value end })
    Opt:Dropdown({ Name = "Tracer Origin", Flag = "ESPTracerOrigin", Items = {'Bottom', 'Top', 'Mouse'}, Callback = function(value) espLibrary.options.tracerOrigin = value end })

    local Oth = PlayerESPSub:Section({ Name = 'Visual Settings', Side = 2 })
    Oth:Toggle({ Name = "Visible Only ESP", Flag = "ESPVisibleOnly", Callback = function(value) espLibrary.options.visibleOnly = value end })
    Oth:Toggle({ Name = "Distance Limit", Flag = "ESPLimitDistance", Callback = function(value) espLibrary.options.limitDistance = value end })
    Oth:Slider({ Name = "Max Distance Amount", Flag = "ESPMaxDistance", Min = 100, Max = 5000, Default = 1000, Callback = function(value) espLibrary.options.maxDistance = value end })
    Oth:Toggle({ Name = 'Admin List', Flag = 'Admin', Default = false, Callback = function(s) flags['Admin'] = s; if StaffListFrame then StaffListFrame.Visible = s end end })
end

--// Section 2: Local Player
local LocalPlayerSub = VisualsPage

do
    local Self = LocalPlayerSub:Section({ Name = 'Local Player', Side = 1 })
    Self:Toggle({ Name = 'Gun Chams', Flag = 'Chamsi', Default = false, Callback = function(s) flags['Chamsi'] = s end }):Colorpicker({ Flag = 'Colarss', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Colarss'] = {Color=s,Transparency=0} end })
    Self:Toggle({ Name = 'Arm Chams', Flag = 'GunNiger', Default = false, Callback = function(s) flags['GunNiger'] = s end }):Colorpicker({ Flag = 'Colarss2', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Colarss2'] = {Color=s,Transparency=0} end })
    Self:Dropdown({ Name = 'Gun Chams Material', Flag = 'gunChamsMaterial', Items = { 'Neon', 'ForceField', 'Glass', 'SmoothPlastic' }, Default = 'Neon', Callback = function(s) flags['gunChamsMaterial'] = s end })
    Self:Dropdown({ Name = 'Arm Chams Material', Flag = 'gaymaterial', Items = { 'Neon', 'ForceField', 'Glass', 'SmoothPlastic' }, Default = 'Neon', Callback = function(s) flags['gaymaterial'] = s end })
    Self:Toggle({ Name = 'Bullet Tracers', Flag = 'Bullet Tracers', Default = false, Callback = function(s) flags['Bullet Tracers'] = s; trac = s end }):Colorpicker({ Flag = 'Tracer Color', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Tracer Color'] = {Color=s,Transparency=0} end })
    Self:Dropdown({ Name = 'Tracer Type', Flag = 'Bulat Type', Items = tracs, Default = tracs[1], Callback = function(s) flags['Bulat Type'] = s end })
    Self:Toggle({ Name = 'Hitmarkers', Flag = 'Hitmarkers', Default = false, Callback = function(s) flags['Hitmarkers'] = s; mark = s end }):Colorpicker({ Flag = 'HitmarkerColor', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['HitmarkerColor'] = {Color=s,Transparency=0} end })
    Self:Toggle({ Name = 'Hitlogs', Flag = 'Hitlogs', Default = false, Callback = function(s) flags['Hitlogs'] = s; niger = s end })
    Self:Toggle({ Name = 'Hitsounds', Flag = 'Hitsounds', Default = false, Callback = function(s) flags['Hitsounds'] = s end })
    Self:Dropdown({ Name = 'Sound Type', Flag = 'Hitsound Type', Items = sounds, Default = sounds[1], Callback = function(s) flags['Hitsound Type'] = s; selected_sound = s; newId = hit_sounds[s]; replaceSounds(rs); replaceSounds(local_player.Character) end })
    Self:Toggle({ Name = 'Reload Indicator', Flag = 'ReloadIndicator', Default = false, Callback = function(s) flags['ReloadIndicator'] = s end })
end

--// Section 3: World ESP
local WorldESPSub = VisualsPage

do
    local World = WorldESPSub:Section({ Name = 'World Modifications', Side = 1 })
    World:Toggle({ Name = 'No Grass', Flag = 'No Grass', Default = false, Callback = function(s) flags['No Grass'] = s; sethiddenproperty(Workspace:FindFirstChildOfClass('Terrain'), 'Decoration', not s) end })
    World:Toggle({ Name = 'No Fog', Flag = 'Enable No Fog', Default = false, Callback = function(s) flags['Enable No Fog'] = s end })
    World:Slider({ Name = 'Brightness', Flag = 'Lighting Brightness', Min = 0, Max = 12, Default = 2, Decimals = 0.1, Suffix = '', Callback = function(s) flags['Lighting Brightness'] = s; game:GetService('Lighting').Brightness = s end })
    World:Toggle({ Name = 'Fullbright', Flag = 'Enable Fullbright', Default = false, Callback = function(s) flags['Enable Fullbright'] = s; lighting.GlobalShadows = not s end })
    World:Toggle({ Name = 'Ambient', Flag = 'Enable Ambient', Default = false, Callback = function(s) flags['Enable Ambient'] = s end }):Colorpicker({ Flag = 'Ambient Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Ambient Accent'] = {Color=s,Transparency=0} end })
    World:Toggle({ Name = 'Outdoor Ambient', Flag = 'Enable Outdoor Ambient', Default = false, Callback = function(s) flags['Enable Outdoor Ambient'] = s end }):Colorpicker({ Flag = 'Outdoor Ambient Accent', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['Outdoor Ambient Accent'] = {Color=s,Transparency=0} end })
    World:Toggle({ Name = 'Skybox', Flag = 'Skybox Enabled', Default = false, Callback = function(s)
        flags['Skybox Enabled'] = s
        if not s then
            sky.SkyboxBk = originalSkybox.SkyboxBk; sky.SkyboxDn = originalSkybox.SkyboxDn
            sky.SkyboxFt = originalSkybox.SkyboxFt; sky.SkyboxLf = originalSkybox.SkyboxLf
            sky.SkyboxRt = originalSkybox.SkyboxRt; sky.SkyboxUp = originalSkybox.SkyboxUp
        end
    end })
    World:Dropdown({ Name = 'Skybox', Flag = 'Skyboxes', Items = skys, Default = skys[8], Callback = function(s) flags['Skyboxes'] = s; if flags['Skybox Enabled'] and skyboxes[s] then sky.SkyboxBk='rbxassetid://'..skyboxes[s][1]; sky.SkyboxDn='rbxassetid://'..skyboxes[s][2]; sky.SkyboxFt='rbxassetid://'..skyboxes[s][3]; sky.SkyboxLf='rbxassetid://'..skyboxes[s][4]; sky.SkyboxRt='rbxassetid://'..skyboxes[s][5]; sky.SkyboxUp='rbxassetid://'..skyboxes[s][6] end end })

    local Items = WorldESPSub:Section({ Name = 'World ESP', Side = 2 })
    Items:Toggle({ Name = 'World ESP', Flag = 'word', Default = false, Callback = function(s) flags['word'] = s end })
    Items:Toggle({ Name = 'Hemp', Flag = 'Hemp', Default = false, Callback = function(s) flags['Hemp'] = s; Settings.Hemp.Enabled = s end }):Colorpicker({ Name = 'Hemp Color', Flag = 'HempColor', Default = Color3.fromRGB(0, 255, 0), Callback = function(s) Settings.Hemp.Color = s end })
    Items:Slider({ Name = 'Hemp Distance', Flag = 'Disti', Min = 100, Max = 1000, Default = 300, Decimals = 1, Suffix = '', Callback = function(s) flags['Disti'] = s; Settings.Hemp.MaxDistance = s end })
    Items:Toggle({ Name = 'Stone', Flag = 'Stone', Default = false, Callback = function(s) flags['Stone'] = s; Settings.stone.Enabled = s end }):Colorpicker({ Name = 'Stone Color', Flag = 'StoneColor', Default = Color3.fromRGB(150, 150, 150), Callback = function(s) Settings.stone.Color = s end })
    Items:Slider({ Name = 'Stone Distance', Flag = 'StoneDist', Min = 100, Max = 1000, Default = 450, Decimals = 1, Suffix = '', Callback = function(s) flags['StoneDist'] = s; Settings.stone.MaxDistance = s end })
    Items:Toggle({ Name = 'Sulfur', Flag = 'Sulfur', Default = false, Callback = function(s) flags['Sulfur'] = s; Settings.sulfur.Enabled = s end }):Colorpicker({ Name = 'Sulfur Color', Flag = 'SulfurColor', Default = Color3.fromRGB(255, 200, 0), Callback = function(s) Settings.sulfur.Color = s end })
    Items:Slider({ Name = 'Sulfur Distance', Flag = 'SulfurDist', Min = 100, Max = 1000, Default = 400, Decimals = 1, Suffix = '', Callback = function(s) flags['SulfurDist'] = s; Settings.sulfur.MaxDistance = s end })
    Items:Toggle({ Name = 'Iron', Flag = 'Iron', Default = false, Callback = function(s) flags['Iron'] = s; Settings.iron.Enabled = s end }):Colorpicker({ Name = 'Iron Color', Flag = 'IronColor', Default = Color3.fromRGB(210, 129, 58), Callback = function(s) Settings.iron.Color = s end })
    Items:Slider({ Name = 'Iron Distance', Flag = 'IronDist', Min = 100, Max = 1000, Default = 500, Decimals = 1, Suffix = '', Callback = function(s) flags['IronDist'] = s; Settings.iron.MaxDistance = s end })
    Items:Toggle({ Name = 'Raid ESP', Flag = 'BoomNigar', Default = false, Callback = function(s) flags['BoomNigar'] = s end }):Colorpicker({ Flag = 'giganigacolar', Default = Color3.fromRGB(0, 191, 255), Callback = function(s) flags['giganigacolar'] = {Color=s,Transparency=0} end })
    Items:Slider({ Name = 'Raid Lifetime', Flag = 'lifelife', Min = 1, Max = 40, Default = 15, Decimals = 1, Suffix = '', Callback = function(s) flags['lifelife'] = s; LIFETIME = s end })
end

--// ===================== MISC PAGE =====================
--// Movement section (moved from Movement page)
local MovementSub = MiscPage

do
    local Mov = MovementSub:Section({ Name = 'Movement', Side = 2 })
    Mov:Toggle({ Name = 'Always Shoot', Flag = 'Always Grounded', Default = false, Callback = function(s) flags['Always Grounded'] = s end })
    Mov:Toggle({ Name = 'No Jump Cooldown', Flag = 'NoJumpi', Default = false, Callback = function(s) flags['NoJumpi'] = s end })
    Mov:Toggle({ Name = 'Always Sprint', Flag = 'Always Sprint', Default = false, Tooltip = 'may lag back/rubberband depending on sprint speed', Callback = function(s) flags['Always Sprint'] = s end })
    Mov:Slider({ Name = 'Sprint Speed', Flag = 'Sprint Speed', Min = 0, Max = 37, Default = 27, Decimals = 0.01, Suffix = '', Callback = function(s) flags['Sprint Speed'] = s end })
    Mov:Toggle({ Name = 'No Fall Damage', Flag = 'NoFallDamage', Default = false, Callback = function(s) flags['NoFallDamage'] = s end })
    Mov:Toggle({ Name = 'Silent Walk', Flag = 'nofoot', Default = false, Callback = function(s) flags['nofoot'] = s; NoFootsteps:Set(s) end })
    Mov:Toggle({ Name = 'Minicopter Fly', Flag = 'CopterFly', Default = false, Risk = 'risky', Callback = function(s) flags['CopterFly'] = s end })
    Mov:Slider({ Name = 'Fly Speed', Flag = 'CopterSpeed', Min = 10, Max = 100, Default = 80, Decimals = 1, Suffix = '', Callback = function(s) flags['CopterSpeed'] = s end })
end

--// Spinbot section (in Misc, right side under Movement)
local SpinbotSub = MiscPage

do
    local Spin = SpinbotSub:Section({ Name = 'Anti-Aim', Side = 2 })
    Spin:Toggle({ Name = 'Spinbot', Flag = 'Anti Aim', Default = false, Callback = function(s) flags['Anti Aim'] = s end })
    Spin:Toggle({ Name = 'Local Head Rappery', Flag = 'Jittar', Default = false, Callback = function(s) flags['Jittar'] = s; if s then EnableFakePitch() else DisableFakePitch() end end }):Keybind({ Flag = 'Spinar', Default = Enum.KeyCode.N, Mode = 'Toggle', Callback = function(s) flags['Spinar'] = type(s) == "table" and s or {active = s == true} end })
    Spin:Slider({ Name = 'Spinbot Speed', Flag = 'Anti Aim Speed', Min = 1, Max = 200, Default = 50, Decimals = 1, Suffix = '', Callback = function(s) flags['Anti Aim Speed'] = s end })
    Spin:Toggle({ Name = "Underground AA", Flag = "Underground AA", Default = false, Risk = 'risky', Tooltip = 'may not work', Callback = function(state)
        if state then
            if not _G.undergroundConnection then
                _G.dysenc = {}
                local animation = Instance.new("Animation")
                animation.AnimationId = "rbxassetid://13435049596"
                _G.undergroundConnection = run_service.Heartbeat:Connect(function()
                    local keybind = flags["Underground AA Keybind"]
                    if keybind and type(keybind) == "table" and keybind.active then
                        if not _G.animationTrack or not _G.animationTrack.IsPlaying then
                            pcall(function()
                                local char = lp2.Character
                                local hum = char and char:FindFirstChildWhichIsA("Humanoid")
                                if hum then
                                    _G.animationTrack = hum:LoadAnimation(animation)
                                    _G.animationTrack.Looped = true
                                    _G.animationTrack:Play()
                                end
                            end)
                        end
                        local char = lp2.Character
                        local root = char and char:FindFirstChild("HumanoidRootPart")
                        if root then
                            local oldCF = root.CFrame
                            local oldRot = oldCF.Rotation
                            root.CFrame = oldCF + Vector3.new(0, -1.9, 0)
                            task.defer(function()
                                if root and root.Parent then
                                    local pos = root.Position
                                    root.CFrame = CFrame.new(pos.X, oldCF.Position.Y, pos.Z) * oldRot
                                end
                            end)
                        end
                    else
                        if _G.animationTrack and _G.animationTrack.IsPlaying then
                            pcall(function() _G.animationTrack:Stop() end)
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
                pcall(function() _G.animationTrack:Stop(); _G.animationTrack:Destroy() end)
                _G.animationTrack = nil
            end
        end
    end }):Keybind({ Flag = "Underground AA Keybind", Default = Enum.KeyCode.X, Mode = "Toggle", Callback = function(s) flags["Underground AA Keybind"] = type(s) == "table" and s or {active = s == true} end })
end

--// ===================== MISC PAGE =====================
do
    local Cam = MiscPage:Section({ Name = 'Camera', Side = 1 })
    Cam:Toggle({ Name = 'Camera FOV', Flag = 'FOV', Default = false, Callback = function(s) flags['FOV'] = s end })
    Cam:Slider({ Name = 'FOV Amount', Flag = 'FOV Ammount', Min = 30, Max = 120, Default = 70, Decimals = 1, Suffix = '°', Callback = function(s) flags['FOV Ammount'] = s end })
    Cam:Toggle({ Name = 'Zoom', Flag = 'Zoom', Default = false, Callback = function(s) flags['Zoom'] = s end }):Keybind({ Flag = 'Zoom Keybind', Default = Enum.KeyCode.V, Mode = 'Hold', Callback = function(s) flags['Zoom Keybind'] = type(s) == "table" and s or {active = s == true} end })
    Cam:Slider({ Name = 'Zoom Amount', Flag = 'Zoom Ammount', Min = 5, Max = 70, Default = 30, Decimals = 1, Suffix = '°', Callback = function(s) flags['Zoom Ammount'] = s end })
    Cam:Toggle({ Name = 'Freecam', Flag = 'Enable Freecam', Default = false, Callback = function(s) flags['Enable Freecam'] = s end }):Keybind({ Flag = 'Freecam Keybind', Default = Enum.KeyCode.Z, Mode = 'Toggle', Callback = function(s) flags['Freecam Keybind'] = type(s) == "table" and s or {active = s == true} end })
    Cam:Slider({ Name = 'Freecam Speed', Flag = 'Freecam Speed', Min = 0.5, Max = 10, Default = 2, Decimals = 0.1, Suffix = '', Callback = function(s) flags['Freecam Speed'] = s end })
    Cam:Slider({ Name = 'Freecam Sensitivity', Flag = 'Freecam Sensitivity', Min = 0.1, Max = 1, Default = 0.3, Decimals = 0.01, Suffix = '', Callback = function(s) flags['Freecam Sensitivity'] = s end })
    Cam:Toggle({ Name = 'Third Person', Flag = 'Third Person', Default = false, Callback = function(s) flags['Third Person'] = s end }):Keybind({ Flag = 'Third Person Key', Default = Enum.KeyCode.I, Mode = 'Toggle', Callback = function(s) flags['Third Person Key'] = type(s) == "table" and s or {active = s == true} end })
    Cam:Slider({ Name = 'Third Person Distance', Flag = 'Third Person Distance', Min = 1, Max = 30, Default = 5, Decimals = 0.1, Suffix = '', Callback = function(s) flags['Third Person Distance'] = s end })

    local Fps = MiscPage:Section({ Name = 'Potato Graphics', Side = 1 })
    Fps:Toggle({ Name = 'Potato Graphics', Flag = 'potato_mode', Default = false, Tooltip = 'this is irreversible, you can not reverse this', Callback = function(state)
        if state then
            local _Lighting = game:GetService("Lighting")
            local _Terrain = Workspace.Terrain
            _Terrain.WaterWaveSize = 0
            _Terrain.WaterWaveSpeed = 0
            _Terrain.WaterReflectance = 0
            _Terrain.WaterTransparency = 0
            pcall(function() sethiddenproperty(_Terrain, "Decoration", false) end)
            _Lighting.GlobalShadows = false
            _Lighting.FogEnd = 9999
            _Lighting.FogStart = 9999
            _Lighting.Brightness = 0
            _Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
            for _, v in ipairs(_Lighting:GetChildren()) do
                pcall(function()
                    if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect")
                    or v:IsA("ColorCorrectionEffect") or v:IsA("DepthOfFieldEffect") then
                        v.Enabled = false
                    end
                end)
            end
            for _, v in ipairs(Workspace:GetDescendants()) do
                pcall(function()
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
            pcall(function()
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
            Workspace.DescendantAdded:Connect(function(v)
                if v:IsA("BasePart") then
                    pcall(function() v.CastShadow = false end)
                end
            end)
            pcall(function() Library:Notification('FPS | Potato Mode enabled!', 3) end)
        end
    end })
end

Library:Notification('dopamine.wtf | loaded propperly', 5)

--// [Rest of the code remains the same - all the render loops, hooks, etc. unchanged]
--// I'll now paste the rest of the functionality that wasn't modified

do
    local _copterConn = nil
    local _copterActive = false
    local COPTER_SPEED = 80

    local function _isInCopter()
        local char = local_player.Character
        if not char then return false, nil end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum or not hum.SeatPart then return false, nil end
        local seat = hum.SeatPart
        local vehicle = seat.Parent
        if not vehicle then return false, nil end
        if vehicle.Name ~= "Minicopter" then return false, nil end
        local base = vehicle:FindFirstChild("Base")
        if not base then return false, nil end
        return true, base
    end

    local function _startCopter(base)
        if _copterActive then return end
        _copterActive = true

        _copterConn = run_service.RenderStepped:Connect(function(dt)
            local inCopter, b = _isInCopter()
            if not inCopter then
                _copterActive = false
                _copterConn:Disconnect()
                _copterConn = nil
                getgenv()._flyActive = false
                return
            end

            if not flags["CopterFly"] then
                getgenv()._flyActive = false
                return
            end
            getgenv()._flyActive = true

            local cam = workspace.CurrentCamera
            local cf = b.CFrame
            local move = Vector3.zero

            local look = cam.CFrame.LookVector
            local right = cam.CFrame.RightVector

            local yaw   = math.atan2(-look.X, -look.Z)
            local pitch = math.asin(math.clamp(look.Y, -1, 1))

            if uis:IsKeyDown(Enum.KeyCode.W) then move += look end
            if uis:IsKeyDown(Enum.KeyCode.S) then move -= look end
            if uis:IsKeyDown(Enum.KeyCode.A) then move -= right end
            if uis:IsKeyDown(Enum.KeyCode.D) then move += right end

            if uis:IsKeyDown(Enum.KeyCode.LeftShift) then
                move += Vector3.new(0, 1, 0)
            end
            if uis:IsKeyDown(Enum.KeyCode.LeftControl) then
                move -= Vector3.new(0, 1, 0)
            end

            if move.Magnitude > 0 then
                local speed = flags["CopterSpeed"] or 80
                local newPos = cf.Position + move.Unit * speed * dt
                b.CFrame = CFrame.new(newPos)
                    * CFrame.Angles(0, yaw, 0)
                    * CFrame.Angles(pitch * 0.5, 0, 0)
                b.AssemblyLinearVelocity = Vector3.zero
                b.AssemblyAngularVelocity = Vector3.zero
            else
                b.CFrame = CFrame.new(cf.Position)
                    * CFrame.Angles(0, yaw, 0)
                b.AssemblyLinearVelocity = Vector3.zero
                b.AssemblyAngularVelocity = Vector3.zero
            end
        end)
    end

    local function _checkSeat()
        local inCopter, base = _isInCopter()
        if inCopter and not _copterActive then
            _startCopter(base)
        end
    end

    task.spawn(function()
        while true do
            task.wait(0.5)
            _checkSeat()
        end
    end)

    local_player.CharacterAdded:Connect(function()
        _copterActive = false
        if _copterConn then
            pcall(function() _copterConn:Disconnect() end)
            _copterConn = nil
        end
    end)
end

--// Sync all remaining flags that don't have explicit callbacks
task.spawn(function()
    task.wait(0.5)
    local defaultFlags = {
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
    for k, v in pairs(defaultFlags) do
        if flags[k] == nil then flags[k] = v end
    end
end)

--// optimizers (no visual change)
do
    local gc = collectgarbage
    pcall(function()
        gc("setpause", 150)
        gc("setstepmul", 200)
    end)

    --// cached players list (rebuilt only on add/remove), avoids per-frame GetPlayers() allocations
    do
        local players_service = cloneref(game:GetService("Players"))
        local cached = players_service:GetPlayers()
        players_service.PlayerAdded:Connect(function(p) table.insert(cached, p) end)
        players_service.PlayerRemoving:Connect(function(p)
            for i = #cached, 1, -1 do
                if cached[i] == p then table.remove(cached, i) break end
            end
        end)
        getgenv()._playerCache = cached
    end

    --// keep a cached camera reference fresh, avoids repeated CurrentCamera lookups
    local camRef = workspace.CurrentCamera
    game:GetService("RunService").RenderStepped:Connect(function()
        camRef = workspace.CurrentCamera or camRef
        getgenv()._camCache = camRef
    end)

    --// periodic incremental GC to flatten memory spikes
    task.spawn(function()
        while task.wait(30) do
            pcall(function() gc("collect") end)
        end
    end)
end

--// cached camera local for hot loops
local _cam = workspace.CurrentCamera
game:GetService("RunService").Heartbeat:Connect(function()
    _cam = workspace.CurrentCamera or _cam
end)

local ESPObjects = {}
local UPDATE_INTERVAL = 0.1
local lastUpdate = 0

local function getObjectPosition(obj)
    if obj:IsA("BasePart") then
        return obj.Position
    elseif obj:IsA("Model") then
        return obj:GetPivot().Position
    end
end

local function createBillboard(adornee, text, color)
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ItemESP"
    billboard.Adornee = adornee
    billboard.Size = UDim2.fromOffset(110, 22)
    billboard.StudsOffset = Vector3.new(0, 1.6, 0)
    billboard.AlwaysOnTop = true

    local label = Instance.new("TextLabel")
    label.Size = UDim2.fromScale(1, 1)
    label.BackgroundTransparency = 1
    label.TextScaled = false
    label.TextSize = 13  
    label.Font = Enum.Font.SourceSansBold 
    label.TextColor3 = color
    label.TextStrokeTransparency = 0.3
    label.TextStrokeColor3 = Color3.new(0, 0, 0) 
    label.Text = text
    label.Parent = billboard

    billboard.Parent = adornee
    return billboard
end

local function scanObject(obj, config)
    if not flags["word"] or not config.Enabled then 
        if ESPObjects[obj] then
            ESPObjects[obj]:Destroy()
            ESPObjects[obj] = nil
        end
        return
    end
    local gay = local_char:FindFirstChild("HumanoidRootPart")
    if not gay then return end
    local rootPos = gay.Position
    if not rootPos then return end

    local objPos = getObjectPosition(obj)
    if not objPos then return end

    local dist = (objPos - rootPos).Magnitude
    if dist > config.MaxDistance then
        if ESPObjects[obj] then
            ESPObjects[obj]:Destroy()
            ESPObjects[obj] = nil
        end
        return
    end

    local adornee = obj:IsA("Model") and obj.PrimaryPart or obj
    adornee = adornee or obj:FindFirstChildWhichIsA("BasePart")
    if not adornee then return end

    local text = string.format("%s [%.0fm]", obj.Name, dist)

    if not ESPObjects[obj] then
        ESPObjects[obj] = createBillboard(adornee, text, config.Color)
    else
        local label = ESPObjects[obj]:FindFirstChildOfClass("TextLabel")
        if label then
            label.Text = text
        end
    end
end

local function Reso()
    if tick() - lastUpdate < UPDATE_INTERVAL then
        return
    end
    lastUpdate = tick()

    local hempFolder = Workspace:FindFirstChild("Hemp")
    if hempFolder then
        for _, obj in ipairs(hempFolder:GetChildren()) do
            scanObject(obj, Settings.Hemp)
        end
    end

    local oresFolder = Workspace:FindFirstChild("ores")
    if oresFolder then
        for _, obj in ipairs(oresFolder:GetChildren()) do
            local config = Settings[obj.Name]
            if config then
                scanObject(obj, config)
            end
        end
    end
end

local gxentry = {}

function gxentry:Instance(ClassName, Properties)
    local Instance = Instance.new(ClassName)
    for Index, Value in next, Properties do
        Instance[Index] = Value
    end
    return Instance
end

local trac = false
local mark = false

function gxentry:CreateBeam(origin, direction)
    if not flags["Bullet Tracers"] then return end

    if getgenv().silent and closest_part then
        direction = closest_part.Position
    end

    local tracerColor =
        flags["Tracer Color"] and flags["Tracer Color"].Color
        or Color3.new(0, 191, 255)

    local textureId = tracers_ids[flags["Bulat Type"]]
    if not textureId then return end

    local tracer = Instance.new("Model")
    tracer.Parent = workspace

    local part0 = Instance.new("Part")
    part0.Size = Vector3.new(0.001, 0.001, 0.001)
    part0.Transparency = 1
    part0.Anchored = true
    part0.CanCollide = false
    part0.Position = origin
    part0.Parent = tracer

    local part1 = part0:Clone()
    part1.Position = direction
    part1.Parent = tracer

    local att0 = Instance.new("Attachment", part0)
    local att1 = Instance.new("Attachment", part1)

    local beam = Instance.new("Beam")
    beam.Attachment0 = att0
    beam.Attachment1 = att1
    beam.Parent = tracer

    beam.FaceCamera = true
    beam.Segments = 20 
    beam.Width0 = 0.75
    beam.Width1 = 0.75

    beam.Color = ColorSequence.new(tracerColor)
    beam.LightEmission = 1
    beam.LightInfluence = 0

    beam.Texture = textureId
    beam.TextureMode = Enum.TextureMode.Wrap
    beam.TextureLength = 12 
    beam.TextureSpeed = 2   

    task.delay(3, function()
        tracer:Destroy()
    end)

    return tracer
end

local needmark = false

function gxentry:CreateHitmarker(Direction)
    if not flags["Hitmarkers"] or not needmark then return end
    needmark = false

    local ProtectedModel = gxentry:Instance("Model", { Parent = workspace })

    local HitmarkerPart = gxentry:Instance("Part", {
        Position = Direction,
        Size = Vector3.new(0.1, 0.1, 0.1),
        Transparency = 1,
        CanCollide = false,
        Anchored = true,
        Parent = ProtectedModel,
    })

    local HitmarkerGui = gxentry:Instance("BillboardGui", {
        Size = UDim2.new(0, 20, 0, 20),
        AlwaysOnTop = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        Parent = HitmarkerPart,
    })

    local HitmarkerData = {
        { UDim2.new(0, 7, 0, 1), UDim2.new(0, 0, 0.35, -6), 45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(0, 0, 0.35, 4), -45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(1, -10, 0.35, -6), -45 },
        { UDim2.new(0, 7, 0, 1), UDim2.new(1, -10, 0.35, 4), 45 },
    }

    for _, Data in next, HitmarkerData do
        local Line = gxentry:Instance("Frame", {
            Size = Data[1],
            BackgroundColor3 = type(flags["HitmarkerColor"]) == "table" and flags["HitmarkerColor"].Color or Color3.new(0, 191, 255),
            BackgroundTransparency = 0,
            BorderSizePixel = 0,
            Position = Data[2],
            Rotation = Data[3],
            Parent = HitmarkerGui,
        })
    end
    needmark = false
    task.delay(5, function()
        for Index = 1, 100 do
            for _, Object in pairs(HitmarkerGui:GetChildren()) do
                if Object:IsA("Frame") then
                    Object.BackgroundTransparency = Index / 100
                end
            end

            task.wait()
        end

        HitmarkerGui:Destroy()
        HitmarkerPart:Destroy()
        ProtectedModel:Destroy()
    end)
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FireVisuals = require(ReplicatedStorage.Gun.Scripts.FireVisuals)

local oldNew = FireVisuals.new

FireVisuals.new = function(...)
    local self = oldNew(...)

    if self and self.Hit then
        self.Hit.Event:Connect(function(hitResult)
            if not hitResult then return end
            if not hitResult.Position then return end

            if self.IsReplicated then
                return 
            end

            local cam = workspace.CurrentCamera
            if not cam then return end

            local origin = cam.CFrame.Position
            local hitpos = hitResult.Position
            gxentry:CreateHitmarker(hitpos)

            gxentry:CreateBeam(origin, hitpos)
        end)
    end

    return self
end

--// CAMERA FOV + ZOOM
do
    local _defaultFOV = 70
    local _fovConn = nil

    local function _applyCameraFOV()
        if _fovConn then return end
        _fovConn = run_service.RenderStepped:Connect(function()
            local cam = workspace.CurrentCamera
            if not cam then return end

            if flags["FOV"] then
                local fov = flags["FOV Ammount"] or 70
                if cam.FieldOfView ~= fov then
                    getgenv()._scriptFOV = true
                    cam.FieldOfView = fov
                    getgenv()._scriptFOV = false
                end
            end

            if flags["Zoom"] and type(flags["Zoom Keybind"]) == "table" and flags["Zoom Keybind"].active then
                local zoomFOV = flags["Zoom Ammount"] or 30
                if cam.FieldOfView ~= zoomFOV then
                    getgenv()._scriptFOV = true
                    cam.FieldOfView = zoomFOV
                    getgenv()._scriptFOV = false
                end
            elseif not flags["FOV"] then
                if cam.FieldOfView ~= _defaultFOV then
                    getgenv()._scriptFOV = true
                    cam.FieldOfView = _defaultFOV
                    getgenv()._scriptFOV = false
                end
            end
        end)
    end

    _applyCameraFOV()

    local_player.CharacterAdded:Connect(function()
        task.wait(0.5)
        _defaultFOV = workspace.CurrentCamera.FieldOfView
    end)
end

-- No Spread
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GunBase = require(ReplicatedStorage.Gun.Scripts.GunBase)

local oldGetSpread = GunBase.getSpread

function GunBase:getSpread(...)
    if not flags["No Spread"] then
        return oldGetSpread(self, ...)
    end

    return 0
end

-- NO VIEWMODEL BOB + NO GUN EFFECTS
getgenv()._scriptFOV = false

local function setScriptFOV(fov)
    getgenv()._scriptFOV = true
    camera.FieldOfView = fov
    getgenv()._scriptFOV = false
end

do
    local _defaultFOV = camera.FieldOfView
    local _fovConn = nil

    local function _startNoGunEffects()
        if _fovConn then return end
        _fovConn = camera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
            if not flags["No Gun Effects"] then return end
            if getgenv()._scriptFOV then return end
            getgenv()._scriptFOV = true
            camera.FieldOfView = _defaultFOV
            getgenv()._scriptFOV = false
        end)
    end

    local function _stopNoGunEffects()
        if _fovConn then
            pcall(function() _fovConn:Disconnect() end)
            _fovConn = nil
        end
    end

    pcall(function()
        local GC = require(rs.Gun.Scripts.GunClient)
        for _, name in ipairs({ "zoomIn", "zoomOut", "setZoom", "aimIn", "aimOut", "onAimIn", "onAimOut" }) do
            if type(GC[name]) == "function" then
                local orig = GC[name]
                GC[name] = function(self, ...)
                    if flags["No Gun Effects"] then return end
                    return orig(self, ...)
                end
            end
        end
    end)

    pcall(function()
        local TC = require(rs.Tool.Scripts.ToolClient)
        for _, name in ipairs({ "zoomIn", "zoomOut", "setZoom", "aimIn", "aimOut", "onAimIn", "onAimOut" }) do
            if type(TC[name]) == "function" then
                local orig = TC[name]
                TC[name] = function(self, ...)
                    if flags["No Gun Effects"] then return end
                    return orig(self, ...)
                end
            end
        end
    end)

    task.spawn(function()
        task.wait(2)
        for _, v in pairs(getgc(true)) do
            if type(v) == "table" then
                for _, name in ipairs({ "zoomIn", "zoomOut", "aimIn", "aimOut", "setFOV", "setZoom" }) do
                    if type(rawget(v, name)) == "function" then
                        local orig = rawget(v, name)
                        rawset(v, name, function(self, ...)
                            if flags["No Gun Effects"] then return end
                            return orig(self, ...)
                        end)
                    end
                end
            end
        end
    end)

    _startNoGunEffects()

    local_player.CharacterAdded:Connect(function()
        _defaultFOV = camera.FieldOfView
        _stopNoGunEffects()
        task.wait(0.5)
        _startNoGunEffects()
    end)
end

--// Viewmodel
local ViewModelModule = require(ReplicatedStorage.ViewModel.Scripts.ViewModel)

local oldNew = ViewModelModule.new
local hooked = setmetatable({}, { __mode = "k" })

ViewModelModule.new = function(...)
	local vm = oldNew(...)
	if typeof(vm) ~= "table" then
		return vm
	end

	if hooked[vm] then
		return vm
	end
	hooked[vm] = true

	return vm
end

local oldUpdate = ViewModelModule.updateCFrame
ViewModelModule.updateCFrame = function(self, smooth, dt)
	if flags["No Viewmodel Bob"] and self then
		pcall(function()
			if self.bobOffset ~= nil then self.bobOffset = CFrame.new() end
			if self.swayOffset ~= nil then self.swayOffset = CFrame.new() end
			if self.bob ~= nil then self.bob = Vector3.zero end
			if self.sway ~= nil then self.sway = Vector3.zero end
			if self.bobCFrame ~= nil then self.bobCFrame = CFrame.new() end
			if self.swayCFrame ~= nil then self.swayCFrame = CFrame.new() end
		end)
	end

	oldUpdate(self, smooth, dt)

	if not self.viewModel then return end
	if not viewenabal then return end

	local pos = CFrame.new(
		xere or 0,
		yere or 0,
		zere or 0
	)

	local rot = CFrame.Angles(
		math.rad(rotX or 0),
		math.rad(rotY or 0),
		math.rad(rotZ or 0)
	)

	self.viewModel:PivotTo(
		self.viewModel:GetPivot() * pos * rot
	)
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ViewModel = require(ReplicatedStorage.ViewModel.Scripts.ViewModel)

local CHAMS_MATERIAL = Enum.Material.Neon

local original = setmetatable({}, { __mode = "k" })

local function saveOriginal(part)
	if original[part] then return end
	original[part] = {
		Color = part.Color,
		Material = part.Material,
		CastShadow = part.CastShadow
	}
end

local function findTool(vm)
	for _, inst in ipairs(vm:GetChildren()) do
		if inst:IsA("Tool") then
			return inst
		end
	end
end

local function applyChams(vm)
	if not vm then return end

	local tool = findTool(vm)
	if not tool then return end

	for _, inst in ipairs(tool:GetDescendants()) do
		if inst:IsA("SurfaceAppearance") then
			inst:Destroy()

		elseif inst:IsA("BasePart") then
			saveOriginal(inst)

			inst.Color = flags["Colarss"].Color
			inst.Material = Enum.Material[flags["gunChamsMaterial"] or "Neon"]
			inst.CastShadow = false
		end
	end
end

local function restoreChams(vm)
	if not vm then return end

	local tool = findTool(vm)
	if not tool then return end

	for _, inst in ipairs(tool:GetDescendants()) do
		local data = original[inst]
		if inst:IsA("BasePart") and data then
			inst.Color = data.Color
			inst.Material = data.Material
			inst.CastShadow = data.CastShadow
		end
	end
end

local function applyArmChams(vm)
	if not vm then return end

    local shirt = local_char:FindFirstChildOfClass("Shirt")
	local pants = local_char:FindFirstChildOfClass("Pants")

	if shirt then shirt:Destroy() end
	if pants then pants:Destroy() end

	for _, inst in ipairs(vm:GetDescendants()) do
		if inst:IsA("SurfaceAppearance") and inst.Parent and inst.Parent:IsA("BasePart") then
			if string.find(inst.Parent.Name:lower(), "arm") then
				inst:Destroy()
			end

		elseif inst:IsA("BasePart") then
			if string.find(inst.Name:lower(), "arm") then
				saveOriginal(inst)

				inst.Color = flags["Colarss2"].Color
				inst.Material = Enum.Material[flags["gaymaterial"]]
				inst.CastShadow = false
			end
		end
	end
end

local function restoreArmChams(vm)
	if not vm then return end

	for _, inst in ipairs(vm:GetDescendants()) do
		local data = original[inst]
		if inst:IsA("BasePart") and data then
			if string.find(inst.Name:lower(), "arm") then
				inst.Color = data.Color
				inst.Material = data.Material
				inst.CastShadow = data.CastShadow
			end
		end
	end
end

local function update(vm)
	if flags["Chamsi"] then
		applyChams(vm)
	else
		restoreChams(vm)
	end
	if flags["GunNiger"] then
		applyArmChams(vm)
	else
		restoreArmChams(vm)
	end
end

local oldCreate
pcall(function()
    oldCreate = hookfunction(ViewModel.createViewModel, function(self, ...)
        oldCreate(self, ...)
        if self and self.viewModel then
            update(self.viewModel)
        end
    end)
end)

local _chamsFrame = 0
run_service.Heartbeat:Connect(function()
    _chamsFrame += 1
    if _chamsFrame % 10 ~= 0 then return end
    if not (flags["Chamsi"] or flags["GunNiger"]) then return end
    pcall(function()
        local cam = workspace.CurrentCamera
        for _, v in ipairs(cam:GetChildren()) do
            if v:IsA("Model") and v ~= local_player.Character then
                update(v)
            end
        end
    end)
end)

Protected = Instance.new("ScreenGui", gethui())
Protected.IgnoreGuiInset = true

local ArmorInfoGUI
local ArmorInfoFrame

local function CreateArmorGUI()
    if ArmorInfoGUI and ArmorInfoGUI.Parent then
        ArmorInfoGUI:Destroy()
    end

    local players = game:GetService("Players")
    local TextService = game:GetService("TextService")

    ArmorInfoGUI = Instance.new("ScreenGui")
    ArmorInfoGUI.Name = "PlayerArmorInfoGUI"
    ArmorInfoGUI.ResetOnSpawn = false
    ArmorInfoGUI.Enabled = true
    ArmorInfoGUI.Parent = game:GetService("CoreGui")
    ArmorInfoGUI.DisplayOrder = 999

    local Theme = Library and Library.Theme or {
        Background = Color3.fromRGB(14, 17, 15),
        Border = Color3.fromRGB(12, 12, 12),
        Outline = Color3.fromRGB(42, 49, 45),
        Accent = Color3.fromRGB(0, 191, 255),
        Text = Color3.fromRGB(235, 235, 235),
        ["Text Stroke"] = Color3.fromRGB(0, 0, 0),
    }

    local Font = (Library and Library.Font) or Font.new("rbxasset://fonts/families/RobotoMono.json")

    ArmorInfoFrame = Instance.new("Frame")
    ArmorInfoFrame.Name = "ArmorInfo"
    ArmorInfoFrame.Parent = ArmorInfoGUI
    ArmorInfoFrame.AnchorPoint = Vector2.new(0, 0.5)
    ArmorInfoFrame.Position = UDim2.new(0, 12, 0.5, 0)
    ArmorInfoFrame.Size = UDim2.new(0, 160, 0, 32)
    ArmorInfoFrame.AutomaticSize = Enum.AutomaticSize.XY
    ArmorInfoFrame.BackgroundColor3 = Theme.Background
    ArmorInfoFrame.BorderColor3 = Theme.Border
    ArmorInfoFrame.BorderSizePixel = 2

    local dragging = false
    local dragstart, startPos
    local UserInputService = game:GetService("UserInputService")

    ArmorInfoFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragstart = input.Position
            startPos = ArmorInfoFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragstart

            ArmorInfoFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    local outlineStroke = Instance.new("UIStroke")
    outlineStroke.Color = Theme.Outline
    outlineStroke.Thickness = 1
    outlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    outlineStroke.Parent = ArmorInfoFrame

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = ArmorInfoFrame
    TitleLabel.FontFace = Font
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.Text = "Loadout"
    TitleLabel.Size = UDim2.new(0, 0, 0, 20)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 0, 0, -4)
    TitleLabel.BorderSizePixel = 0
    TitleLabel.AutomaticSize = Enum.AutomaticSize.X
    TitleLabel.TextSize = 9

    local titleStroke = Instance.new("UIStroke")
    titleStroke.Color = Theme["Text Stroke"]
    titleStroke.Thickness = 1
    titleStroke.Transparency = 0.6
    titleStroke.Parent = TitleLabel

    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 8)
    padding.PaddingBottom = UDim.new(0, 12)
    padding.PaddingRight = UDim.new(0, 8)
    padding.PaddingLeft = UDim.new(0, 8)
    padding.Parent = ArmorInfoFrame

    local Liner = Instance.new("Frame")
    Liner.Parent = ArmorInfoFrame
    Liner.Position = UDim2.new(0, 0, 0, 15)
    Liner.BackgroundColor3 = Theme.Accent
    Liner.BorderSizePixel = 0
    Liner.Size = UDim2.new(1, 0, 0, 1)

    local ICON_SIZE = 32

    local Content = Instance.new("Frame")
    Content.Parent = ArmorInfoFrame
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 8, 0, 32)
    Content.Size = UDim2.new(0, (ICON_SIZE + 8) * 6 + 4 * 5, 0, 0)
    Content.AutomaticSize = Enum.AutomaticSize.Y
    Content.ClipsDescendants = false

    local contentLayout = Instance.new("UIGridLayout")
    contentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    contentLayout.CellSize = UDim2.new(0, ICON_SIZE + 8, 0, ICON_SIZE + 8)
    contentLayout.CellPadding = UDim2.new(0, 4, 0, 4)
    contentLayout.FillDirection = Enum.FillDirection.Horizontal
    contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    contentLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    contentLayout.Parent = Content

    local function getCharacterFromEntry(entry)
        if not entry then
            return nil
        end

        if typeof(entry) == "Instance" and entry:IsA("Model") then
            return entry
        end

        if typeof(entry) == "Instance" and entry:IsA("Player") then
            return entry.Character
        end

        if typeof(entry) == "string" then
            local plr = players:FindFirstChild(entry)

            if plr then
                return plr.Character
            end
        end

        return nil
    end

    local GUN_KEYS = {
        "ak", "m4", "mp5", "pistol", "rifle", "shotgun", "sniper", "smg",
        "gun", "revolver", "crossbow", "bow", "lmg", "carbine", "assault",
        "semi", "burst", "auto", "weapon", "firearm", "musket", "minigun",
        "thompson", "uzi", "vector", "scar", "aug", "p90", "deagle",
    }

    local ARMOR_KEYS = {
        "helmet", "vest", "armor", "armour", "plate", "chest", "jacket",
        "hoodie", "shirt", "pants", "boots", "gloves", "mask", "balaclava",
        "hat", "cap", "hood", "coat", "suit", "gear", "kevlar", "cloth",
        "hazmat", "gasmask", "bandana", "beanie",
    }

    local function isGun(name)
        local n = name:lower()

        for _, k in ipairs(GUN_KEYS) do
            if n:find(k, 1, true) then
                return true
            end
        end

        return false
    end

    local function isArmor(name)
        local n = name:lower()

        for _, k in ipairs(ARMOR_KEYS) do
            if n:find(k, 1, true) then
                return true
            end
        end

        return false
    end

    local function getToolIcon(toolObj)
        if toolObj and toolObj.TextureId and toolObj.TextureId ~= "" then
            return toolObj.TextureId
        end
        if toolObj then
            for _, d in ipairs(toolObj:GetDescendants()) do
                if d:IsA("Decal") and d.Texture ~= "" then
                    return d.Texture
                end
                if d:IsA("ImageLabel") and d.Image ~= "" then
                    return d.Image
                end
            end
        end
        return ""
    end

    local function createItemSlot(name, toolObj)
        local icon = getToolIcon(toolObj)

        local slot = Instance.new("Frame")
        slot.Parent = Content
        slot.BackgroundColor3 = Theme.Background
        slot.BorderSizePixel = 0
        slot.Size = UDim2.new(0, ICON_SIZE + 8, 0, ICON_SIZE + 8)
        slot.AutomaticSize = Enum.AutomaticSize.None
        slot.ClipsDescendants = true

        local slotStroke = Instance.new("UIStroke")
        slotStroke.Color = Theme.Outline
        slotStroke.Thickness = 1
        slotStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        slotStroke.Parent = slot

        local slotCorner = Instance.new("UICorner")
        slotCorner.CornerRadius = UDim.new(0, 3)
        slotCorner.Parent = slot

        local img = Instance.new("ImageLabel")
        img.Parent = slot
        img.Size = UDim2.new(1, -4, 1, -4)
        img.Position = UDim2.new(0, 2, 0, 2)
        img.BackgroundTransparency = 1
        img.ScaleType = Enum.ScaleType.Fit
        img.Image = icon ~= "" and icon or "rbxassetid://0"
        img.ImageTransparency = icon == "" and 1 or 0

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Parent = slot
        nameLabel.Size = UDim2.new(1, 0, 0, 12)
        nameLabel.Position = UDim2.new(0, 0, 1, 0)
        nameLabel.AnchorPoint = Vector2.new(0, 1)
        nameLabel.BackgroundColor3 = Color3.new(0, 0, 0)
        nameLabel.BackgroundTransparency = 0.4
        nameLabel.BorderSizePixel = 0
        nameLabel.Text = name
        nameLabel.FontFace = Font
        nameLabel.TextSize = 7
        nameLabel.TextColor3 = Theme.Text
        nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
        nameLabel.Visible = false

        slot.MouseEnter:Connect(function() nameLabel.Visible = true end)
        slot.MouseLeave:Connect(function() nameLabel.Visible = false end)

        if icon == "" then
            img.ImageTransparency = 1
            local fallback = Instance.new("TextLabel")
            fallback.Parent = slot
            fallback.Size = UDim2.new(1, -4, 1, -4)
            fallback.Position = UDim2.new(0, 2, 0, 2)
            fallback.BackgroundTransparency = 1
            fallback.Text = name:sub(1, 4)
            fallback.FontFace = Font
            fallback.TextSize = 8
            fallback.TextColor3 = Theme.Text
            fallback.TextWrapped = true
            fallback.TextScaled = false
        end

        return slot
    end

    local detectedItems = {}
    local itemLabels = {}

    local function updateSize()
    end

    local function addItem(name, toolObj)
        if detectedItems[name] then return end
        detectedItems[name] = true
        local slot = createItemSlot(name, toolObj)
        itemLabels[name] = slot
        updateSize()
    end

    local function clearItems()
        for _, slot in pairs(itemLabels) do
            slot:Destroy()
        end
        itemLabels = {}
        detectedItems = {}
        updateSize()
    end

    function UpdatePlayerArmor(entry)
        clearItems()

        local character = getCharacterFromEntry(entry)

        if not character or not character.Parent then
            TitleLabel.Text = "No target"
            updateSize()
            return
        end

        local plr = players:GetPlayerFromCharacter(character)
        TitleLabel.Text = (plr and plr.Name or character.Name) .. "'s Loadout"

        for _, obj in ipairs(character:GetChildren()) do
            if obj:IsA("Tool") then
                addItem(obj.Name, obj)
            end
        end

        if plr then
            local backpack = plr:FindFirstChildOfClass("Backpack")
            if backpack then
                for _, obj in ipairs(backpack:GetChildren()) do
                    if obj:IsA("Tool") then
                        addItem(obj.Name, obj)
                    end
                end
            end
        end
    end

    updateSize()

    return {
        GUI = ArmorInfoGUI,
        Frame = ArmorInfoFrame,
        Update = UpdatePlayerArmor,
        SetTarget = UpdatePlayerArmor
    }
end

local ArmorGUI = CreateArmorGUI()
local ArmorInfoGUI = ArmorGUI.GUI

local function _renderArmorViewer()
    if not Configuration.Visuals.PlayerArmorInfoWindow then
        if ArmorInfoGUI then
            ArmorInfoGUI.Enabled = false
        end

        return
    end

    local armorTarget = target_frame and target_frame.target and target_frame.target.entry

    if armorTarget and ArmorGUI then
        ArmorInfoGUI.Enabled = true

        local tid = tostring(armorTarget.UserId or armorTarget)

        if ArmorInfoGUI:GetAttribute("lastTarget") ~= tid then
            ArmorInfoGUI:SetAttribute("lastTarget", tid)
            ArmorGUI:Update(armorTarget)
        end
    else
        if ArmorInfoGUI then
            ArmorInfoGUI.Enabled = false
            ArmorInfoGUI:SetAttribute("lastTarget", "")
        end
    end
end

show_hit_notification = false
hit_target_name = ""
hit_part_name = ""
hit_damage = 0

--// No Fall Damage: cap downward velocity before impact and restore health if dropped by fall
do
    local _nfd_conn = nil
    local _nfd_health_conn = nil
    local FALL_VEL_THRESHOLD = -50
    local SAFE_VEL = -10

    local function _flyActive()
        local fly_keybind = flags["FlyKeybind"]
        return flags["FlyEnabled"] and typeof(fly_keybind) == "table" and fly_keybind.active
    end

    local function _nfdActive()
        return flags["NoFallDamage"] and not _flyActive()
    end

    local function _setupNFD(char)
        if _nfd_conn then pcall(function() _nfd_conn:Disconnect() end) end
        if _nfd_health_conn then pcall(function() _nfd_health_conn:Disconnect() end) end

        local hrp = char:WaitForChild("HumanoidRootPart", 5)
        local hum = char:WaitForChild("Humanoid", 5)
        if not hrp or not hum then return end

        _nfd_conn = run_service.Heartbeat:Connect(function()
            if not _nfdActive() then return end
            if not hrp or not hrp.Parent then return end

            local vel = hrp.AssemblyLinearVelocity

            if vel.Y < FALL_VEL_THRESHOLD then
                hrp.AssemblyLinearVelocity = Vector3.new(vel.X, SAFE_VEL, vel.Z)
            end
        end)

        local lastHealth = hum.Health

        _nfd_health_conn = hum.HealthChanged:Connect(function(newHealth)
            if not _nfdActive() then
                lastHealth = newHealth
                return
            end

            local state = hum:GetState()

            if state == Enum.HumanoidStateType.Freefall or state == Enum.HumanoidStateType.Landed then
                local drop = lastHealth - newHealth

                if drop > 0 and drop < hum.MaxHealth * 0.5 then
                    hum.Health = lastHealth
                end
            end

            lastHealth = hum.Health
        end)
    end

    if local_player.Character then
        task.spawn(_setupNFD, local_player.Character)
    end

    local_player.CharacterAdded:Connect(function(char)
        task.wait(0.5)
        _setupNFD(char)
    end)
end

--// No Spike Damage: set CanTouch=false on spike parts so the physics engine
do
    local _spikedParts = {}

    local function _disableSpike(obj)
        if not obj or not obj.Parent then return end
        if _spikedParts[obj] then return end
        _spikedParts[obj] = obj.CanTouch
        pcall(function() obj.CanTouch = false end)
    end

    local function _enableSpike(obj)
        if not _spikedParts[obj] then return end
        pcall(function() obj.CanTouch = _spikedParts[obj] end)
        _spikedParts[obj] = nil
    end

    local function _scanAndApply()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name == "Spikes" and obj:IsA("BasePart") then
                if flags["NoSpikeDmg"] then
                    _disableSpike(obj)
                else
                    _enableSpike(obj)
                end
            end
        end
    end

    Workspace.DescendantAdded:Connect(function(obj)
        if obj.Name == "Spikes" and obj:IsA("BasePart") and flags["NoSpikeDmg"] then
            task.defer(function() _disableSpike(obj) end)
        end
    end)

    Workspace.DescendantRemoving:Connect(function(obj)
        _spikedParts[obj] = nil
    end)

    task.spawn(function()
        while true do
            task.wait(10)
            if flags["NoSpikeDmg"] then _scanAndApply() end
        end
    end)

    task.spawn(function()
        task.wait(2)
        _scanAndApply()
    end)
end

--// Manipulation removed

function getClosestPlayerInFOV()
    local mouse_position = uis:GetMouseLocation()
    local cam_position   = camera.CFrame.Position
    local fov_radius     = flags["Enable FOV"] and (flags["FOV Radius"] or 120) or math.huge
    local max_dist_3d    = flags["Aimbot Max Distance"] or math.huge

    local best_entry, best_part
    local best_screen_dist = flags["Enable FOV"]
        and (fov_radius / math.tan(math.rad(camera.FieldOfView * 0.5)))
        or math.huge

    local closest_bones = {"Head","Torso","UpperTorso","HumanoidRootPart","LeftArm","RightArm","LeftLeg","RightLeg"}

    local cachedPlayers = getgenv()._playerCache or players:GetPlayers()

    for _, plr in ipairs(cachedPlayers) do
        if plr == local_player then continue end
        local char = plr.Character
        if not char then continue end
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hum or hum.Health <= 0 then continue end

        if flags["Friendly Check"] and YallahCheckTeam(plr) then continue end

        local bone = flags["Aimbot Bone"] or "Head"
        local bones = bone == "Closest Bone" and closest_bones or {bone}

        for _, bname in ipairs(bones) do
            local part = char:FindFirstChild(bname)
            if not part then continue end

            local screen_pos, on_screen = camera:WorldToViewportPoint(part.Position)
            if not on_screen then continue end

            local dist_3d = (part.Position - cam_position).Magnitude
            if dist_3d > max_dist_3d then continue end

            if flags["Visible Check"] and not player_esp.functions.is_visible(char) then continue end

            local screen_dist = (Vector2.new(screen_pos.X, screen_pos.Y) - mouse_position).Magnitude
            if screen_dist < best_screen_dist then
                best_screen_dist = screen_dist
                best_entry = plr
                best_part  = part
            end
        end
    end

    if best_entry and best_part then
        target_frame.target.entry    = best_entry
        target_frame.target.part     = best_part
        target_frame.target.distance = best_screen_dist
    else
        target_frame.target.entry    = nil
        target_frame.target.part     = nil
        target_frame.target.distance = math.huge
    end

    return best_entry, best_part
end

local _mainFrame = 0

local function _renderLighting()
    if flags["Enable Fullbright"] then
        if lighting.ClockTime ~= 12 then lighting.ClockTime = 12 end
    else lighting.ClockTime = lighting_cache.ClockTime end
    if flags["Enable No Fog"] then
        lighting.FogEnd = 100000
        local atm = lighting:FindFirstChild("Atmosphere")
        if atm then atm.Density=0; atm.Offset=0; atm.Glare=0; atm.Haze=0 end
    else
        lighting.FogEnd = lighting_cache.FogEnd
        local atm = lighting:FindFirstChild("Atmosphere")
        if atm then atm.Density=lighting_cache.Density; atm.Offset=lighting_cache.Offset; atm.Glare=lighting_cache.Glare; atm.Haze=lighting_cache.Haze end
    end
    if flags["Enable Ambient"] then
        local a = type(flags["Ambient Accent"]) == "table" and flags["Ambient Accent"].Color or Color3.fromRGB(0, 191, 255)
        if lighting.Ambient ~= a then lighting.Ambient = a end
    else lighting.Ambient = lighting_cache.Ambient end
    if flags["Enable Outdoor Ambient"] then
        local o = type(flags["Outdoor Ambient Accent"]) == "table" and flags["Outdoor Ambient Accent"].Color or Color3.fromRGB(0, 191, 255)
        if lighting.OutdoorAmbient ~= o then lighting.OutdoorAmbient = o end
    else lighting.OutdoorAmbient = lighting_cache.OutdoorAmbient end
end

local _fov_state = {
    visible = false,
    size = 0,
    bgTransparency = 1,
    strokeColor = Color3.new(0, 191, 255),
    fillColor = Color3.new(0, 191, 255),
    position = Vector2.new(0,0),
}

local _snap_state = {
    visible = false,
    color = Color3.new(0, 191, 255),
    position = UDim2.new(0,0,0,0),
    rotation = 0,
    size = UDim2.new(0,0,0,1),
}

local function _renderFOV()
    if flags["Enable FOV"] then
        if not _fov_state.visible then
            fov_circle.Frame.Visible = true
            _fov_state.visible = true
        end

        local fovColor = type(flags["FOV Accent"]) == "table" and flags["FOV Accent"].Color or Color3.new(0, 191, 255)
        if fovColor ~= _fov_state.strokeColor then
            fov_circle.Stroke.Color = fovColor
            _fov_state.strokeColor = fovColor
        end

        if flags["FOV Filled"] then
            local transparency = 1 - ((flags["FOV Fill Opacity"] or 50) / 100)
            if transparency ~= _fov_state.bgTransparency then
                fov_circle.Frame.BackgroundTransparency = transparency
                _fov_state.bgTransparency = transparency
            end

            local fillColor = type(flags["FOV Fill Accent"]) == "table" and flags["FOV Fill Accent"].Color or Color3.new(0, 191, 255)
            if fillColor ~= _fov_state.fillColor then
                fov_circle.Frame.BackgroundColor3 = fillColor
                _fov_state.fillColor = fillColor
            end
        else
            if _fov_state.bgTransparency ~= 1 then
                fov_circle.Frame.BackgroundTransparency = 1
                _fov_state.bgTransparency = 1
            end
        end

        local size = (flags["FOV Radius"] or 120) * 2 / math.tan(math.rad(camera.FieldOfView / 2))
        if size ~= _fov_state.size then
            fov_circle.Frame.Size = UDim2.new(0, size, 0, size)
            _fov_state.size = size
        end

        local ml = uis:GetMouseLocation()
        if ml ~= _fov_state.position then
            fov_circle.Frame.Position = UDim2.new(0, ml.X, 0, ml.Y)
            _fov_state.position = ml
        end
    else
        if _fov_state.visible then
            fov_circle.Frame.Visible = false
            _fov_state.visible = false
        end
    end
end

function _renderSnaplines()
    local zoomActive = flags["Zoom"] and type(flags["Zoom Keybind"]) == "table" and flags["Zoom Keybind"].active
    local enabled = (flags["Enable Aimbot"] or getgenv().silent or zoomActive) and flags["Enable Snaplines"]
    local line = snap_lines.line

    if enabled and closest_part then
        local sp = camera:WorldToViewportPoint(closest_part.Position)
        local from = Vector2.new(sp.X, sp.Y)
        local to = uis:GetMouseLocation()
        local offset = to - from
        local position = UDim2.new(0, (from + offset * 0.5).X, 0, (from + offset * 0.5).Y)
        local rotation = math.deg(math.atan2(offset.Y, offset.X))
        local size = UDim2.new(0, math.floor(offset.Magnitude + 0.5), 0, 1)
        local color = type(flags["Snaplines Accent"]) == "table" and flags["Snaplines Accent"].Color or Color3.new(0, 191, 255)

        if position ~= _snap_state.position then
            line.Position = position
            _snap_state.position = position
        end
        if rotation ~= _snap_state.rotation then
            line.Rotation = rotation
            _snap_state.rotation = rotation
        end
        if size ~= _snap_state.size then
            line.Size = size
            _snap_state.size = size
        end
        if color ~= _snap_state.color then
            line.BackgroundColor3 = color
            _snap_state.color = color
        end
        if not _snap_state.visible then
            line.Visible = true
            _snap_state.visible = true
        end
    else
        if _snap_state.visible then
            line.Visible = false
            _snap_state.visible = false
        end
    end
end

function _renderArmorViewer()
    if not Configuration.Visuals.PlayerArmorInfoWindow then ArmorInfoGUI.Enabled = false; return end
    local armorTarget = target_frame.target.entry
    if not armorTarget then
        local mouse = uis:GetMouseLocation()
        local bestDist = math.huge
        local cachedPlayers = getgenv()._playerCache or players:GetPlayers()
        for _, plr in ipairs(cachedPlayers) do
            if plr == local_player then continue end
            local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
            if not hrp then continue end
            local sp, onScreen = camera:WorldToViewportPoint(hrp.Position)
            if onScreen then
                local d = (Vector2.new(sp.X, sp.Y) - mouse).Magnitude
                if d < bestDist then bestDist = d; armorTarget = plr end
            end
        end
    end
    if armorTarget then
        ArmorInfoGUI.Enabled = true
        local tid = tostring(armorTarget.UserId or armorTarget)
        if ArmorInfoGUI:GetAttribute("lastTarget") ~= tid then
            ArmorInfoGUI:SetAttribute("lastTarget", tid)
            pcall(UpdatePlayerArmor, armorTarget)
        end
    else
        ArmorInfoGUI.Enabled = false
        ArmorInfoGUI:SetAttribute("lastTarget", "")
    end
end

function _renderFreecam()
    if flags["Enable Freecam"] and type(flags["Freecam Keybind"]) == "table" and flags["Freecam Keybind"].active then
        if not freecam.enabled then
            freecam.enabled = true
            freecam.old_type = camera.CameraType
            freecam.old_behavior = uis.MouseBehavior
            camera.CameraType = Enum.CameraType.Scriptable
            uis.MouseBehavior = Enum.MouseBehavior.LockCenter
            if local_char and local_char:FindFirstChild("HumanoidRootPart") then
                local_char.HumanoidRootPart.Anchored = true
            end
            _bypass_enabled = false
        end
    else
        if freecam.enabled then
            freecam.enabled = false
            camera.CameraType = freecam.old_type
            uis.MouseBehavior = freecam.old_behavior
            if local_char and local_char:FindFirstChild("HumanoidRootPart") then
                local_char.HumanoidRootPart.Anchored = false
            end
            _bypass_enabled = true
        end
    end
    if freecam.enabled then
        local delta = uis:GetMouseDelta()
        freecam.pitch = math.clamp(freecam.pitch - delta.Y * flags["Freecam Sensitivity"], -80, 80)
        freecam.yaw   = freecam.yaw - delta.X * flags["Freecam Sensitivity"]
        camera.CFrame = CFrame.new(camera.CFrame.Position)
            * CFrame.Angles(0, math.rad(freecam.yaw), 0)
            * CFrame.Angles(math.rad(freecam.pitch), 0, 0)
        local move = Vector3.zero
        if uis:IsKeyDown(Enum.KeyCode.W) then move += Vector3.new(0,0,-1) end
        if uis:IsKeyDown(Enum.KeyCode.A) then move += Vector3.new(-1,0,0) end
        if uis:IsKeyDown(Enum.KeyCode.S) then move += Vector3.new(0,0,1)  end
        if uis:IsKeyDown(Enum.KeyCode.D) then move += Vector3.new(1,0,0)  end
        if uis:IsKeyDown(Enum.KeyCode.Space)     then move += Vector3.new(0,1,0)  end
        if uis:IsKeyDown(Enum.KeyCode.LeftShift) then move += Vector3.new(0,-1,0) end
        if move.Magnitude > 0 then
            camera.CFrame += (camera.CFrame - camera.CFrame.Position):VectorToWorldSpace(move.Unit * flags["Freecam Speed"])
        end
        if local_char and local_char:FindFirstChild("HumanoidRootPart") then
            local_char.HumanoidRootPart.CFrame = camera.CFrame
        end
    end
end

function _renderAntiAim()
    local hum  = local_char and local_char:FindFirstChild("Humanoid")
    local root = local_char and local_char:FindFirstChild("HumanoidRootPart")
    if not hum or not root then return end
    if flags["Anti Aim"] and type(flags["Spinar"]) == "table" and flags["Spinar"].active then
        if uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
            hum.AutoRotate = true
        else
            hum.AutoRotate = false
            root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(flags["Anti Aim Speed"] / 5), 0)
        end
    else hum.AutoRotate = true end
end

function StopUndergroundAAAnimation()
    local tp = target_frame.target.entry
    if tp and tp.Character then
        local hum = tp.Character:FindFirstChildOfClass("Humanoid")
        if hum and hum.Health > 0.2 then
            for _, anim in ipairs(hum:GetPlayingAnimationTracks()) do
                if anim.Animation and anim.Animation.AnimationId == "rbxassetid://13435049596" then
                    anim:Stop()
                end
            end
        end
    end
end

_mainFrame = 0
_step_ray_params = nil
run_service.RenderStepped:Connect(function(dt)
    _mainFrame += 1

    if show_hit_notification and niger then
        needmark = true
        show_hit_notification = false
        task.spawn(function()
            pcall(function()
                Library:Notification("Hit | " .. string.format("%s | -%d HP (%s)", hit_target_name, hit_damage, hit_part_name), 3)
            end)
        end)
    elseif show_hit_notification then
        show_hit_notification = false
    end

    local zoomActive = flags["Zoom"] and type(flags["Zoom Keybind"]) == "table" and flags["Zoom Keybind"].active

    local silentKB = flags["Silent Aim Keybind"]
    getgenv().silent = flags["Silent Aim"] and (type(silentKB) == "table" and silentKB.active or not silentKB)

    local shouldUpdateTargets = (_mainFrame % 2 == 0) or flags["Enable Aimbot"] or getgenv().silent or zoomActive

    if shouldUpdateTargets then
        entry, closest_part = getClosestPlayerInFOV()
    end

    if closest_part and closest_part ~= target_frame.target.part then
        target_frame.target.part     = closest_part
        target_frame.target.entry    = entry
        target_frame.target.distance = (closest_part.Position - camera.CFrame.Position).Magnitude
        StopUndergroundAAAnimation()
    end

    _renderArmorViewer()

    highlight_player = dodido and nigarzzz or target_frame.target.entry

    if target_frame.target.entry and target_frame.target.part and target_frame.target.entry ~= local_player then
        if flags["Enable Aimbot"] and (type(flags["Aimbot Keybind"]) == "table" and flags["Aimbot Keybind"].active or not flags["Aimbot Keybind"]) then
            local ep = target_frame.target.part.Position
            camera.CFrame = flags["Aimbot Speed"] ~= 1
                and camera.CFrame:Lerp(CFrame.lookAt(camera.CFrame.Position, ep), flags["Aimbot Speed"])
                or  CFrame.lookAt(camera.CFrame.Position, ep)
        end
    end

    _renderAntiAim()
    _renderFreecam()

    local fly_keybind = flags["FlyKeybind"]
    local fly_active = flags["FlyEnabled"] and typeof(fly_keybind) == "table" and fly_keybind.active
    if not fly_active and flags["Always Sprint"] and (uis:IsKeyDown(Enum.KeyCode.W) or uis:IsKeyDown(Enum.KeyCode.A) or uis:IsKeyDown(Enum.KeyCode.S) or uis:IsKeyDown(Enum.KeyCode.D)) then
        local root = local_char and local_char:FindFirstChild("HumanoidRootPart")
        local hum = local_char and local_char:FindFirstChildOfClass("Humanoid")
        if root and hum then
            local input_dir = Vector3.zero
            if uis:IsKeyDown(Enum.KeyCode.W) then input_dir += Vector3.new(0, 0, 1) end
            if uis:IsKeyDown(Enum.KeyCode.S) then input_dir -= Vector3.new(0, 0, 1) end
            if uis:IsKeyDown(Enum.KeyCode.A) then input_dir -= Vector3.new(1, 0, 0) end
            if uis:IsKeyDown(Enum.KeyCode.D) then input_dir += Vector3.new(1, 0, 0) end

            if input_dir.Magnitude > 0 then
                local look = camera.CFrame.LookVector
                local right = camera.CFrame.RightVector
                local move_dir = (look * input_dir.Z + right * input_dir.X)
                move_dir = Vector3.new(move_dir.X, 0, move_dir.Z).Unit

                local spd = flags["Sprint Speed"] or 27
                local walk_speed = hum.WalkSpeed or 16
                local extra_speed = spd - walk_speed

                if extra_speed > 0 then
                    local clamped_dt = math.min(dt or 0.016, 0.05)
                    local step_dist = extra_speed * clamped_dt

                    if not _step_ray_params then
                        _step_ray_params = RaycastParams.new()
                        _step_ray_params.FilterType = Enum.RaycastFilterType.Blacklist
                        _step_ray_params.IgnoreWater = true
                    end
                    _step_ray_params.FilterDescendantsInstances = { local_char }

                    local origin = root.Position
                    local result = workspace:Raycast(origin, move_dir * step_dist, _step_ray_params)

                    local target_pos = result and origin or origin + move_dir * step_dist
                    root.CFrame = CFrame.new(
                        Vector3.new(target_pos.X, root.Position.Y, target_pos.Z),
                        Vector3.new(target_pos.X, root.Position.Y, target_pos.Z) + move_dir
                    )
                end
            end
        end
    end

    Reso()

    if flags["Always Grounded"] then
        local root = local_char and local_char:FindFirstChild("HumanoidRootPart")
        platform.Position = root and (root.Position - Vector3.new(0,3.2,0)) or Vector3.zero
    else
        platform.Position = Vector3.zero
    end

    _renderLighting()
    _renderFOV()
    _renderSnaplines()
end)

do --// functions
    player_esp.functions.create_drawing = function(class, prop, ...)
        local inst = (typeof(class) == "string") and (Instance.new(class)) or (class)
        for property, val in pairs(prop) do
            inst[property] = val
        end
        for _, t in { ... } do
            table.insert(t, inst)
        end
        return inst
    end

    player_esp.functions.get_boundings = function(model)
        local hrp = model:FindFirstChild("HumanoidRootPart")
        if hrp then
            local cframe, size = model:GetBoundingBox()
            size = Vector3.new(math.min(size.X, 4), math.min(size.Y, 6), math.min(size.Z, 5))
            return hrp.CFrame, size, hrp.Position
        end
        return nil
    end

    _vis_ray_params = nil
    player_esp.functions.is_visible = function(character)
        if not character or character == local_player.Character then
            return false
        end

        local part = character.PrimaryPart or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
        if not part then
            return false
        end

        if not _vis_ray_params then
            _vis_ray_params = RaycastParams.new()
            _vis_ray_params.FilterType = Enum.RaycastFilterType.Blacklist
            _vis_ray_params.IgnoreWater = true
        end

        _vis_ray_params.FilterDescendantsInstances = { local_player.Character, camera }

        local origin = camera.CFrame.Position
        local direction = part.Position - origin
        local RaycastResult = workspace:Raycast(origin, direction, _vis_ray_params)
        
        return RaycastResult == nil or (RaycastResult.Instance and RaycastResult.Instance:IsDescendantOf(character))
    end

    function YallahCheckTeam(plr)
        if not plr or not plr:IsA("Player") then
            return false
        end

        local char = plr.Character
        if not char then
            return false
        end

        local head = char:FindFirstChild("Head")
        if not head then
            return false
        end

        local tg = head:FindFirstChild("TeammateGui")
        if not tg then
            return false
        end

        return tg.Enabled == true
    end

    function getteamcheck()
        if flags["Enable TeamCheck"] then
            return true
        else
            return false
        end
    end

    function cache_character_parts(character)
        return {
            "Head",
            "Torso",
            "LeftArm",
            "RightArm",
            "LeftLeg",
            "RightLeg",
        }
    end

    player_esp.functions.get_tool = function(character)
        for _, obj in ipairs(character:GetChildren()) do
            if obj:IsA("Tool") then
                return obj.Name
            end
        end
        return "None"
    end

end

;(function() --// FOV circle + snaplines IIFE
    local FieldOfView = player_esp.functions.create_drawing("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true })
    local Frame = player_esp.functions.create_drawing("Frame", {
        Visible = false,
        BackgroundTransparency = 1,
        BackgroundColor3 = Color3.new(0, 191, 255),
        Size = UDim2.new(0, (flags["FOV Radius"] or 120) * 2, 0, (flags["FOV Radius"] or 120) * 2),
        Position = UDim2.new(0, 0, 0, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Parent = FieldOfView,
        ZIndex = 2,
    })
    local UICorner = player_esp.functions.create_drawing("UICorner", { CornerRadius = UDim.new(1, 0), Parent = Frame })
    local Stroke = player_esp.functions.create_drawing(
        "UIStroke",
        { Color = Color3.new(0, 191, 255), Thickness = 2, Transparency = 0, Parent = Frame }
    )
    fov_circle.FieldOfView = FieldOfView
    fov_circle.Frame = Frame
    fov_circle.Stroke = Stroke

    local snaplines = player_esp.functions.create_drawing("ScreenGui", { Parent = cloneref(gethui()), IgnoreGuiInset = true })
    local line = player_esp.functions.create_drawing("Frame", {
        BackgroundTransparency = 0,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BorderSizePixel = 0,
        ZIndex = 2,
        Parent = snaplines,
    })
    snap_lines.snaplines = snaplines
    snap_lines.line = line
end)()

--// Zoom logic in its own task.spawn
task.spawn(function()
    local Camera = camera
    local DEFAULT_FOV = 70
    local zoom_state = {
        current_fov = Camera.FieldOfView,
        target_fov  = Camera.FieldOfView,
        animation_speed = 0.15,
        idle = false
    }
    run_service.RenderStepped:Connect(function(dt)
        if uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            zoom_state.current_fov = Camera.FieldOfView
            zoom_state.idle = false
            return
        end
        if not flags["Zoom"] and not flags["FOV"] then
            if not zoom_state.idle then
                zoom_state.current_fov = DEFAULT_FOV
                Camera.FieldOfView = DEFAULT_FOV
                zoom_state.idle = true
            end
            return
        end
        zoom_state.idle = false
        if flags["Zoom"] and type(flags["Zoom Keybind"]) == "table" and flags["Zoom Keybind"].active then
            zoom_state.target_fov = flags["Zoom Ammount"]
        elseif flags["FOV"] then
            zoom_state.target_fov = flags["FOV Ammount"]
        else
            zoom_state.target_fov = DEFAULT_FOV
        end
        zoom_state.current_fov += (zoom_state.target_fov - zoom_state.current_fov)
            * math.clamp(zoom_state.animation_speed * dt * 60, 0, 1)
        Camera.FieldOfView = zoom_state.current_fov
    end)
end)

ExpectedArguments = {Raycast={ArgCountRequired=3,Args={"Instance","Vector3","Vector3","RaycastParams"}}}
function getDirection(Origin, Position)
    return (Position - Origin).Unit * (Origin - Position).Magnitude
end

--// namecall hook
;(function()
    function ValidateArguments(Args, RayMethod)
        local Matches = 0
        if (#Args < RayMethod.ArgCountRequired) then
            return false
        end
        for Pos, Argument in next, Args do
            if (typeof(Argument) == RayMethod.Args[Pos]) then
                Matches = Matches + 1
            end
        end
        return Matches >= RayMethod.ArgCountRequired
    end

    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
        local Method = getnamecallmethod()
        local Arguments = {...}
        local self = Arguments[1]

        if not checkcaller() then
            if (Method == "FireServer" or Method == "InvokeServer") and typeof(self) == "Instance" then
                local name = self.Name
                if (name == "ReplicateMovementType" or name == "ChangedMovementType") and getgenv()._flyActive then
                    return
                end
            end

            if self == workspace and Method == "Raycast" then
                if ValidateArguments(Arguments, ExpectedArguments.Raycast) then
                    local A_Origin = Arguments[2]
                    local A_Direction = Arguments[3]

                    if getgenv().silent and closest_part then
                        local target_pos = closest_part.Position
                        A_Direction = (target_pos - A_Origin).Unit * (target_pos - A_Origin).Magnitude
                        Arguments[3] = A_Direction
                    end

                    return oldNamecall(unpack(Arguments))
                end
            end
        end

        return oldNamecall(...)
    end))
end)()

do --// handling
    local_player.CharacterAdded:Connect(function(character)
        local_char = character
    end)
end

niger = false

function getHumanoidFromRaycast(hitResult)
    if not hitResult or not hitResult.Instance then return end

    local part = hitResult.Instance
    local model = part:FindFirstAncestorOfClass("Model")
    if not model then return end

    local humanoid = model:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    return humanoid, model, part
end

activeHits = {}

oldHit = GunClient.hit

function GunClient:hit(hitResult, ...)
    if oldHit then
        oldHit(self, hitResult, ...)
    end

    local humanoid, character, hitPart = getHumanoidFromRaycast(hitResult)
    if not humanoid then return end

    local player = players:GetPlayerFromCharacter(character)
    if not player or player == local_player then return end

    if activeHits[humanoid] then return end
    activeHits[humanoid] = true

    local oldHealth = humanoid.Health
    local hitType = (hitPart and hitPart.Name == "Head") and "HEADSHOT" or "HIT"

    local connection
    connection = humanoid.HealthChanged:Connect(function(newHealth)
        if newHealth >= oldHealth then return end

        local damage = math.floor(oldHealth - newHealth)

        if damage > 0 then
            hit_target_name = player.Name
            hit_part_name = hitPart.Name
            hit_damage = damage

            show_hit_notification = true
            needmark = true
        end

        connection:Disconnect()
        activeHits[humanoid] = nil
    end)

    task.delay(0.5, function()
        if activeHits[humanoid] then
            activeHits[humanoid] = nil
            if connection then
                connection:Disconnect()
            end
        end
    end)
end

--// Third person via RenderStepped
run_service.RenderStepped:Connect(function()
    if not flags["Third Person"] then return end
    if not (type(flags["Third Person Key"]) == "table" and flags["Third Person Key"].active) then return end
    if type(flags["Freecam Keybind"]) == "table" and flags["Freecam Keybind"].active and flags["Enable Freecam"] then return end

    local cam = workspace.CurrentCamera
    if not cam then return end
    local dist = flags["Third Person Distance"] or 5
    cam.CFrame = cam.CFrame + cam.CFrame.LookVector * -dist
end)

Library:Notification('loaded propperly', 5)
