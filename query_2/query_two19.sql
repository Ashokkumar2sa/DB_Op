
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='16company' and spd.designation='Project Manager'
		and to_date >= '2028-06-16 17:27:54' and from_date <= '2036-08-08 09:56:46'
