using MKL
using Revise
using MakieCore

gruvbox() = (;
    foreground = "#EBDBB2",
    background = "#282828",
    comment = "#928374",
    blue = "#83A598",
    red = "#FB4934",
    green = "#B8BB26",
    orange = "#FE8019",
    magenta = "#D3869B",
    yellow = "#FABD2F",
    cyan = "#8EC07C",
)

dracula() = (;
    foreground = "#f8f8f2",
    background = "#282a36",
    comment = "#6272a4",
    blue = "#bd93f9",
    magenta = "#ff79c6",
    yellow = "#f1fa8c",
    green = "#50fa7b",
    red = "#ff5555",
    cyan = "#8be9fd",
    orange = "#ffb86c",
)

monokai() = (;
    foreground = "#F8F8F2",
    background = "#272822",
    comment = "#75715E",
    blue = "#66d9ef",
    red = "#f92672",
    green = "#a6e22e",
    orange = "#FD971F",
    yellow = "#f4bf75",
    magenta = "#ae81ff",
    cyan = "#a1efe4",
)

function hardanger(c)
    set_theme!(
        Theme(;
            palette = (; color = [c[i] for i = 4:length(c)]),
            backgroundcolor = c.background,
            textcolor = c.foreground,
            linecolor = c.foreground,
            # colormap = [color(c[i]) for i = 4:length(c)],
            # colormap = color.([c.blue, c.comment, c.red]),
            # colormap = color.([c.blue, c.red]),
            # colormap = color.([c.blue, c.green, c.yellow]),
            Axis = (
                backgroundcolor = :transparent,
                bottomspinecolor = c.foreground,
                topspinecolor = c.foreground,
                leftspinecolor = c.foreground,
                rightspinecolor = c.foreground,
                xgridcolor = c.comment,
                ygridcolor = c.comment,
                xtickcolor = c.foreground,
                ytickcolor = c.foreground,
            ),
            Legend = (framecolor = c.foreground, bgcolor = c.background),
            Axis3 = (
                xgridcolor = c.comment,
                ygridcolor = c.comment,
                zgridcolor = c.comment,
                xspinecolor_1 = c.foreground,
                yspinecolor_1 = c.foreground,
                zspinecolor_1 = c.foreground,
                xspinecolor_2 = c.foreground,
                yspinecolor_2 = c.foreground,
                zspinecolor_2 = c.foreground,
                xspinecolor_3 = c.foreground,
                yspinecolor_3 = c.foreground,
                zspinecolor_3 = c.foreground,
                xticklabelpad = 3,
                yticklabelpad = 3,
                zticklabelpad = 6,
                xtickcolor = c.foreground,
                ytickcolor = c.foreground,
                ztickcolor = c.foreground,
            ),
            Colorbar = (
                tickcolor = c.foreground,
                spinecolor = c.foreground,
                topspinecolor = c.foreground,
                bottomspinecolor = c.foreground,
                leftspinecolor = c.foreground,
                rightspinecolor = c.foreground,
            ),
        ),
    )
end
