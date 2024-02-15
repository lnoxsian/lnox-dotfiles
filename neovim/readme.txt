so for whatever reason you need to open the config please 
remember that there is a .config/ dir with all the configs for neovim
base dir
--------
neovim -- base dir
└── .config -- .config for folder in home
    └── nvim -- base config dir
        ├── init.lua -- main file for loading the lua configs
        ├── lazy-lock.json
        └── lua -- all settings load folder
            ├── lnoxsian-plugins -- plugins settings
            │   ├── plugins.lua
            │   └── plugset.lua
            └── lnoxsian-settings -- user settings
                ├── genset.lua
                ├── keyset.lua
                └── neovide.lua
