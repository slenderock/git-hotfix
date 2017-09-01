class StealAction
  class << self
    def call(args, options, cmds = [])
      cmds << "git rebase --exec 'git commit --amend --reset-author --no-edit' --root"
      cmds << 'git push -f'
      { cmds: cmds, danger: true }
    end
  end
end
