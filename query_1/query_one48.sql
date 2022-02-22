
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Administrative Officer' 
			and sp.to_date >= '2017-10-25 00:10:01' and sp.from_date <= '2019-04-26 14:48:54'
			and sp.company in (select name from tabCompany where parent_company = '8company')
