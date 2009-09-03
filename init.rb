require 'redmine'

Redmine::Plugin.register :redmine_taskjuggler do
  name 'Redmine Taskjuggler plugin'
  author 'Chris Mann'
  description 'This plug exports project status into TaskJuggler and will import the dates too !'
  version '0.0.2'
  #menu :application_menu, :tjstatus, { :controller => 'tjstatus', :action => 'index' }, :caption => 'Task Juggler'
  permission :taskjuggler, {:taskjuggler => [:index, :export, :initial_export]}, :public => true
  menu :project_menu, :taskjuggler, { :controller => 'taskjuggler', :action => 'test' }, :caption => 'Task Juggler File', :after => :activity, :param => :project_identifier
end