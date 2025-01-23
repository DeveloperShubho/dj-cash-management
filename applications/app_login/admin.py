from django.contrib import admin
from .models import *

# Register Pcash100User with tabular format
class Pcash100UserAdmin(admin.ModelAdmin):
    list_display = ('id_100', 'user_fullname_100', 'loginname_100', 'active_yn_100', 'modified_on_100')

# Register Pcash150Bank with tabular format
class Pcash150BankAdmin(admin.ModelAdmin):
    list_display = ('id_150', 'bank_full_name_150', 'bank_by_name_150', 'active_yn_150', 'modified_on_150')
    
# Register Pcash200Expnhead with tabular format
class Pcash200ExpnheadAdmin(admin.ModelAdmin):
    list_display = ('id_200', 'expn_head_group_200', 'expn_head_name_200', 'active_yn_200', 'modified_on_200')

# Register Pcash250Addcredit with tabular format
class Pcash250AddcreditAdmin(admin.ModelAdmin):
    list_display = ('id_250', 'type_250', 'bank_id_250', 'amount_250', 'pment_dt_ymd_250', 'modified_on_250')


# Register Pcash300ExpnGist with tabular format
class Pcash300ExpnGistAdmin(admin.ModelAdmin):
    list_display = ('id_300', 'expn_ymd_300', 'exec_name_300', 'user_id_100_300', 'total_amount_300', 'modified_by_300', 'modified_on_300', 'created_by_300', 'created_on_300')

# Register Pcash350ExpnDetails with tabular format
class Pcash350ExpnDetailsAdmin(admin.ModelAdmin):
    list_display = ('id_350', 'expn_head_200_350', 'expn_gist_id_350_350', 'narration_350', 'amount_350', 'modified_by_350', 'modified_on_350', 'created_by_350', 'created_on_350')



# Register Pcash400Adjustment with tabular format
class Pcash400AdjustmentAdmin(admin.ModelAdmin):
    list_display = (
        'id_400', 'adj_ymd_400', 'adj_type_400', 'source_type_400', 'select_trnxn_dt_ymd_400', 'amount_to_be_adjted_400', 'adj_narration_400', 'adj_deduct_amnt_400', 'adj_add_amnt_400', 'expn_details_id_350_400', 'modified_by_400', 'modified_on_400', 'created_by_400', 'created_on_400')





# Register models to the admin site
admin.site.register(Pcash100User, Pcash100UserAdmin)
admin.site.register(Pcash150Bank, Pcash150BankAdmin)
admin.site.register(Pcash300ExpnGist, Pcash300ExpnGistAdmin)
admin.site.register(Pcash200Expnhead, Pcash200ExpnheadAdmin)
admin.site.register(Pcash250Addcredit, Pcash250AddcreditAdmin)
admin.site.register(Pcash400Adjustment, Pcash400AdjustmentAdmin)
admin.site.register(Pcash350ExpnDetails, Pcash350ExpnDetailsAdmin)


