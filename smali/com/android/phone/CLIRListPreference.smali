.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private final mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private prev_CLIR_value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 50
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 56
    iput v2, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 59
    iput v2, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    .line 63
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/CLIRListPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CLIRListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method private saveClirInSystemSettings(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 258
    const-string v1, "CLIRListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveClirInSystemSettings value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clir_preference"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "CLIRListPreference"

    const-string v2, "could not persist clir in system setting - "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 7
    .parameter "tmpClirArray"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 132
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 133
    aget v5, p1, v4

    if-eq v5, v4, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 135
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, value:I
    aget v4, p1, v4

    packed-switch v4, :pswitch_data_0

    .line 159
    :pswitch_0
    const/4 v2, 0x0

    .line 162
    :goto_1
    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 164
    iput v2, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    .line 167
    const v1, 0x7f090056

    .line 168
    .local v1, summary:I
    packed-switch v2, :pswitch_data_1

    .line 179
    :goto_2
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 181
    invoke-direct {p0, v2}, Lcom/android/phone/CLIRListPreference;->saveClirInSystemSettings(I)V

    .line 182
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_1
    move v0, v3

    .line 133
    goto :goto_0

    .line 143
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_1
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_2

    .line 152
    const/4 v2, 0x0

    .line 153
    goto :goto_1

    .line 145
    :pswitch_2
    const/4 v2, 0x1

    .line 146
    goto :goto_1

    .line 148
    :pswitch_3
    const/4 v2, 0x2

    .line 149
    goto :goto_1

    .line 170
    .restart local v1       #summary:I
    :pswitch_4
    const v1, 0x7f090055

    .line 171
    goto :goto_2

    .line 173
    :pswitch_5
    const v1, 0x7f090054

    .line 174
    goto :goto_2

    .line 176
    :pswitch_6
    const v1, 0x7f090056

    goto :goto_2

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 143
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 101
    if-nez p2, :cond_1

    .line 102
    const-string v1, "feature_marvell_dsds"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v4, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 113
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 114
    .local v0, mTelMan:Landroid/telephony/TelephonyManager;
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget v1, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    const-string v1, "CLIRListPreference"

    const-string v2, "USIM is absent. Skip display of busy dialog"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 1
    .parameter "listener"
    .parameter "skipReading"
    .parameter "simId"

    .prologue
    .line 94
    invoke-static {p3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iput p3, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 98
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 80
    iget v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 82
    const-string v0, "CLIRListPreference"

    const-string v1, "CLIR value is not changed. Do not update CLIR value"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method
