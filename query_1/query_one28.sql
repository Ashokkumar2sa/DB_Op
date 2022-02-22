
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2043-05-21 16:28:59' and sp.from_date <= '2097-11-05 09:17:44'
			and sp.company in (select name from tabCompany where parent_company = '2company')
