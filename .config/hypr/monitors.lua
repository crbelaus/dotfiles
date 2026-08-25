-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1.25

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Configure the monitors so the laptop one sits to the left of the external one.
hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "0x0",    scale = omarchy_monitor_scale })
-- The position is in logical pixels (post-scale) so 1920 / 1.25 = 1536
hl.monitor({ output = "DP-2",  mode = "3840x2160@60", position = "1536x0", scale = omarchy_monitor_scale })
-- Fallback for any other monitor that we may plug in
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Workspace 10 is bound to the laptop monitor
hl.workspace_rule({ workspace = "10", monitor = "eDP-1", persistent = true })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })
