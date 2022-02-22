
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='13company' and spd.designation='Business Development Manager'
		and to_date >= '2000-06-06 09:06:15' and from_date <= '2083-08-30 12:41:00'
