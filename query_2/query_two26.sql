
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='9company' and spd.designation='Analyst'
		and to_date >= '2068-08-18 20:11:30' and from_date <= '2099-11-23 20:43:30'
