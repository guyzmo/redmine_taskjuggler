<!DOCTYPE html>
<html>

  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="description" content="Redmine Taskjuggler Plugin : Redmine and TaskJuggler Integration">

    <link rel="stylesheet" type="text/css" media="screen" href="stylesheets/stylesheet.css">

    <title>Redmine Taskjuggler Plugin</title>
  </head>

  <body>

    <!-- HEADER -->
    <div id="header_wrap" class="outer">
        <header class="inner">
          <a id="forkme_banner" href="https://github.com/chris2fr/redmine_taskjuggler">View on GitHub</a>

          <h1 id="project_title">Redmine Taskjuggler Plugin</h1>
          <h2 id="project_tagline">Redmine and TaskJuggler Integration</h2>

            <section id="downloads">
              <a class="zip_download_link" href="https://github.com/chris2fr/redmine_taskjuggler/zipball/master">Download this project as a .zip file</a>
              <a class="tar_download_link" href="https://github.com/chris2fr/redmine_taskjuggler/tarball/master">Download this project as a tar.gz file</a>
            </section>
        </header>
    </div>

    <!-- MAIN CONTENT -->
    <div id="main_content_wrap" class="outer">
      <section id="main_content" class="inner">
        <h1>
<a id="redmine_taskjuggler-plugin" class="anchor" href="#redmine_taskjuggler-plugin" aria-hidden="true"><span class="octicon octicon-link"></span></a>Redmine_Taskjuggler plugin</h1>

<p>This is Redmine <a href="http://www.redmine.org">http://www.redmine.org</a> and TaskJuggler (tm) <a href="http://www.taskjuggler.org">http://www.taskjuggler.org</a> integration maintained on the Github project page <a href="https://github.com/chris2fr/redmine_taskjuggler">https://github.com/chris2fr/redmine_taskjuggler</a>. Like Oreos (tm) and milk, Redmine and Taskjuggler are made for each other!</p>

<p>Further documentation to this README can be found in the subfolder ./doc/: HOWTOs, diagrams, notes, credits, license, and todo.</p>

<p>Copyright (C) 2009 - 2015 Christopher Mann <a href="mailto:christopher@mann.fr">christopher@mann.fr</a> AGPL v.3 (<a href="./LICENSE.md">see LICENSE.md</a> and CREDITS.rdoc)</p>

<p>Taskjuggler is available at <a href="http://www.taskjuggler.org">http://www.taskjuggler.org</a>. It is fantastic capacity planning software!</p>

<h2>
<a id="features" class="anchor" href="#features" aria-hidden="true"><span class="octicon octicon-link"></span></a>Features</h2>

<p>Here is what this plugin does with you :</p>

<ul>
<li>Exports from Redmine a Taskjuggler project</li>
<li>Imports into Redmine Dates and Efforts from a Taskjuggle_Redmine CSV file ("Redmine","Start","End","Priority","Effort","Dependencies")</li>
<li>Converts time-entries in Redmine to journal entries in Taskjuggler (ordering them hour-to-hour for Task-juggler bookings) </li>
<li>New (from Workload) : Sets up time sheets for resources with Redmine TimeEntries as a datastore</li>
<li>New (from Workload) : Pre-reserves slots for resources into TaskJuggler from the Redmine TimeEntries datastore</li>
</ul>

<h2>
<a id="notes-on-the-current-version-012-beta" class="anchor" href="#notes-on-the-current-version-012-beta" aria-hidden="true"><span class="octicon octicon-link"></span></a>Notes on the current version 0.1.2-beta</h2>

<p>This is a begining beta release. It works, and we have incorporated a major new feature set from RedmineWorkload.</p>

<p>Reserves :</p>

<ul>
<li>On the project being compiled, you need to input by hand the tj_period such that the start and end dates are coherent with the project (yyyy-mm-dd - yyyy-mm-dd). In the future I can change them with containing TimeEntries.</li>
<li>In some cases, and I have not yet been able to reproduce this, the TJP file will have the keywork start without a date in a task. This will cause the TJ3 program to fail to compile and you need to change it by hand by removing start or adding a date. Please tell me if you can reproduce.</li>
</ul>

<h2>
<a id="running-automated-tests" class="anchor" href="#running-automated-tests" aria-hidden="true"><span class="octicon octicon-link"></span></a>Running automated tests</h2>

<p><code>rake redmine:plugins:test</code>
  I think you can add NAME="redmine_taskjuggler" or PLUGIN="redmine_taskjuggler"</p>

<h2>
<a id="notes-on-the-previous-version-011-alpha" class="anchor" href="#notes-on-the-previous-version-011-alpha" aria-hidden="true"><span class="octicon octicon-link"></span></a>Notes on the previous version 0.1.1-alpha</h2>

<p>This is an advanced alpha release. It works, but one should follow a few indications.</p>

<ul>
<li>Estimated Time is the remaining estimated time.</li>
<li>Do not use the Follows and Preceeds in Redmine itself</li>
<li>Activate individually the projects, issues, and users for Redmine</li>
<li>The screens modify issue/update, project/settings, admin/user/form</li>
<li>You will need to input the necessary data manually everywhere</li>
<li>TimeEntries are not yet implemented</li>
</ul>

<p>The basic idea is that you :</p>

<ol>
<li>set up the model in Redmine first,</li>
<li>then export the TJP file,</li>
<li>then compute the TJP file on your own computer, </li>
<li>and then upload the computed CSV file to redmine.</li>
</ol>

<p>Here are the features under developement:</p>

<ul>
<li>Bookings</li>
<li>TimeEntry calibration (TaskJuggler likes to know exactly when the work was done.)</li>
<li>Organize features form version 0.0.2</li>
<li>Tests</li>
<li>Estimated Effort calibration</li>
<li>Have the computation done on the server (I suppose that would need factoring of the backends)</li>
<li>Integrate with Redmine Workload</li>
<li>Do manual</li>
<li>More fields</li>
</ul>

<p>Here is the backlog</p>

<ul>
<li>Sanity check for the information in Redmine for TaskJuggler</li>
<li>Bulk-edit of issues for TJ</li>
<li>Dealing with the Follows and Preceeds in Redmine</li>
<li>Activate or disactivate plugin</li>
<li>Deal with permissions</li>
<li>Disactivate unused fields</li>
<li>Document mapping decisions</li>
<li>Look into Feng's Django implementation to see if anything good in that</li>
<li>Look into that plugin than let's you graphicly manipulate things</li>
<li>Look into plugins kanban, etc.</li>
<li>Native backend to Taskjuggler </li>
</ul>

<p>There was a demo set up here: <a href="http://redtask.configmagic.com">http://redtask.configmagic.com</a></p>

<h2>
<a id="installation" class="anchor" href="#installation" aria-hidden="true"><span class="octicon octicon-link"></span></a>Installation</h2>

<p>Install into redmine/plugins directory. Really the redmine/plugins directory. If that directory is not there, on the top level, please create it. This is important actully.</p>

<p>bundle exec rake redmine:plugins RAILS_ENV=production</p>

<p>or</p>

<p>rake db:migrate:plugin NAME=redmine_taskjuggler</p>

<p>then restart the webserver.</p>

<p>To uninstall</p>

<p>rake db:migrate:plugin NAME=redmine_taskjuggler VERSION=0</p>

<h2>
<a id="workflow" class="anchor" href="#workflow" aria-hidden="true"><span class="octicon octicon-link"></span></a>Workflow</h2>

<p>Many steps were manual in the first version. Today, the idea is to automate parts of the use of Taskjuggler from Redmine, and to update Redmine from Taskjuggler. Here is the current workflow:</p>

<ol>
<li>Information is maintained in Redmine</li>
<li>Redmine Issues are tagged for Taskjuggler Tasks (all time-sheet candidate tasks and others)</li>
<li>Flaged Issues are augmented with any necessary extra info for Taskjuggler (allocate, effort)</li>
<li>The administrator creates Taskjuggler master file (with Tasks extended with a field "Red" of type "number")</li>
<li>Redmine exports a Taskjuggler Include file for computation by Taskjuggler</li>
<li>Taskjuggler computes the input file and outputs, among other reports, outputs a Redmine-Taskjuggler CSV file with the following columns (no more, no less) : "Id","Start","End","Priority","Effort","Duration","Dependencies"</li>
<li>Redmine will then update per issue the start, end, and effort fields</li>
</ol>

<h2>
<a id="getting-the-plugin" class="anchor" href="#getting-the-plugin" aria-hidden="true"><span class="octicon octicon-link"></span></a>Getting the plugin</h2>

<p>A copy of the released version can be downloaded from  {GitHub}[<a href="http://github.com/chris2fr/redmine_taskjuggler">http://github.com/chris2fr/redmine_taskjuggler</a>]</p>

<h2>
<a id="installation-and-setup" class="anchor" href="#installation-and-setup" aria-hidden="true"><span class="octicon octicon-link"></span></a>Installation and Setup</h2>

<ol>
<li>Follow the Redmine plugin installation steps at: <a href="http://www.redmine.org/wiki/redmine/Plugins">http://www.redmine.org/wiki/redmine/Plugins</a> Make sure the plugin is installed to +plugins/redmine_taskjuggler+</li>
<li>Restart your Redmine web servers (e.g. mongrel, thin, mod_rails)</li>
<li>Login and click the Workload in the top left menu</li>
</ol>

<h2>
<a id="upgrade" class="anchor" href="#upgrade" aria-hidden="true"><span class="octicon octicon-link"></span></a>Upgrade</h2>

<h3>
<a id="zip-or-tar-files" class="anchor" href="#zip-or-tar-files" aria-hidden="true"><span class="octicon octicon-link"></span></a>Zip or tar files</h3>

<ol>
<li>Download the latest file as described in Getting the plugin</li>
<li>Extract the file to your Redmine into vendor/plugins</li>
<li>Restart your Redmine</li>
</ol>

<h3>
<a id="git" class="anchor" href="#git" aria-hidden="true"><span class="octicon octicon-link"></span></a>Git</h3>

<ol>
<li>Open a shell to your Redmine's plugins/redmine_taskjuggler folder</li>
<li>Update your Git copy with <code>git pull</code>
</li>
<li>Restart your Redmine</li>
</ol>

<h2>
<a id="license" class="anchor" href="#license" aria-hidden="true"><span class="octicon octicon-link"></span></a>License</h2>

<p>This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  </p>

<p>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more details.</p>

<p>You should have received a copy of the GNU Affero General Public License along with this program.  If not, see <a href="http://www.gnu.org/licenses/">http://www.gnu.org/licenses/</a>.</p>

<h2>
<a id="design-decisions" class="anchor" href="#design-decisions" aria-hidden="true"><span class="octicon octicon-link"></span></a>Design Decisions</h2>

<p>Design decisions concern mainly the way redmine_taskjuggler maps Redmine objects to TaskJuggler objects.</p>

<ul>
<li>Use Redmine depends and preceeds</li>
<li>Use Redmine priority levels with a mapping</li>
<li>Add a flag to each object to indicatue use or not in Redmine</li>
<li>
</li>
</ul>

<h2>
<a id="project-help" class="anchor" href="#project-help" aria-hidden="true"><span class="octicon octicon-link"></span></a>Project help</h2>

<p>If you need help you can contact the maintainer at his email address (See CREDITS.txt) or create an issue in the Bug Tracker.</p>

<h3>
<a id="bug-tracker" class="anchor" href="#bug-tracker" aria-hidden="true"><span class="octicon octicon-link"></span></a>Bug tracker</h3>

<p>If you would like to report a bug or request a new feature the bug tracker is located at: <a href="http://github.com/chris2fr/redmine_taskjuggler">http://github.com/chris2fr/redmine_taskjuggler</a></p>

<h3>
<a id="todo" class="anchor" href="#todo" aria-hidden="true"><span class="octicon octicon-link"></span></a>ToDo</h3>

<p>In timetable! sort by project then project category.</p>
      </section>
    </div>

    <!-- FOOTER  -->
    <div id="footer_wrap" class="outer">
      <footer class="inner">
        <p class="copyright">Redmine Taskjuggler Plugin maintained by <a href="https://github.com/chris2fr">chris2fr</a></p>
        <p>Published with <a href="http://pages.github.com">GitHub Pages</a></p>
      </footer>
    </div>

    

  </body>
</html>