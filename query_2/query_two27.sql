
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='2company' and spd.designation='Engineer'
		and to_date >= '2021-11-07 20:04:16' and from_date <= '2050-08-03 16:11:53'
