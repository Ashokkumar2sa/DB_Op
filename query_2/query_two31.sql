
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='Software Developer'
		and to_date >= '2035-04-25 08:26:18' and from_date <= '2091-04-02 09:12:10'