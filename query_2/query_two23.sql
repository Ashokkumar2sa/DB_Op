
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='NA' and spd.designation='Researcher'
		and to_date >= '2022-05-12 03:49:40' and from_date <= '2048-10-25 01:20:13'
