dep 'toolbelt' do
  requires 'less.bin', 'curl.bin', 'bzip2.bin', 'patch.bin', 'htop.bin', 'atop.bin', 'python.bin', 'lsof.bin', 'bash-completion.bin', 'logwatch.bin', 'mailutils.bin', 'psmisc.bin'
end

dep 'less.bin', :template => 'bin' do
  installs {
    via :apt, 'less'
  }
  provides 'less'
end

dep 'curl.bin', :template => 'bin' do
  installs {
    via :apt, 'curl'
  }
  provides 'curl'
end

dep 'bzip2.bin', :template => 'bin' do
  installs {
    via :apt, 'bzip2'
  }
  provides 'bzip2'
end

dep 'patch.bin', :template => 'bin' do
  installs {
    via :apt, 'patch'
  }
  provides 'patch'
end

dep 'htop.bin', :template => 'bin' do
  installs {
    via :apt, 'htop'
  }
  provides 'htop'
end

dep 'atop.bin', :template => 'bin' do
  installs {
    via :apt, 'atop'
  }
  provides 'atop'
end

dep 'python.bin', :template => 'bin' do
  installs {
    via :apt, 'python'
  }
  provides 'python'
end

dep 'lsof.bin', :template => 'bin' do
  installs {
    via :apt, 'lsof'
  }
  provides 'lsof'
end

dep 'bash-completion.bin', :template => 'bin' do
  installs {
    via :apt, 'bash-completion'
  }
  provides []
end

dep 'logwatch.bin', :template => 'bin' do
  installs {
    via :apt, 'logwatch'
  }
  provides 'logwatch'
end

dep 'mailutils.bin', :template => 'bin' do
  installs {
    via :apt, 'mailutils'
  }
  provides 'mail.mailutils'
end

dep 'psmisc.bin', :template => 'bin' do
  installs {
    via :apt, 'psmisc'
  }
  provides 'psmisc'
end
