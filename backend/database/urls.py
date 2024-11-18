"""
URL configuration for database project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from api.views import (
    AttendanceListCreate, AttendanceDetail,
    AuditLogListCreate, AuditLogDetail,
    DeductionListCreate, DeductionDetail,
    DepartmentListCreate, DepartmentDetail,
    EmployeeListCreate, EmployeeDetail,
    EmployeeDeductionsListCreate, EmployeeDeductionsDetail,
    EmployeeVacationListCreate, EmployeeVacationDetail,
    JobListCreate, JobDetail,
    LeavesListCreate, LeavesDetail,
    OvertimeListCreate, OvertimeDetail,
    PayrollListCreate, PayrollDetail,
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/attendance/', AttendanceListCreate.as_view(), name='attendance-list-create'),
    path('api/attendance/<int:pk>/', AttendanceDetail.as_view(), name='attendance-detail'),

    path('api/auditlog/', AuditLogListCreate.as_view(), name='auditlog-list-create'),
    path('api/auditlog/<int:pk>/', AuditLogDetail.as_view(), name='auditlog-detail'),

    path('api/deduction/', DeductionListCreate.as_view(), name='deduction-list-create'),
    path('api/deduction/<int:pk>/', DeductionDetail.as_view(), name='deduction-detail'),

    path('api/department/', DepartmentListCreate.as_view(), name='department-list-create'),
    path('api/department/<int:pk>/', DepartmentDetail.as_view(), name='department-detail'),

    path('api/employee/', EmployeeListCreate.as_view(), name='employee-list-create'),
    path('api/employee/<int:pk>/', EmployeeDetail.as_view(), name='employee-detail'),

    path('api/employeedeductions/', EmployeeDeductionsListCreate.as_view(), name='employeedeductions-list-create'),
    path('api/employeedeductions/<int:pk>/', EmployeeDeductionsDetail.as_view(), name='employeedeductions-detail'),

    path('api/employeevacation/', EmployeeVacationListCreate.as_view(), name='employeevacation-list-create'),
    path('api/employeevacation/<int:pk>/', EmployeeVacationDetail.as_view(), name='employeevacation-detail'),

    path('api/job/', JobListCreate.as_view(), name='job-list-create'),
    path('api/job/<int:pk>/', JobDetail.as_view(), name='job-detail'),

    path('api/leaves/', LeavesListCreate.as_view(), name='leaves-list-create'),
    path('api/leaves/<int:pk>/', LeavesDetail.as_view(), name='leaves-detail'),

    path('api/overtime/', OvertimeListCreate.as_view(), name='overtime-list-create'),
    path('api/overtime/<int:pk>/', OvertimeDetail.as_view(), name='overtime-detail'),

    path('api/payroll/', PayrollListCreate.as_view(), name='payroll-list-create'),
    path('api/payroll/<int:pk>/', PayrollDetail.as_view(), name='payroll-detail'),

    
]