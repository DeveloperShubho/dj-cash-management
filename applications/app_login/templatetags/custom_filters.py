from django import template
from datetime import datetime
from applications.app_login.models import *

register = template.Library()

@register.filter
def format_yyyymmdd_to_dmy(value):
    """
    Converts a date string from yyyymmdd (e.g., 20240919) to dd-mm-yyyy (e.g., 19-09-2024).
    """
    try:
        return datetime.strptime(value, '%Y%m%d').strftime('%d/%m/%Y')
    except (ValueError, TypeError):
        return value  # Return the original value if parsing fails



@register.filter
def bank_full_name(bank_id):
    try:
        bank = Pcash150Bank.objects.get(id_150=bank_id)
        return bank.bank_full_name_150
    except Pcash150Bank.DoesNotExist:
        return None 
    


@register.filter
def expn_details(expn_gist_id):
    expn_queryset = Pcash350ExpnDetails.objects.filter(expn_gist_id_350_350=expn_gist_id)
    return list(expn_queryset.values('expn_head_200_350', 'amount_350'))  




@register.filter
def get_expn_head_name(expn_head_id):
    try:
        expn_head = Pcash200Expnhead.objects.get(id_200=expn_head_id)
        return expn_head.expn_head_name_200
    except Pcash200Expnhead.DoesNotExist:
        return None 



@register.filter
def add(value, arg):
    try:
        return float(value) + float(arg)
    except (ValueError, TypeError):
        return None  

@register.filter
def sub(value, arg):
    try:
        return float(value) - float(arg)
    except (ValueError, TypeError):
        return None 



@register.filter
def get_user_fullname(user_id):
    try:
        # Query the Pcash100User model to get the user's full name
        user = Pcash100User.objects.get(id_100=user_id)
        return user.user_fullname_100
    except Pcash100User.DoesNotExist:
        return 'Unknown User'