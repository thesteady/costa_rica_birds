module ApplicationHelper

  def t_f?(val)
    val ? "Yes" : "No"
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, sort: column, direction: direction
  end
end
