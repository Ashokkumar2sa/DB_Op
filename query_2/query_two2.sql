
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='9company' and spd.designation='Secretary'
		and to_date >= '2065-06-20 08:51:31' and from_date <= '2074-09-15 15:24:15'
