import datetime
from datetime import timezone
import sublime, sublime_plugin

class TimestampCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    rightnow = datetime.datetime.now()
    # timestamp = "\n%s\t" % (rightnow.strftime("%Y-%m-%d %H:%M"))
    timestamp = "%s" % (rightnow.replace(tzinfo=timezone.utc).timestamp())
    self.view.insert(edit, self.view.sel()[0].begin(), timestamp)
