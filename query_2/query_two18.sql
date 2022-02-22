
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='Accountant'
		and to_date >= '2014-08-10 17:17:19' and from_date <= '2078-09-02 17:43:01'
