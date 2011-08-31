# -*- enocording: UTF8 -*-

module ApplicationHelper
  def delete_link(object)
    link_to "delete", object, :method => :delete, :confirm => "Realy? OK?"
  end
end
