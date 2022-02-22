
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='8company' and spd.designation='Designer'
		and to_date >= '2019-01-23 21:25:12' and from_date <= '2033-07-08 17:25:07'
