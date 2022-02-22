
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2076-02-03 09:23:38' and sp.from_date <= '2089-02-19 15:54:41' and sp.company = '2company'
