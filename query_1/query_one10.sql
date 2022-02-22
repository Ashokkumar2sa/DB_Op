
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer' 
			and sp.to_date >= '2065-08-10 14:11:44' and sp.from_date <= '2097-04-26 18:12:02'
			and sp.company in (select name from tabCompany where parent_company = '6company')
