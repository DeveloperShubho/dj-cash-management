# from .models import *

# class MisData:
#     def __init__(self):
#         self.transaction_date = None
#         self.reference_no  = None
#         self.details = None
#         self.credit_amount = None
#         self.debit_amount = None
#         self.total_amount = None
#         self.expn_gist = None
#         self.bank_id = None

#     def expense_details(self):
#         return Pcash350ExpnDetails.objects.filter(expn_gist_id_350_350 = self.expn_gist)
    
    
#     def bank_full_name(self):
#         try:
#             bank = Pcash150Bank.objects.get(id_150=self.bank_id)
#             return bank.bank_full_name_150
#         except Pcash150Bank.DoesNotExist:
#             return None 
    




from .models import *

class MisData:
    def __init__(self):
        self.transaction_date = None
        self.reference_no = None
        self.details = None
        self.credit_amount = None
        self.debit_amount = None
        self.total_amount = None
        self.expn_gist = None
        self.bank_id = None
        self.withdrawl_by = None
        self.paid_by = None


obj = MisData()