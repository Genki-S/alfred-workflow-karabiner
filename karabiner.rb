class Karabiner
  EXE = '/Applications/Karabiner.app/Contents/Library/bin/karabiner'

  def run(*cmds)
    `#{EXE} #{cmds.join(' ')}`
  end
end
