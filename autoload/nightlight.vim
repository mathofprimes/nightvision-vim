" Declare vim9script
vim9script

# List of colors
export def Nightlight(): list<string>
    # Get current hour
    var hour = str2nr(strftime("%H"))
    
    # List of colors with from colors with the most
    # blue to most red.
    var time_colors: list<list<string>> = [
        ["teal", "teal"], #1
        ["teal", "aqua"], #2
        ["aqua", "aqua"], #3
        ["aqua", "gray"], #4
        ["gray", "gray"], #5
        ["gray", "sage"], #6
        ["sage", "sage"], #7
        ["sage", "jade"], #8
        ["jade", "jade"], #9
        ["jade", "pure"], #10
        ["pure", "pure"], #11
        ["pure", "lime"], #12
        ["lime", "lime"], #13
        ["lime", "drab"], #14
        ["drab", "drab"], #15
        ["drab", "pear"], #16
        ["pear", "pear"], #17
        ["pear", "pear"], #18
        ["pear", "pear"], #19
        ["pear", "pear"], #20
        ["pear", "pear"], #21
        ["pear", "pear"], #22
        ["pear", "pear"], #23
        ["pear", "pear"]  #24
    ]
    
    return time_colors[hour]
enddef
