
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='Engineer'
		and to_date >= '2067-01-07 13:04:20' and from_date <= '2075-12-03 01:22:58'
