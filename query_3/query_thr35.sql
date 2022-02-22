
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant'
			and sp.to_date >= '2079-10-10 12:09:55' and sp.from_date <= '2080-12-19 07:06:42' and sp.company = '9company'
