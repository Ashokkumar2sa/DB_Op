
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='6company' and spd.designation='Project Manager'
		and to_date >= '2000-10-12 01:22:08' and from_date <= '2043-01-30 22:18:38'
