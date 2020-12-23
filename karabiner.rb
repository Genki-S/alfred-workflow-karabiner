class Karabiner
  EXE = '/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli'

  def run(*cmds)
    `'#{EXE}' --list-profile-names #{cmds.join(' ')}`
  end

  def switch(profile)
    `'#{EXE}' --select-profile '#{profile}'`
  end
end
