local config = {
    cmd = {'/path/to/jdt-language-server/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

vim.bo.shiftwidth = 4    
vim.bo.tabstop = 4       
vim.bo.softtabstop = 4   
vim.bo.expandtab = true  
vim.bo.autoindent = true 
vim.bo.smartindent = true

