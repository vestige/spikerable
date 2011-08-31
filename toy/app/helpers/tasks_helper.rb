# -*- enocording: UTF8 -*-

module TasksHelper
  def links_for(task)
    links = []
    
    links << link_to("modify", [ :edit, task ])
    links << " / "

    if task.done?
      links << link_to("restart", [ :restart, task ], :method => :put)
    else
      links << link_to("finish", [ :finish, task ], :method => :put)
    end

    links << " / "
    links << delete_link(task)
    raw(links.join(" "))
  end
end
