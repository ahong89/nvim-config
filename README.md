# nvim config
This is my config for nvim that I will continually update as things change.

## How to use
Make a new folder called nvim in the .config folder i.e.:\
```~/.config/nvim```\
Then clone the repo's contents into the new folder with:\
```git clone https://github.com/ahong89/nvim-config .```\
Be sure to include the dot as to ensure git does not make an nvim-config folder\

## Requirements
- ripgrep (optional: also fd for find_files)
```sudo apt install ripgrep```
or alternatively
```brew install ripgrep fd```

- luarocks (unavailable on mac os by default, unsure about wsl setup)
```brew install luarocks```

## Notes
The entire config was built to run on wsl however am currently adding compatibility to work on mac OS. (6/3/26)

The config will throw a bunch of errors and warnings in `:checkhealth` if you don't have a lot of language features
installed (such as python itself, black, go, ts, etc...). Just install as needed.

