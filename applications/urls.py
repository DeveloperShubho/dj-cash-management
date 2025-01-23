from django.urls import path
from applications.app_login.views import *

##############################################################################################################################

urlpatterns = [
    # Authentication urls
    path('', verification_view, name='verification_key'),
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),

     
    # Form Handling 
    path('add_credit/', credit_view, name='add_credit'), 
    path('add_expenses/', expenses_view, name='add_expenses'),
    
    # Other Features
    path('dashboard/', dashboard_view, name='dashboard'),
    path('mis/', mis_view, name='mis_view'),
    path('another_mis/', another_mis_view, name='another_mis'),
    path('download-mis/', export_mis_data_to_excel, name='export_mis_data_to_excel'),
    path('search_view/', search_view, name='search_view'),


    # Multiple Form
    path('adjust_view/', adjust_view, name='adjust_view'),
    path('adjustment/', adjustment_view, name='adjustment'),
    path('check_validation/', check_validation, name='check_validation'),

    
    # CRUD Operations
    path('expend_head/', expense_head_view, name='expend_head'),
    path('expend_head/<int:pk>/', edit_expense_head_view, name='edit_expense_head'),
    path('cancel_expense_head/<int:pk>/', cancel_expense_head_view, name='cancel_expense_head'),

]

##############################################################################################################################