directory_name = "tmp"
Dir.mkdir(directory_name) unless File.exists?(directory_name) # TODO fix race condition
Dir.chdir(directory_name) 
repo_name = "mapshaper"
unless File.exists?(repo_name)
    `git clone https://github.com/mbloch/#{repo_name}`
end
Dir.chdir(repo_name)
`git pull`
system("git shortlog -s -n")