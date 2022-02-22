
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='Researcher'
		and to_date >= '2080-11-22 10:49:50' and from_date <= '2088-04-27 23:09:18'
