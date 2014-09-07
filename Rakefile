task :default => [:tmp_dirs, :update, :link]

desc %(Bring bundles up to date)
task :update do
  sh "git submodule sync >/dev/null"
  sh "git submodule update --init"
end

desc %(Update each submodule from its upstream)
task :submodule_pull do
  system %[git submodule foreach '
        git pull --quiet --ff-only --no-rebase origin master &&
        git log --no-merges --pretty=format:"%s %Cgreen(%ar)%Creset" --date=relative master@{1}..
        echo
      ']
end

desc %(Make ~/.vimrc and ~/.gvimrc symlinks)
task :link do
  %w[vimrc gvimrc].each do |script|
    dotfile = File.join(ENV['HOME'], ".#{script}")
    if File.exist? dotfile
      warn "~/.#{script} already exists"
    else
      ln_s File.join('.vim', script), dotfile
    end
  end
end

task :tmp_dirs do
  mkdir_p "_backup"
  mkdir_p "_temp"
end

