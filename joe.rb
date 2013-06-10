dep 'joe', :template => 'bin' do
  installs {
    via :apt, 'joe'
  }
  after {
    shell "sed -i -e 's/^ -nobackups/-nobackups/' /etc/joe/joerc"
  }
end
