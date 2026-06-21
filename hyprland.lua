-- https://wiki.hypr.land/Configuring/Start/
-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

--require("modules.binds")
--require("modules.env")





--      \     |   | __ __|  _ \        ___| __ __|   \      _ \ __ __|
--     _ \    |   |    |   |   |     \___ \    |    _ \    |   |   |
--    ___ \   |   |    |   |   |           |   |   ___ \   __ <    |
--  _/    _\ \___/    _|  \___/      _____/   _| _/    _\ _| \_\  _|
--
require("sources/startup")





--   __ \   ____|   ____|  \     |   |  |   __ __|         \      _ \    _ \    ___|
--   |   |  __|     |     _ \    |   |  |      |          _ \    |   |  |   | \___ \
--   |   |  |       __|  ___ \   |   |  |      |         ___ \   ___/   ___/        |
--  ____/  _____| _|   _/    _\ \___/  _____| _|       _/    _\ _|     _|     _____/
--
--local terminal = "kitty"
--local fileManager = "thunar"





--   \  |   _ \    \  | _ _| __ __|  _ \    _ \    ___|
--  |\/ |  |   |    \ |   |     |   |   |  |   | \___ \
--  |   |  |   |  |\  |   |     |   |   |  __ <        |
-- _|  _| \___/  _| \_| ___|   _|  \___/  _| \_\ _____/
--
require("sources/monitors")





--  ____| \ \   /  ____|       ___|     \      \  |  __ \ \ \   /
--  __|    \   /   __|        |        _ \      \ |  |   | \   /
--  |         |    |          |       ___ \   |\  |  |   |    |
--  _____|   _|   _____|     \____| _/    _\ _| \_| ____/    _|
--
require("sources/look_feel")
require("sources/animations")





--   |  /  ____| \ \   /  __ ) _ _|   \  |  __ \ _ _|   \  |   ___|   ___|
--   ' /   __|    \   /   __ \   |     \ |  |   |  |     \ |  |     \___ \
--   . \   |         |    |   |  |   |\  |  |   |  |   |\  |  |   |       |
--  _|\_\ _____|    _|   ____/ ___| _| \_| ____/ ___| _| \_| \____| _____/
--
require("sources/keybinds")






--  \ \        / _ _|   \  |  __ \    _ \ \ \        /       _ \   |   |  |      ____|   ___|
--   \ \  \   /    |     \ |  |   |  |   | \ \  \   /       |   |  |   |  |      __|   \___ \
--    \ \  \ /     |   |\  |  |   |  |   |  \ \  \ /        __ <   |   |  |      |           |
--     \_/\_/    ___| _| \_| ____/  \___/    \_/\_/        _| \_\ \___/  _____| _____| _____/
--
require("sources/windows_workspaces")





--   ____|   \  | \ \     /     \ \     /  \      _ \
--   __|      \ |  \ \   /       \ \   /  _ \    |   |
--   |      |\  |   \ \ /         \ \ /  ___ \   __ <
--  _____| _| \_|    \_/           \_/ _/    _\ _| \_\
--
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "<theme-name ex: rose-pine-hyprcursor>")

hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "rose-pine-hyprcursor")





--  _ _|   \  |   _ \   |   | __ __|
--    |     \ |  |   |  |   |    |
--    |   |\  |  ___/   |   |    |
--  ___| _| \_| _|     \___/    _|
--
hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 3,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})





--   _ \   ____|   _ \    \  | _ _|   ___|   ___| _ _|   _ \    \  |   ___|
--  |   |  __|    |   |  |\/ |   |  \___ \ \___ \   |   |   |    \ | \___ \
--  ___/   |      __ <   |   |   |        |      |  |   |   |  |\  |       |
--  _|    _____| _| \_\ _|  _| ___| _____/ _____/ ___| \___/  _| \_| _____/
--
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons
hl.config({
    ecosystem = {
        enforce_permissions = true,
    },
})
-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")





--    \  | _ _|   ___|    ___|
--   |\/ |   |  \___ \   |
--   |   |   |        |  |
--  _|  _| ___| _____/  \____|
--
hl.config({
    misc = {
        force_default_wallpaper = 1,  -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})
