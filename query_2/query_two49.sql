
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='1company' and spd.designation='Secretary'
		and to_date >= '2089-12-24 07:48:58' and from_date <= '2099-11-18 08:52:34'
