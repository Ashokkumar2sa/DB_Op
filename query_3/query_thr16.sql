
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant'
			and sp.to_date >= '2038-04-23 09:38:11' and sp.from_date <= '2089-01-17 20:50:08' and sp.company = '10company'
