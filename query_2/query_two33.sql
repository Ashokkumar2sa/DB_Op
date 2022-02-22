
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='15company' and spd.designation='Engineer'
		and to_date >= '2012-01-18 02:09:45' and from_date <= '2039-01-08 01:46:55'
