#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file 	'/myfile' do
	content "Hello Dear Students!! File is being edited"
	action	:create
end

execute "run a script" do
	command <<-EOH
	mkdir /jkdir
	touch	/jkfile
	EOH
end

user	'raj' do
	action	:create
end
user	"javid"
user	"ahmed"

package "mysql"
file	"/newfile5"

group "devops" do
	action	:create
	members	'raj'
	append	true
end

group	"aws"

user	"hamza"

group 	"hyderabad"
