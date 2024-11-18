from django.db import models

class Attendance(models.Model):
    LogID = models.AutoField(primary_key=True, default=1234)
    EmployeeID = models.IntegerField(null=True, blank=True)
    CheckInTime = models.DateTimeField(null=True, blank=True)
    CheckOutTime = models.DateTimeField(null=True, blank=True)

    class Meta:
        db_table = 'Attendance'

    def to_dict(self):
        return {
            "LogID": self.LogID,
            "EmployeeID": self.EmployeeID,
            "CheckInTime": self.CheckInTime,
            "CheckOutTime": self.CheckOutTime
        }

class AuditLog(models.Model):
    LogID = models.AutoField(primary_key=True, default=1234)
    Action = models.CharField(max_length=255)
    EmployeeID = models.IntegerField(null=True, blank=True)
    LogTime = models.DateTimeField(null=True, blank=True)

    class Meta:
        db_table = 'AuditLog'

    def to_dict(self):
        return {
            "LogID": self.LogID,
            "Action": self.Action,
            "EmployeeID": self.EmployeeID,
            "LogTime": self.LogTime
        }

class Deduction(models.Model):
    DeductionID = models.AutoField(primary_key=True, default=1234)
    DeductionName = models.CharField(max_length=255)
    PayCut = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'Deduction'

    def to_dict(self):
        return {
            "DeductionID": self.DeductionID,
            "DeductionName": self.DeductionName,
            "PayCut": self.PayCut
        }

class Department(models.Model):
    DepartmentID = models.AutoField(primary_key=True, default=1234)
    DepartmentName = models.CharField(max_length=255)
    ManagerID = models.IntegerField(null=True, blank=True)

    class Meta:
        db_table = 'Department'

    def to_dict(self):
        return {
            "DepartmentID": self.DepartmentID,
            "DepartmentName": self.DepartmentName,
            "ManagerID": self.ManagerID
        }

class Employee(models.Model):
    EmployeeID = models.AutoField(primary_key=True, default=1234)
    FirstName = models.CharField(max_length=255)
    LastName = models.CharField(max_length=255)
    DateOfBirth = models.DateField(null=True, blank=True)
    Email = models.CharField(max_length=255)
    Phone = models.CharField(max_length=20)
    Address = models.CharField(max_length=255)
    JobID = models.IntegerField(null=True, blank=True)
    PayrollID = models.IntegerField(null=True, blank=True)
    HireDate = models.DateField(null=True, blank=True)

    class Meta:
        db_table = 'Employee'

    def to_dict(self):
        return {
            "EmployeeID": self.EmployeeID,
            "FirstName": self.FirstName,
            "LastName": self.LastName,
            "DateOfBirth": self.DateOfBirth,
            "Email": self.Email,
            "Phone": self.Phone,
            "Address": self.Address,
            "JobID": self.JobID,
            "PayrollID": self.PayrollID,
            "HireDate": self.HireDate
        }

class EmployeeDeductions(models.Model):
    DeductionID = models.IntegerField()
    DeductionDate = models.DateField()
    EmployeeID = models.IntegerField()
    DepartmentID = models.IntegerField()

    class Meta:
        db_table = 'EmployeeDeduction'

    def to_dict(self):
        return {
            "DeductionID": self.DeductionID,
            "DeductionDate": self.DeductionDate,
            "EmployeeID": self.EmployeeID,
            "DepartmentID": self.DepartmentID
        }

class EmployeeVacation(models.Model):
    EmployeeID = models.IntegerField()
    LeaveID = models.IntegerField()
    ApprovingManager = models.CharField(max_length=255)

    class Meta:
        db_table = 'EmployeeVacation'

    def to_dict(self):
        return {
            "EmployeeID": self.EmployeeID,
            "LeaveID": self.LeaveID,
            "ApprovingManager": self.ApprovingManager
        }

class Job(models.Model):
    JobID = models.AutoField(primary_key=True, default=1234)
    DepartmentID = models.IntegerField(null=True, blank=True)
    JobTitle = models.CharField(max_length=255)
    BaseSalary = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'Job'

    def to_dict(self):
        return {
            "JobID": self.JobID,
            "DepartmentID": self.DepartmentID,
            "JobTitle": self.JobTitle,
            "BaseSalary": self.BaseSalary
        }

class Leaves(models.Model):
    LeaveID = models.AutoField(primary_key=True, default=1234)
    Reason = models.CharField(max_length=255)
    PaidStatus = models.CharField(max_length=255)

    class Meta:
        db_table = 'Leaves'

    def to_dict(self):
        return {
            "LeaveID": self.LeaveID,
            "Reason": self.Reason,
            "PaidStatus": self.PaidStatus
        }

class Overtime(models.Model):
    OvertimeID = models.AutoField(primary_key=True, default=1234)
    EmployeeID = models.IntegerField(null=True, blank=True)
    OvertimeHours = models.IntegerField()
    OvertimeRate = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'Overtime'

    def to_dict(self):
        return {
            "OvertimeID": self.OvertimeID,
            "EmployeeID": self.EmployeeID,
            "OvertimeHours": self.OvertimeHours,
            "OvertimeRate": self.OvertimeRate
        }

class Payroll(models.Model):
    PayrollID = models.AutoField(primary_key=True, default=1234)
    EmployeeID = models.IntegerField(null=True, blank=True)
    PayDate = models.DateField()
    BasicSalary = models.DecimalField(max_digits=10, decimal_places=2)
    GrossSalary = models.DecimalField(max_digits=10, decimal_places=2)
    NetSalary = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        db_table = 'Payroll'

    def to_dict(self):
        return {
            "PayrollID": self.PayrollID,
            "EmployeeID": self.EmployeeID,
            "PayDate": self.PayDate,
            "BasicSalary": self.BasicSalary,
            "GrossSalary": self.GrossSalary,
            "NetSalary": self.NetSalary
        }