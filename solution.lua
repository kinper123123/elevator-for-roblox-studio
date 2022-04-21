local players = not script.Parent:FindFirstChild("IgnorePlayers")

local boxes = not script.Parent FindFirstChild("ignoreBoxes") local speed = script.Parent FindFirstChild("Speed") and script.Parent Speed Value or 40

function touched(part)

local torso = part.Parent:FindFirstChild("Torso") or part

if not torso:FindFirstChild("ElevatorVelocity) and (part.Parent:FindFirstChild("Humanoid") and players) or (part.Name == "PushBox' and boxes)

and not (script.Parent FindFirstChild("Activated") and not script.Parent.Activated.Value) then

local velocity = Instance.new("BodyVelocity", torso) velocity.Name = "ElevatorVelocity"

local uv-script.Parent.CFrame. UpVector

local maxf Vector3.new(0,math huge,0)

if uv.X -=0 then maxf = Vector3.new(math.huge, maxf.Y, maxf.Z) end if uv.Z - 0 then maxf Vector3.new(maxf.X, maxf.Y, math.huge) end

velocity.MaxForce = maxf

velocity. Velocity = script.Parent.CFrame.UpVector*speed

end end

function touch Ended(part)

local torso = part.Parent FindFirstChild("Torso") or part if torso:FindFirstChild("ElevatorVelocity") and (part.Parent:FindFirstChild("Humanoid') and players) or (part.Name == 'PushBox" and boxes) then

torso.ElevatorVelocity Destroy() end end

script.Parent. Touched:Connect(touched) script.Parent. TouchEnded:Connect(touchEnded)
