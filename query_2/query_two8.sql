
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='1company' and spd.designation='HR Manager'
		and to_date >= '2073-12-02 02:07:43' and from_date <= '2082-03-14 16:29:11'
