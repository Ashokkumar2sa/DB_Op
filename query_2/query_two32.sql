
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='13company' and spd.designation='Analyst'
		and to_date >= '2019-06-01 07:42:49' and from_date <= '2070-05-20 17:54:31'
