-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").clangd.setup({
  cmd = {
    "clangd",
    "--query-driver=/home/kaidodev/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc",
    "--background-index",
  },
})
