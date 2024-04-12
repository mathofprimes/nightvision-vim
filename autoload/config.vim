" Declare vim9script
vim9script

# Function which returns available configurations, 
# made by the user, or default configurations if none are made. 
export def Config(): dict<string>
    return {
        # Background color in dark mode.
        nv_dark: get(g:, "nv_dark", "pure"),

        # Background color in light mode.
        nv_light: get(g:, "nv_light", "pure"),

        # Contrast level.
        nv_contrast: get(g:, "nv_contrast", "medium"),
	    
        # Night light function. Changes background color
        # depending on time of day.
        nv_nightlight: get(g:, "nv_nightlight", "off")
    }
enddef
