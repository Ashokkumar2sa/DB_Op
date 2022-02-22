
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='13company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2056-10-28 10:26:03' and from_date <= '2089-12-31 16:35:55'
