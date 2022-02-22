
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='8company' and spd.designation='Engineer'
		and to_date >= '2088-11-18 16:33:58' and from_date <= '2094-01-29 22:02:54'
