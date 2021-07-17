local theme_assets = require('beautiful.theme_assets')
local xresources = require('beautiful.xresources')
local dpi = xresources.apply_dpi

local gears = require('gears')
local themes_path = '~/.config/awesome/'

local theme = {}

theme.font          = 'sans 10'

theme.bg_normal     = '#222222'
theme.bg_focus      = '#535d6c'
theme.bg_urgent     = '#ff0000'
theme.bg_minimize   = '#444444'
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = '#00b8ff'
theme.fg_focus      = '#ffffff'
theme.fg_urgent     = '#ffffff'
theme.fg_minimize   = '#ffffff'

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(1)
theme.border_normal = '#00000000'
theme.border_focus  = '#535d6c'
theme.border_marked = '#91231c'

theme.taglist_fg_focus    = '#3992af'
theme.taglist_fg_occupied = '#164b5d'
theme.taglist_fg_urgent   = '#ED7572'
theme.taglist_fg_empty    = '#828282'
theme.taglist_spacing     = 2
theme.taglist_font = 'awesomewm-font 13'

theme.titlebar_bg        = '#000000'
theme.titlebar_bg_normal = '#222222'

theme.notification_font         = 'sans 12'
theme.notification_fg           = '#eeeeeeee'
theme.notification_bg           = '#36393fe0'
theme.notification_border_color = '#292b2f70'
theme.notification_width        = 380
theme.notification_max_height   = 260
theme.notification_icon_size    = 64

theme.notification_shape      = function(cr,w,h)
   gears.shape.rounded_rect(cr,w,h,8)
end

theme.wibar_height = 20
theme.systray_icon_spacing = 5

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- theme.menu_submenu_icon = themes_path..'default/submenu.png'
 
theme.titlebar_close_button_normal = themes_path..'icons/close_normal.svg'
theme.titlebar_close_button_focus  = themes_path..'icons/close_focus.svg'

theme.titlebar_minimize_button_normal = themes_path..'icons/minimize_normal.svg'
theme.titlebar_minimize_button_focus  = themes_path..'icons/minimize_focus.svg'

theme.titlebar_ontop_button_normal_inactive = themes_path..'icons/ontop_normal_inactive.svg'
theme.titlebar_ontop_button_focus_inactive  = themes_path..'icons/ontop_focus_inactive.svg'
theme.titlebar_ontop_button_normal_active = themes_path..'icons/ontop_normal_active.svg'
theme.titlebar_ontop_button_focus_active  = themes_path..'icons/ontop_focus_active.svg'

theme.titlebar_sticky_button_normal_inactive = themes_path..'icons/sticky_normal_inactive.svg'
theme.titlebar_sticky_button_focus_inactive  = themes_path..'icons/sticky_focus_inactive.svg'
theme.titlebar_sticky_button_normal_active = themes_path..'icons/sticky_normal_active.svg'
theme.titlebar_sticky_button_focus_active  = themes_path..'icons/sticky_focus_active.svg'

theme.titlebar_floating_button_normal_inactive = themes_path..'icons/floating_normal_inactive.svg'
theme.titlebar_floating_button_focus_inactive  = themes_path..'icons/floating_focus_inactive.svg'
theme.titlebar_floating_button_normal_active = themes_path..'icons/floating_normal_active.svg'
theme.titlebar_floating_button_focus_active  = themes_path..'icons/floating_focus_active.svg'

theme.titlebar_maximized_button_normal_inactive = themes_path..'icons/maximized_normal_inactive.svg'
theme.titlebar_maximized_button_focus_inactive  = themes_path..'icons/maximized_focus_inactive.svg'
theme.titlebar_maximized_button_normal_active = themes_path..'icons/maximized_normal_active.svg'
theme.titlebar_maximized_button_focus_active  = themes_path..'icons/maximized_focus_active.svg'

theme.wallpaper = themes_path..'wall.jpeg'

-- You can use your own layout icons like this:
--[[
theme.layout_fairh = themes_path..'default/layouts/fairhw.svg'
theme.layout_fairv = themes_path..'default/layouts/fairvw.svg'
theme.layout_floating  = themes_path..'default/layouts/floatingw.svg'
theme.layout_magnifier = themes_path..'default/layouts/magnifierw.svg'
theme.layout_max = themes_path..'default/layouts/maxw.svg'
theme.layout_fullscreen = themes_path..'default/layouts/fullscreenw.svg'
theme.layout_tilebottom = themes_path..'default/layouts/tilebottomw.svg'
theme.layout_tileleft   = themes_path..'default/layouts/tileleftw.svg'
theme.layout_tile = themes_path..'default/layouts/tilew.svg'
theme.layout_tiletop = themes_path..'default/layouts/tiletopw.svg'
theme.layout_spiral  = themes_path..'default/layouts/spiralw.svg'
theme.layout_dwindle = themes_path..'default/layouts/dwindlew.svg'
theme.layout_cornernw = themes_path..'default/layouts/cornernww.svg'
theme.layout_cornerne = themes_path..'default/layouts/cornernew.svg'
theme.layout_cornersw = themes_path..'default/layouts/cornersww.svg'
theme.layout_cornerse = themes_path..'default/layouts/cornersew.svg'
]]
-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
   theme.menu_height, '#fa5b5b', theme.bg_normal
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
