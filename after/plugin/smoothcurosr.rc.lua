local status, smoothcursor = pcall(require, 'smoothcursor')
if (not status) then
  print('smoothcursor is not installed')
  return
end

smoothcursor.setup {
  fancy = {
    enable = true
  }
}
