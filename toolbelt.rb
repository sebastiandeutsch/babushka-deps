dep 'toolbelt' do
  requires [
    'less.bin',
    'curl.bin',
    'bzip2.bin',
    'patch.bin',
    'htop.bin',
    'atop.bin',
    'python.bin',
    'lsof.bin',
    'bash-completion.lib',
    'logwatch.bin',
    'mailutils.bin',
    'psmisc.lib',
    'lsb-release.bin'
  ]
end

# For these, the installs and provides both match the dep name, so they
# can be ommitted. Also, the '.bin' in the name sets the template, so
# there's no need for the :template option.
dep 'less.bin'
dep 'curl.bin'
dep 'bzip2.bin'
dep 'patch.bin'
dep 'htop.bin'
dep 'atop.bin'
dep 'python.bin'
dep 'lsof.bin'
dep 'logwatch.bin'

# These don't provide a binary, so should use 'lib' instead -- if provides
# is empty, babushka has no binary to check for.
dep 'bash-completion.lib'
dep 'psmisc.lib'

# For these two, you've got a custom provides, but installs can still be
# inferred from the dep name.
dep 'mailutils.bin' do
  provides 'mail.mailutils'
end

dep 'lsb-release.bin' do
  provides 'lsb_release'
end