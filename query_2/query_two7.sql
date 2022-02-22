
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='8company' and spd.designation='Researcher'
		and to_date >= '2062-02-23 09:22:43' and from_date <= '2066-03-22 17:52:41'
