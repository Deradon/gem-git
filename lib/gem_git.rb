require 'tmpdir'

module GemGit
  # Install a ruby gem from git path
  def self.install(repo_path)
    temp_dir = Dir.mktmpdir
    begin
      clone_git(repo_path, temp_dir)
      install_gem(temp_dir)
    ensure
      # remove the directory.
      FileUtils.remove_entry_secure temp_dir
    end
  end

  def self.clone_git(repo_path, directory)
    cmd = "cd #{directory} && git clone #{repo_path}"
    Kernel.system(cmd)
  end

  def self.install_gem(directory)
    cd = "cd #{directory}/* && "

    Kernel.system("#{cd} gem build *.gemspec")
    Kernel.system("#{cd} gem install *.gem")
  end
end

