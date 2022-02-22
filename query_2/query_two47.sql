
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='Analyst'
		and to_date >= '2098-12-02 02:04:53' and from_date <= '2099-03-25 10:12:05'
