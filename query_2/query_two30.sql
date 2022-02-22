
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='16company' and spd.designation='Designer'
		and to_date >= '2045-08-10 09:01:27' and from_date <= '2090-09-10 03:25:00'
