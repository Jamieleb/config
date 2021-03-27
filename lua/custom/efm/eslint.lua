return {
  lintCommand = 'npx eslint --stdin --stdin-filename ${INPUT} -f unix',
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "npx eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}
