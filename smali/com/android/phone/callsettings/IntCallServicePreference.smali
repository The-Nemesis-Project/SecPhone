.class public Lcom/android/phone/callsettings/IntCallServicePreference;
.super Landroid/preference/DialogPreference;
.source "IntCallServicePreference.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mAutoLayout:Landroid/widget/LinearLayout;

.field mAutoRadio:Landroid/widget/CheckedTextView;

.field mContext:Landroid/content/Context;

.field mManualLayout:Landroid/widget/LinearLayout;

.field mManualRadio:Landroid/widget/CheckedTextView;

.field mManualSvcNumber:Landroid/widget/EditText;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/IntCallServicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$3;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/android/phone/callsettings/IntCallServicePreference$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$7;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 71
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->autoClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->manualClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IntCallServicePreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->positiveButtonClicked()V

    return-void
.end method

.method private autoClicked()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 171
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 172
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method private manualClicked()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 182
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 183
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    .line 188
    :cond_1
    return-void
.end method

.method private positiveButtonClicked()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 191
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v7}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 194
    .local v1, mode:I
    :goto_0
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, data:Ljava/lang/String;
    move-object v4, v0

    .line 196
    .local v4, tempareaCode:Ljava/lang/String;
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 199
    const-string v0, ""

    .line 201
    if-nez v1, :cond_1

    .line 202
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v9, 0x7f0906e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 203
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 221
    .end local v5           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #mode:I
    .end local v4           #tempareaCode:Ljava/lang/String;
    :cond_0
    move v1, v6

    .line 191
    goto :goto_0

    .line 208
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #mode:I
    .restart local v4       #tempareaCode:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "int_call_svc_enabled"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "int_call_svc_value"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0907d1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, tempSummary:Ljava/lang/String;
    if-lez v1, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0907cf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, temp:Ljava/lang/String;
    :goto_2
    const-string v6, "%d"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    if-lez v1, :cond_2

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0907d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_2
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v2           #temp:Ljava/lang/String;
    :cond_3
    move-object v2, v0

    .line 212
    goto :goto_2
.end method

.method private setInitValueAndLayout(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 101
    const v4, 0x7f0a02b9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    .line 102
    const v4, 0x7f0a02bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    .line 103
    const v4, 0x7f0a02ba

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    .line 104
    const v4, 0x7f0a02bc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    .line 105
    const v4, 0x7f0a02bd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    .line 107
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    const v7, 0x7f090616

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    const v7, 0x7f090615

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_0
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "int_call_svc_enabled"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, int_value:I
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "int_call_svc_value"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, data:Ljava/lang/String;
    if-eq v1, v8, :cond_1

    if-nez v0, :cond_2

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "int_call_svc_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "int_call_svc_value"

    const-string v8, "002"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #int_value:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "int_call_svc_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 136
    .local v3, value:I
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    if-lez v3, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 137
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    if-lez v3, :cond_6

    move v4, v6

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 138
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-lez v3, :cond_7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 143
    .local v2, len:I
    if-lez v2, :cond_3

    .line 144
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    .end local v2           #len:I
    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallServicePreference;->showKeypad()V

    .line 150
    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/IntCallServicePreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$1;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/phone/callsettings/IntCallServicePreference$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$2;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    return-void

    :cond_5
    move v4, v6

    .line 136
    goto :goto_0

    :cond_6
    move v4, v5

    .line 137
    goto :goto_1

    :cond_7
    move v6, v5

    .line 139
    goto :goto_2
.end method

.method private showKeypad()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 238
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$4;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public checkKeypadonResume()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$5;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V

    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 83
    const v0, 0x7f0400a3

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 87
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 263
    const v0, 0x7f0902ba

    new-instance v1, Lcom/android/phone/callsettings/IntCallServicePreference$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IntCallServicePreference$6;-><init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    return-void
.end method
