local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Font
config.font = wezterm.font_with_fallback({"JetBrainsMono Nerd Font"})
config.font_size = 13.0

-- Theme and Color
config.color_scheme = "Tokyo Night"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20
config.text_background_opacity = 1.0

-- Cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_thickness = 1.0
config.force_reverse_video_cursor = true
config.colors = {
    cursor_bg = "#ffaf00",
    cursor_border = "#ffaf00",
    cursor_fg = "#ffaf00"
}

-- Window appearance
config.window_decorations = "NONE" -- removes titlebar like Ghostty
config.window_padding = {
    left = 8,
    right = 8,
    top = 4,
    bottom = 4
}
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Shell
config.default_prog = {"zsh"}

-- Quick terminal (dropdown-like)
config.leader = {
    key = "j",
    mods = "CTRL",
    timeout_milliseconds = 1000
}
config.keys = {{
    key = "c",
    mods = "CTRL",
    action = wezterm.action.CopyTo("Clipboard")
}, {
    key = "v",
    mods = "CTRL",
    action = wezterm.action.PasteFrom("Clipboard")
}, {
    key = "r",
    mods = "CTRL",
    action = wezterm.action.ReloadConfiguration
}, {
    key = "j",
    mods = "CTRL",
    action = wezterm.action.TogglePaneZoomState
}}

-- Ghostty-like smoothness
config.animation_fps = 120
config.max_fps = 120
config.front_end = "WebGpu" -- ensures GPU acceleration

return config
