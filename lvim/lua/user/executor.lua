local status_ok, executor = pcall(require, 'executor')
if not status_ok then
  return
end

lvim.builtin.which_key.mappings['e'] = {
  name = "+Executor",
  e = { '<cmd>ExecutorToggleDetail<cr>', 'toggle details' },
  r = { '<cmd>ExecutorRun<cr>', 'run' },
  c = { '<cmd>ExecutorSetCommand<cr>', 'set executor command' },
  p = { "<cmd>ExecutorSwapToPopup<cr>", 'set executor details to popup' },
  s = { "<cmd>ExecutorSwapToSplit<cr>", 'set executor details to split' },
  R = { "<cmd>ExecutorReset<cr>", 'reset executor' },
}
