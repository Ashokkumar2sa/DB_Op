
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='10company' and spd.designation='Secretary'
		and to_date >= '2040-04-04 00:32:06' and from_date <= '2094-06-27 21:11:13'
