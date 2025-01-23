import hashlib
from datetime import datetime

##########################################################################################################################################

def check_md5_password(md5_hash, password):
    hash_object = hashlib.md5()
    hash_object.update(password.encode('utf-8'))
    hashed_password = hash_object.hexdigest()
    return hashed_password == md5_hash

##########################################################################################################################################

def format_date(date):
    return date.strftime('%Y%m%d') if date else None

##########################################################################################################################################

def get_current_date_ymd():
    """Returns the current date in 'yyyyMMdd' format."""
    return datetime.now().strftime('%Y%m%d')

##########################################################################################################################################

def convert_ymd_to_dmy(date_str):
    # Parse the input string into a datetime object
    date_obj = datetime.strptime(date_str, '%Y%m%d')
    
    # Format the datetime object into the desired format
    return date_obj.strftime('%d/%m/%Y')
##########################################################################################################################################
