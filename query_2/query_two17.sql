
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='1company' and spd.designation='Designer'
		and to_date >= '2037-04-23 11:15:25' and from_date <= '2095-04-23 12:29:53'
