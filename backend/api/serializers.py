from rest_framework import serializers
from .models import Attendance, AuditLog, Deduction, Department, Employee, EmployeeDeductions, EmployeeVacation, Job, Leaves, Overtime, Payroll

class AttendanceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attendance
        fields = '__all__'

class AuditLogSerializer(serializers.ModelSerializer):
    class Meta:
        model = AuditLog
        fields = '__all__'

class DeductionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Deduction
        fields = '__all__'

class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Department
        fields = '__all__'

class EmployeeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Employee
        fields = '__all__'

class EmployeeDeductionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmployeeDeductions
        fields = '__all__'

class EmployeeVacationSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmployeeVacation
        fields = '__all__'

class JobSerializer(serializers.ModelSerializer):
    class Meta:
        model = Job
        fields = '__all__'

class LeavesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Leaves
        fields = '__all__'

class OvertimeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Overtime
        fields = '__all__'

class PayrollSerializer(serializers.ModelSerializer):
    class Meta:
        model = Payroll
        fields = '__all__'