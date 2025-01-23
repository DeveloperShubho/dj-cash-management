from django.core.exceptions import ValidationError
from applications.constants import *
from django.utils import timezone
from django import forms
from .models import *

##########################################################################################################################################

class CreditForm(forms.Form):
    withdrawal_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'withdrawal_date',
        }),
        label='Cash Withdrawal Date',
        required=False,
        input_formats=['%d/%m/%Y']  
    )


    
    bank = forms.ChoiceField(
        required=False,
        label='Select Bank',
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'id': 'bankSelect',
            'data-control': 'select2',
            'data-hide-search': 'false'
        })
    )
    
    
    cheque_number = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )

    
    narration_1 = forms.CharField(
        widget=forms.Textarea(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400', 'rows': 1}),
        required=False,
    )


    amount_1 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False,
    )


    narration_2 = forms.CharField(
        widget=forms.Textarea(attrs=
            {'class': 'form-control form-control-sm form-control-solid border-gray-400', 'rows': 1}),
        required=False,
    )


    amount_2 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False,
    )



    withdrawal_by = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )

   
    payment_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'payment_date',
        }),
        label='Payment Date',
        required=False,
        input_formats=['%d/%m/%Y']
    )
    

    paid_by = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )


    collected_by = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )


     
    instrument_type = forms.ChoiceField(
        choices=[('', 'Select instrument type'), ('cheque', 'Cheque'), ('draft', 'Draft')],
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'id': 'instrument_type'
        }),
        label='Instrument Type',
        required=False,
    )

    
    instrument_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'instrument_date',
        }),
        label='Instrument Date',
        required=False,
        input_formats=['%d/%m/%Y']
    )




    def __init__(self, *args, **kwargs):
        super(CreditForm, self).__init__(*args, **kwargs)

        # Fetching bank names from the database
        banks = Pcash150Bank.objects.filter(active_yn_150='Yes').values_list('id_150', 'bank_full_name_150').distinct().order_by('bank_full_name_150')
        bank_choices = [('', 'Select Bank')] + [(bank[0], bank[1]) for bank in banks]
        self.fields['bank'].choices = bank_choices

    def clean_withdrawal_date(self):
        withdrawal_date = self.cleaned_data.get('withdrawal_date')

        if withdrawal_date and withdrawal_date > timezone.now().date():
            self.add_error('withdrawal_date','Withdrawal date must today or earlier.')

        
        return withdrawal_date
    

    def clean_instrument_date(self):
        instrument_date = self.cleaned_data.get('instrument_date')
        withdrawal_date = self.cleaned_data.get('withdrawal_date')

        if instrument_date and withdrawal_date :
            if instrument_date > timezone.now().date():
                self.add_error('instrument_date','Enter a valid instrument date.')
            if instrument_date <= withdrawal_date:
                self.add_error('instrument_date','Enter a valid instrument date.')

        
        return instrument_date

    
    
    def clean_payment_date(self):
        payment_date = self.cleaned_data.get('payment_date')

        if payment_date and payment_date > timezone.now().date():
            self.add_error('payment_date','Received date must today or earlier.')

        
        return payment_date
    

    def clean_cheque_number(self):
        cheque_number = self.cleaned_data.get('cheque_number')

        if cheque_number:
            if Pcash250Addcredit.objects.filter(instrument_no_250=cheque_number).exists():
                self.add_error('cheque_number', 'This instrument number already exists.')
        
        return cheque_number
        


    def clean(self):
        cleaned_data = super().clean()
        credit_type = self.data.get('credit_type', None) 
        instrument_type = self.data.get('instrument_type', None) 


        if credit_type == 'internal_credit':
           
            required_fields = ['withdrawal_date', 'bank', 'instrument_type', 'cheque_number', 'instrument_date', 'amount_1', 'withdrawal_by']
            
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

        elif credit_type == 'other_payment':
            # Required fields for 'other_payment'
            required_fields = ['payment_date',  'amount_2', 'paid_by', 'collected_by']
            
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

        return cleaned_data

##########################################################################################################################################

class ExpenseForm(forms.Form):
    # Define choices as an empty list initially
    EXPENDITURE_HEAD_CHOICES = []

    def __init__(self, *args, **kwargs):
        super(ExpenseForm, self).__init__(*args, **kwargs)

        # Fetching expenditure head data from the database
        expnheads = Pcash200Expnhead.objects.filter(active_yn_200='Yes').values_list('id_200', 'expn_head_name_200').distinct().order_by('expn_head_name_200')
        # Preparing choices for the district fields
        self.EXPENDITURE_HEAD_CHOICES = [('', 'Select')] + [(head[0], head[1]) for head in expnheads]

        # Assign the choices to each district field
        for i in range(1, 11):
            self.fields[f'district_{i}'].choices = self.EXPENDITURE_HEAD_CHOICES
    
    
    
    
    
    district_1 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_1 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_1 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_2 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )


    narration_2 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_2 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_3 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_3 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_3 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_4 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_4 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_4 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_5 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_5 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_5 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_6 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_6 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_6 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_7 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_7 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_7 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_8 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_8 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_8 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    district_9 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_9 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_9 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )



    district_10 = forms.ChoiceField(
        choices=EXPENDITURE_HEAD_CHOICES,
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false',
            'data-kt-ecommerce-settings-type': '',
        }),
        required=False
    )

    narration_10 = forms.CharField(
        widget=forms.Textarea(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'rows': 1,
        }),
        required=False
    )

    amount_10 = forms.DecimalField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',
        }),
        required=False
    )


    executive = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False
    )
    
    total_expense = forms.DecimalField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400', 'readonly': 'readonly'}),
        required=False
    )

    expense_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'expense_date',
        }),
        required=False,
        input_formats=['%d/%m/%Y']  
    )

    

    
    
    # Custom clean method to validate the district and amount pairs
    def clean(self):
        cleaned_data = super().clean()
        errors = []

        # Validate each district and amount pair
        for i in range(1, 11):
            district = cleaned_data.get(f'district_{i}')
            amount = cleaned_data.get(f'amount_{i}')

            # Check if one field is filled but the other is empty
            if district and not amount:
                errors.append(f'Amount for expenditure {i} is required if expenditure is selected.')
            elif amount and not district:
                errors.append(f'expenditure {i} is required if an amount is entered.')

         # Ensure that both executive and total_expense are provided
        executive = cleaned_data.get('executive')
        total_expense = cleaned_data.get('total_expense')
        expense_date = cleaned_data.get('expense_date')

        if not executive:
            self.add_error('executive', 'This field is required.')
        if not expense_date:
            self.add_error('expense_date', 'This field is required.')
        if not total_expense:
            self.add_error('total_expense', 'This field is required.')

        if expense_date and expense_date > timezone.now().date():
            self.add_error('expense_date', 'The expense date cannot be in the future.')

        if errors:
            raise ValidationError(errors)

        return cleaned_data
    
##########################################################################################################################################

class ExpenditureForm(forms.ModelForm):
    class Meta:
        model = Pcash200Expnhead
        fields = ['expn_head_group_200', 'expn_head_name_200', 'expn_code_200']
    
    
    expn_head_name_200 = forms.CharField(
        max_length=100,
        label="Expenditure Head (Max 100 Char)",
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'placeholder': 'Enter Expenditure Head',
        }),
        required=False
    )
    
    expn_code_200 = forms.CharField(
        max_length=100,  
        label="Expense Code",
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'placeholder': 'Enter Expense Code',
        }),
        required=False
    )

    expn_head_group_200 = forms.CharField(
        max_length=100,  
        label="Expense Head Group",
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'placeholder': 'Enter  Head Group',
        }),
        required=False
    )


    def clean_expn_code_200(self):
        expn_code = self.cleaned_data.get('expn_code_200')
        char,num=0,0
        
        if expn_code:
            if len(expn_code) == 5:
                for ch in expn_code:
                    if ch>='A' and ch<='Z':
                        char+=1
                    elif ch>='0' and ch<='9':
                        num+=1
                    elif ch>='a' and ch<='z':
                        self.add_error('expn_code_200','Characters should be in uppercase.')
                        break
                    else:
                        self.add_error('expn_code_200','Expense code must be alphanumeric.')
                        break
                else:
                    if Pcash200Expnhead.objects.filter(expn_code_200=expn_code).exists():
                        self.add_error('expn_code_200','This expense code already exists. Please enter a unique code.')
                
                if char == 5 or num == 5:
                    self.add_error('expn_code_200','Expense code must be alphanumeric.')
            else:
                self.add_error('expn_code_200','Length of an expensive code must be 5.')
        return expn_code



    # Optional: You can also add custom validation for additional checks
    def clean(self):
        cleaned_data = super().clean()
        
        expenditure_head = cleaned_data.get('expn_head_name_200')
        expense_code = cleaned_data.get('expn_code_200')
        expn_head_group = cleaned_data.get('expn_head_group_200')
        
        if not expenditure_head:
            self.add_error('expn_head_name_200', 'This field is required.')
        
        if not expense_code:
            self.add_error('expn_code_200', 'This field is required.')

        if not expn_head_group:
            self.add_error('expn_head_group_200', 'This field is required.')

        return cleaned_data

##########################################################################################################################################

class CreditValidationForm(forms.Form):
    withdrawal_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'withdrawal_date',
        }),
        label='Cash Withdrawal Date',
        required=False,
        input_formats=['%d/%m/%Y']  
    )

    
    cheque_number = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )

    
   
    payment_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'payment_date',
        }),
        label='Payment Date',
        required=False,
        input_formats=['%d/%m/%Y']
    )
    

    paid_by = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400'}),
        required=False,
    )
 
    instrument_type = forms.ChoiceField(
        choices=[('select', 'select'),('cheque', 'Cheque'), ('draft', 'Draft')],
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'id': 'instrument_type'
        }),
        label='Instrument Type',
        required=False,
    )

   
    
    instrument_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'instrument_date',
        }),
        label='Instrument Date',
        required=False,
        input_formats=['%d/%m/%Y']
    )



    executive = forms.CharField(
        widget=forms.TextInput(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'pattern': '[0-9]*\\.?[0-9]*',  
            'title': 'Enter a valid amount with digits and an optional decimal point',
            'oninput': 'validateDecimalInput(this)',}),
        required=False
    )

    expense_date = forms.DateField(
        widget=forms.TextInput(attrs={
            'class': 'form-control form-control-sm form-control-solid ps-10 border-gray-400',
            'placeholder': 'Pick a date',
            'id': 'expense_date',
        }),
        required=False,
        input_formats=['%d/%m/%Y']  
    )


    def clean_withdrawal_date(self):
        withdrawal_date = self.cleaned_data.get('withdrawal_date')

        if withdrawal_date and withdrawal_date > timezone.now().date():
            self.add_error('withdrawal_date','Withdrawal date cannot be in the future. It must be today or earlier.')
        
        return withdrawal_date
        


    def clean(self):
        cleaned_data = super().clean()
        credit_type = self.data.get('credit_type', None) 
        adjustment_type = self.data.get('adjustment_type', None)

        
        if credit_type == 'internal_credit':
            required_fields = ['withdrawal_date', 'instrument_type', 'cheque_number']
                
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

        if credit_type == 'other_payment':
            required_fields = ['payment_date','paid_by']
                
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')      
        
        if credit_type == 'expend_adjust':
            required_fields = ['executive', 'expense_date']
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

            return cleaned_data    

##########################################################################################################################################

class AdjustmentForm(forms.Form):
    
    narration = forms.CharField(
        widget=forms.Textarea(attrs={'class': 'form-control form-control-sm form-control-solid border-gray-400', 'rows': 1}),
        required=False,
    )

   
    CHOICES = [
        ('select', 'select'),
        ('plus', '+'),
        ('minus', '-')
    ]

    operation = forms.ChoiceField(
        choices=CHOICES,
        required=True,
        widget=forms.Select(
            attrs={
                'class': 'form-select form-select-sm form-select-solid border-gray-400 rounded-end-0 fs-3 py-1 pe-10 w-auto',
                'data-kt-ecommerce-settings-type': ''
            }
        )
    )

    amount = forms.CharField(
        required=True,
        widget=forms.TextInput(
            attrs={
                'class': 'form-control form-control-sm form-control-solid border-gray-400 rounded-start-0',
                'name': 'amount',
                'pattern': '[0-9]*\\.?[0-9]*',  
                'title': 'Enter a valid amount with digits and an optional decimal point',
                'oninput': 'validateDecimalInput(this)',
                'value': ''
            }
        )
    )


    def clean(self):
        cleaned_data = super().clean()
        adjustment_type = self.data.get('adjustment_type', None) 


        if adjustment_type == 'credit_adjust':
            required_fields = ['operation','amount']
            
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

        elif adjustment_type == 'expend_adjust':
            required_fields = ['operation','amount']
            
            for field in required_fields:
                if not cleaned_data.get(field):
                    self.add_error(field, 'This field is required.')

        return cleaned_data

##########################################################################################################################################

class SearchTransactionForm(forms.Form):
    transaction_type = forms.ChoiceField(
        required=False,
        label='Select Transaction Type',
        widget=forms.Select(attrs={
            'class': 'form-select form-select-sm form-select-solid border-gray-400',
            'data-control': 'select2',
            'data-hide-search': 'false'
        })
    )
    start_date = forms.DateField(
        required=False,
        widget=forms.DateInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'placeholder': 'From Date',
            'type': 'date'
        })
    )
    end_date = forms.DateField(
        required=False,
        widget=forms.DateInput(attrs={
            'class': 'form-control form-control-sm form-control-solid border-gray-400',
            'placeholder': 'To Date',
            'type': 'date'
        })
    )

    def __init__(self, *args, **kwargs):
        super(SearchTransactionForm, self).__init__(*args, **kwargs)

        # Transaction type choices
        transaction_choices = [
            ('', 'Select Transaction Type'),
            ('credit', 'Credit'),
            ('debit', 'Debit'),
            ('refund', 'Refund'),
            ('transfer', 'Transfer')
        ]
        self.fields['transaction_type'].choices = transaction_choices

##########################################################################################################################################