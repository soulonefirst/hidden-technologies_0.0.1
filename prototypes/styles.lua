local ht_style = {
    ht_choose_frame_style = {
        type = 'frame_style',
        parent = 'frame'
    },
    ht_content_frame_style = {
        type = 'frame_style',
        parent = 'frame'
    },
    ht_controls_flow_style = {
        type = 'horizontal_flow_style',
        parent = 'horizontal_flow'
    },
    ht_choose_button_style = {
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