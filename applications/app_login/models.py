from django.db import models

##########################################################################################################################################

class Pcash100User(models.Model):
    id_100 = models.AutoField(primary_key=True)
    user_fullname_100 = models.CharField(max_length=100, blank=True, null=True)
    loginname_100 = models.CharField(max_length=100, blank=True, null=True)
    loginpwd_100 = models.CharField(max_length=100, blank=True, null=True)
    user_pan_100 = models.CharField(max_length=10, blank=True, null=True)
    active_yn_100 = models.CharField(max_length=20)
    modified_by_100 = models.IntegerField()
    modified_on_100 = models.DateTimeField()
    created_by_100 = models.IntegerField()
    created_on_100 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_100_user'

##########################################################################################################################################

class Pcash150Bank(models.Model):
    id_150 = models.AutoField(primary_key=True)
    bank_full_name_150 = models.CharField(max_length=100, blank=True, null=True)
    bank_by_name_150 = models.CharField(max_length=50, blank=True, null=True)
    active_yn_150 = models.CharField(max_length=20)
    modified_by_150 = models.IntegerField()
    modified_on_150 = models.DateTimeField()
    created_by_150 = models.IntegerField()
    created_on_150 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_150_bank'

##########################################################################################################################################

class Pcash200Expnhead(models.Model):
    id_200 = models.AutoField(primary_key=True)
    expn_head_group_200 = models.CharField(max_length=100)
    expn_head_name_200 = models.CharField(max_length=200, blank=True, null=True)
    expn_code_200 = models.CharField(max_length=100, blank=True, null=True)
    active_yn_200 = models.CharField(max_length=20)
    modified_by_200 = models.IntegerField()
    modified_on_200 = models.DateTimeField()
    created_by_200 = models.IntegerField()
    created_on_200 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_200_expnhead'

##########################################################################################################################################

class Pcash250Addcredit(models.Model):
    id_250 = models.AutoField(primary_key=True)
    type_250 = models.CharField(max_length=50)
    cash_withdrawal_ymd_250 = models.CharField(max_length=50, blank=True, null=True)
    bank_id_250 = models.IntegerField()
    instrument_type_250 = models.CharField(max_length=50)
    instrument_no_250 = models.CharField(max_length=100, blank=True, null=True)
    instrument_ymd_250 = models.CharField(max_length=50, blank=True, null=True)
    narration_250 = models.TextField(blank=True, null=True)
    paid_by_250 = models.CharField(max_length=50)
    amount_250 = models.CharField(max_length=100, blank=True, null=True)
    withdrawal_by_250 = models.CharField(max_length=100, blank=True, null=True)
    pment_dt_ymd_250 = models.CharField(max_length=50)
    collected_by_250 = models.CharField(max_length=100, blank=True, null=True)
    modified_by_250 = models.IntegerField()
    modified_on_250 = models.DateTimeField()
    created_by_250 = models.IntegerField()
    created_on_250 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_250_addcredit'

##########################################################################################################################################

class Pcash300ExpnGist(models.Model):
    id_300 = models.AutoField(primary_key=True)
    expn_ymd_300 = models.CharField(max_length=50, blank=True, null=True)
    user_id_100_300 = models.IntegerField()
    exec_name_300 = models.CharField(max_length=100)
    total_amount_300 = models.CharField(max_length=100, blank=True, null=True)
    modified_by_300 = models.IntegerField()
    modified_on_300 = models.DateTimeField()
    created_by_300 = models.IntegerField()
    created_on_300 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_300_expn_gist'

##########################################################################################################################################

class Pcash350ExpnDetails(models.Model):
    id_350 = models.AutoField(primary_key=True)
    expn_head_200_350 = models.IntegerField()
    expn_gist_id_350_350 = models.IntegerField()
    narration_350 = models.CharField(max_length=200, blank=True, null=True)
    amount_350 = models.CharField(max_length=100, blank=True, null=True)
    modified_by_350 = models.IntegerField()
    modified_on_350 = models.DateTimeField()
    created_by_350 = models.IntegerField()
    created_on_350 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_350_expn_details'

##########################################################################################################################################+

class Pcash400Adjustment(models.Model):
    id_400 = models.AutoField(primary_key=True)
    adj_ymd_400 = models.CharField(max_length=50, blank=True, null=True)
    adj_type_400 = models.CharField(max_length=50)
    source_type_400 = models.CharField(max_length=100)
    select_trnxn_dt_ymd_400 = models.CharField(max_length=50, blank=True, null=True)
    amount_to_be_adjted_400 = models.CharField(max_length=50, blank=True, null=True)
    adj_narration_400 = models.CharField(max_length=200, blank=True, null=True)
    adj_deduct_amnt_400 = models.CharField(max_length=100, blank=True, null=True)
    adj_add_amnt_400 = models.CharField(max_length=100, blank=True, null=True)
    expn_details_id_350_400 = models.IntegerField()
    modified_by_400 = models.IntegerField()
    modified_on_400 = models.DateTimeField()
    created_by_400 = models.IntegerField()
    created_on_400 = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'pcash_400_adjustment'

##########################################################################################################################################+