
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='16company' and spd.designation='Business Development Manager'
		and to_date >= '2005-06-03 12:54:16' and from_date <= '2046-10-18 04:38:08'
