from django.contrib import admin

# Register your models here.

from .models import Attendance, AuditLog, Deduction, Department, Employee, EmployeeDeductions, EmployeeVacation, Job, Leaves, Overtime, Payroll

admin.site.register(Attendance)
admin.site.register(AuditLog)
admin.site.register(Deduction)
admin.site.register(Department)
admin.site.register(Employee)
admin.site.register(EmployeeDeductions)
admin.site.register(EmployeeVacation)
admin.site.register(Job)
admin.site.register(Leaves)
admin.site.register(Overtime)
admin.site.register(Payroll)

