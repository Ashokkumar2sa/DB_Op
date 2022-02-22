
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='Software Developer'
		and to_date >= '2082-11-07 07:19:15' and from_date <= '2084-05-04 22:16:04'
