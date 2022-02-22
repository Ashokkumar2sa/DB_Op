
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer' 
			and sp.to_date >= '2052-02-10 04:26:28' and sp.from_date <= '2089-07-24 15:13:09'
			and sp.company in (select name from tabCompany where parent_company = '8company')
