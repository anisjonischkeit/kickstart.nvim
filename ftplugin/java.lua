local config = {
  cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

vim.wait(10000, function()
  vim.print(vim.g.gradle_set_classpath)
  return vim.g.gradle_set_classpath
end, 1000)
vim.fn['classpath#generateClasspath']()

require('jdtls').start_or_attach(config)
