
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2022-02-04 03:42:16' and sp.from_date <= '2043-01-21 07:31:43'
			and sp.company in (select name from tabCompany where parent_company = '1company')
