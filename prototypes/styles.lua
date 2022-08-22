local mod_name = "hidden-technologies"
local ht_style = {
    [mod_name.."_frame_style"] = {
        type = 'frame_style',
        parent = 'frame'
    },
    [mod_name.."_flow_style"] = {
        type = 'horizontal_flow_style',
        parent = 'horizontal_flow'
    },
    [mod_name.."_button_style"] = {
        type = 'button_style',
        parent = 'button',
        size = {145,200}
    }
}
local function WriteData()
    for k, v in pairs(ht_style) do
        data.raw["gui-style"]["default"][k] = v        
    end
end

WriteData()