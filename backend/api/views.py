from django.shortcuts import render
from django.db.models import Sum, Avg, F
from django.db import connection


# Create your views here.
from rest_framework import generics
from .models import Attendance, AuditLog, Deduction, Department, Employee, EmployeeDeductions, EmployeeVacation, Job, Leaves, Overtime, Payroll
from .serializers import AttendanceSerializer, AuditLogSerializer, DeductionSerializer, DepartmentSerializer, EmployeeSerializer, EmployeeDeductionsSerializer, EmployeeVacationSerializer, JobSerializer, LeavesSerializer, OvertimeSerializer, PayrollSerializer

# Create your views here.

class AttendanceListCreate(generics.ListCreateAPIView):
    queryset = Attendance.objects.all()
    serializer_class = AttendanceSerializer

class AttendanceDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Attendance.objects.all()
    serializer_class = AttendanceSerializer

class AuditLogListCreate(generics.ListCreateAPIView):
    queryset = AuditLog.objects.all()
    serializer_class = AuditLogSerializer

class AuditLogDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = AuditLog.objects.all()
    serializer_class = AuditLogSerializer

class DeductionListCreate(generics.ListCreateAPIView):
    queryset = Deduction.objects.all()
    serializer_class = DeductionSerializer

class DeductionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Deduction.objects.all()
    serializer_class = DeductionSerializer

class DepartmentListCreate(generics.ListCreateAPIView):
    queryset = Department.objects.all()
    serializer_class = DepartmentSerializer

class DepartmentDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Department.objects.all()
    serializer_class = DepartmentSerializer

class EmployeeListCreate(generics.ListCreateAPIView):
    queryset = Employee.objects.all()
    serializer_class = EmployeeSerializer

class EmployeeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Employee.objects.all()
    serializer_class = EmployeeSerializer

class EmployeeDeductionsListCreate(generics.ListCreateAPIView):
    queryset = EmployeeDeductions.objects.all()
    serializer_class = EmployeeDeductionsSerializer

class EmployeeDeductionsDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeeDeductions.objects.all()
    serializer_class = EmployeeDeductionsSerializer

class EmployeeVacationListCreate(generics.ListCreateAPIView):
    queryset = EmployeeVacation.objects.all()
    serializer_class = EmployeeVacationSerializer

class EmployeeVacationDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeeVacation.objects.all()
    serializer_class = EmployeeVacationSerializer

class JobListCreate(generics.ListCreateAPIView):
    queryset = Job.objects.all()
    serializer_class = JobSerializer

class JobDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Job.objects.all()
    serializer_class = JobSerializer

class LeavesListCreate(generics.ListCreateAPIView):
    queryset = Leaves.objects.all()
    serializer_class = LeavesSerializer

class LeavesDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Leaves.objects.all()
    serializer_class = LeavesSerializer

class OvertimeListCreate(generics.ListCreateAPIView):
    queryset = Overtime.objects.all()
    serializer_class = OvertimeSerializer

class OvertimeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Overtime.objects.all()
    serializer_class = OvertimeSerializer

class PayrollListCreate(generics.ListCreateAPIView):
    queryset = Payroll.objects.all()
    serializer_class = PayrollSerializer

class PayrollDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Payroll.objects.all()
    serializer_class = PayrollSerializer

