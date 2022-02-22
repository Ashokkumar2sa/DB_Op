
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='15company' and spd.designation='Designer'
		and to_date >= '2038-09-11 01:33:39' and from_date <= '2085-05-27 10:04:51'
