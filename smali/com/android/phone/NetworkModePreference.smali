.class public Lcom/android/phone/NetworkModePreference;
.super Landroid/preference/ListPreference;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;,
        Lcom/android/phone/NetworkModePreference$MyHandler2;,
        Lcom/android/phone/NetworkModePreference$MyHandler;
    }
.end annotation


# static fields
.field private static data_enable:Z

.field public static mPrevNetworkType:[I

.field private static mRegistered:Z

.field private static sNetworkTypeSim0:I

.field private static sNetworkTypeSim1:I

.field private static sNetworkTypeSim2:I

.field private static sSetEnabledFlag:Z

.field private static sSetEnabledFlag_1:Z


# instance fields
.field lteon:Z

.field private mActivePhone:I

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mConnManager:Landroid/net/MultiSimConnectivityManager;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

.field private mIsActiveSimDisable:Z

.field private mIsDisconnectingData:Z

.field private mIsOtherPhone3G:Z

.field private mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mLTEOnlyWarningDialog:Landroid/app/AlertDialog;

.field private mNetworkType:I

.field private mOldNetworkType:I

.field private mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneV2:[Lcom/android/internal/telephony/Phone;

.field public mPhone_call:Z

.field mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private summaryString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    sput-boolean v2, Lcom/android/phone/NetworkModePreference;->data_enable:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    .line 67
    sput v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 68
    sput v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 69
    sput v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 70
    sput-boolean v2, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    .line 72
    sput-boolean v2, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag_1:Z

    .line 102
    sput-boolean v1, Lcom/android/phone/NetworkModePreference;->mRegistered:Z

    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NetworkModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v8, 0x40

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/Phone;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    .line 61
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    .line 62
    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    .line 63
    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone_call:Z

    .line 65
    iput v4, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 74
    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z

    .line 90
    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    .line 94
    iput v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 100
    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    .line 103
    iput-object v7, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    .line 109
    new-instance v3, Lcom/android/phone/NetworkModePreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$1;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 652
    new-instance v3, Lcom/android/phone/NetworkModePreference$4;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$4;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 862
    new-instance v3, Lcom/android/phone/NetworkModePreference$11;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$11;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 869
    new-instance v3, Lcom/android/phone/NetworkModePreference$12;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$12;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    :goto_0
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    .line 188
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 190
    const-string v3, "feature_multisim_ver2"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_multisim_ver3"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    :cond_0
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 192
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aput-object v4, v3, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2           #simSlotNum:I
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 180
    :cond_2
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    :cond_3
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 185
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 194
    .restart local v2       #simSlotNum:I
    :cond_5
    new-instance v3, Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v3

    if-ne v3, v6, :cond_6

    .line 196
    new-instance v3, Lcom/android/phone/NetworkModePreference$MyHandler2;

    invoke-direct {v3, p0, v7}, Lcom/android/phone/NetworkModePreference$MyHandler2;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    .line 198
    :cond_6
    sget-boolean v3, Lcom/android/phone/NetworkModePreference;->mRegistered:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    if-eqz v3, :cond_7

    .line 199
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iput-object v7, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    .line 202
    :cond_7
    new-instance v3, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "action.ButtonEnable"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v3, "android.net.conn.DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mReceiver:Lcom/android/phone/NetworkModePreference$ButtonEnableBoradcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    sput-boolean v6, Lcom/android/phone/NetworkModePreference;->mRegistered:Z

    .line 209
    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v3, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 213
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #simSlotNum:I
    :cond_8
    const-string v3, "true"

    const-string v4, "persist.radio.lteon"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 214
    iput-boolean v6, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    .line 216
    :cond_9
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lteon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 218
    const-string v3, "ril_network_on"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 219
    iget-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    if-eqz v3, :cond_b

    const-string v3, "network_mode_list_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 220
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    .line 230
    :goto_2
    new-instance v3, Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    .line 232
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 233
    .local v1, phoneType:I
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-ne v1, v6, :cond_10

    .line 236
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 238
    :cond_a
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v3, v6, :cond_e

    .line 240
    const-string v3, "NetworkModePreference"

    const-string v4, "get TELEPHONY_SERVICE_2"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone2"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 254
    :goto_3
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 255
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v5, v8}, Landroid/telephony/TelephonyManager;->listenDs(ILandroid/telephony/PhoneStateListener;I)V

    .line 260
    :goto_4
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 261
    return-void

    .line 222
    .end local v1           #phoneType:I
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->set3Glist()V

    goto/16 :goto_2

    .line 224
    :cond_c
    const-string v3, "network_mode_list_lte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 225
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    goto/16 :goto_2

    .line 227
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->set3Glist()V

    goto/16 :goto_2

    .line 243
    .restart local v1       #phoneType:I
    :cond_e
    const-string v3, "NetworkModePreference"

    const-string v4, "get TELEPHONY_SERVICE"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 248
    :cond_f
    const-string v3, "NetworkModePreference"

    const-string v4, "get TELEPHONY_SERVICE_2"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone2"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 252
    :cond_10
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 257
    :cond_11
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeDataService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return p0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkModePreference;)Landroid/net/MultiSimConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkModePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/NetworkModePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkModePreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/NetworkModePreference;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/phone/NetworkModePreference;->data_enable:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->data_enable:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkModePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private changeDataService()V
    .locals 3

    .prologue
    .line 670
    const-string v0, "NetworkModePreference"

    const-string v1, "Change data service network"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v0, "persist.sys.dataprefer.simid"

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 681
    return-void

    .line 674
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 675
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    goto :goto_0

    .line 677
    :cond_1
    const-string v0, "NetworkModePreference"

    const-string v1, "switchToSim3DataNetwork"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeNetworkType()V
    .locals 8

    .prologue
    const v7, 0x1040014

    const v6, 0x1040009

    const/4 v5, 0x0

    const v4, 0x1040013

    const/4 v3, 0x1

    .line 711
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "feature_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim_ver3"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    if-nez v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->mConnManager:Landroid/net/MultiSimConnectivityManager;

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    .line 719
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 720
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    .line 823
    :cond_3
    :goto_0
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 860
    :goto_1
    return-void

    .line 721
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 722
    const-string v0, "NetworkModePreference"

    const-string v1, "getActivatedSimNum() == 2"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 723
    const-string v0, "qualcomm_ril"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 724
    const-string v0, "NetworkModePreference"

    const-string v1, "QUALCOMM RIL"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-eqz v0, :cond_5

    .line 726
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0907d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090915

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$5;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$5;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 733
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    goto :goto_0

    .line 736
    :cond_6
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v0, :cond_8

    .line 737
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    .line 738
    const-string v0, "persist.sys.dataprefer.simid"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v0, v1, :cond_7

    .line 740
    const-string v0, "NetworkModePreference"

    const-string v1, "Don\'t need change data service network, already activePhone is dataPrefered SIM."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f090914

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090915

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$7;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$7;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$6;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$6;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 753
    :cond_8
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_9

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-eqz v0, :cond_9

    .line 754
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0907da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$8;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$8;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 775
    :cond_9
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v0, :cond_3

    .line 776
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 777
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkType()V

    goto/16 :goto_0

    .line 779
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0907d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$10;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$10;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NetworkModePreference$9;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$9;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 826
    :cond_b
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 827
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 829
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnablePromptWhenSelectLTEOnlyNetMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    .line 830
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f090590

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f090916

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningDialog:Landroid/app/AlertDialog;

    .line 839
    :cond_c
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 840
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 844
    :cond_d
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    .line 845
    :cond_e
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LTEON ] Network mode is Automode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v0, "persist.radio.netmode.auto"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_2
    const-string v0, "NetworkModePreference"

    const-string v1, "[LTEON ]User change YES"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v0, "persist.radio.user.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "network_mode_list_dcm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "network_mode_list_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 856
    :cond_f
    const-string v0, "persist.radio.setnwkmode"

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_10
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 848
    :cond_11
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LTEON ] Network mode is G or W only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v0, "persist.radio.netmode.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private get3Gsummary()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    .line 386
    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_3
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_4
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_5
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 399
    :cond_7
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :cond_8
    const-string v0, "display_tdscdma_instead_of_wcdma"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 404
    :cond_9
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getLTEsummary()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_2
    const-string v0, "remove_network_mode_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_3
    const-string v0, "cust_network_sel_menu4_atl_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_4
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 360
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_5
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 363
    :cond_6
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 365
    :cond_7
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 367
    :cond_8
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :cond_9
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :cond_a
    const-string v0, "cust_network_sel_menu4_lteonly"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 371
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 372
    :cond_b
    const-string v0, "network_mode_list_dcm_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 373
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :cond_c
    const-string v0, "network_mode_list_dcm_lte_3g"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 376
    :cond_d
    const-string v0, "network_mode_tdlte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 377
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :cond_e
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private set3Glist()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 316
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 346
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 319
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 320
    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 322
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 325
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 326
    :cond_3
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 328
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 329
    :cond_4
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 331
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 332
    :cond_5
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 334
    :cond_6
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 335
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 336
    :cond_7
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 337
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 338
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 339
    :cond_8
    const-string v0, "display_tdscdma_instead_of_wcdma"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 340
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 341
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 343
    :cond_9
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 344
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method

.method private setLTElist()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 266
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 311
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 269
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 272
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 273
    :cond_2
    const-string v0, "remove_network_mode_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 275
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 276
    :cond_3
    const-string v0, "cust_network_sel_menu4_atl_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 278
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 279
    :cond_4
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 281
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 282
    :cond_5
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 284
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 285
    :cond_6
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 286
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 287
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 288
    :cond_7
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    :cond_8
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 291
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 292
    :cond_9
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 293
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 294
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 295
    :cond_a
    const-string v0, "cust_network_sel_menu4_lteonly"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 296
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 297
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 298
    :cond_b
    const-string v0, "network_mode_list_dcm_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 299
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 300
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 301
    :cond_c
    const-string v0, "network_mode_list_dcm_lte_3g"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 303
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 304
    :cond_d
    const-string v0, "network_mode_tdlte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 305
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 306
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 308
    :cond_e
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 309
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 417
    const-string v1, "dcm_change_data_enable_func"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 427
    .local v0, state:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyManager.getDataState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz p1, :cond_2

    .line 430
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v5, :cond_0

    .line 431
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 471
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 434
    .restart local v0       #state:I
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    goto :goto_0

    .line 438
    :cond_2
    if-eqz v0, :cond_0

    .line 439
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    goto :goto_0

    .line 442
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    goto :goto_0

    .line 447
    .end local v0           #state:I
    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v1, v5, :cond_5

    .line 450
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabledSecondary("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_5
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setNetworkType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 685
    const-string v0, "NetworkModePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v0, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    .line 687
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v0, :cond_0

    .line 688
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 689
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 690
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 691
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 704
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.ButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 705
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    .line 706
    return-void

    .line 692
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v0, v3, :cond_1

    .line 693
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 694
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 695
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 696
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 698
    :cond_1
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    .line 699
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    .line 700
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    .line 701
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndSetEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 477
    const-string v1, "ril.SetEnabledFlag"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, SetEnable:Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    sput-boolean v4, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag_1:Z

    .line 484
    :goto_0
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSetEnabled() sSetEnabledFlag_1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag_1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z

    if-eqz v1, :cond_1

    .line 486
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsActiveSimDisable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    :goto_1
    return-void

    .line 481
    :cond_0
    sput-boolean v5, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag_1:Z

    goto :goto_0

    .line 490
    :cond_1
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSetEnabled()        mActivePhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sSetEnabledFlag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-boolean v1, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag_1:Z

    if-nez v1, :cond_5

    .line 494
    :cond_2
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 495
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-nez v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$800(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_1

    .line 497
    :cond_3
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-ne v1, v5, :cond_4

    .line 498
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$800(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_1

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    #calls: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$800(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_1

    .line 503
    :cond_5
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getPreferredNetworkType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "feature_multisim_ver2"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_multisim_ver3"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    if-eqz v1, :cond_1

    .line 513
    const-string v1, "NetworkModePreference"

    const-string v2, "first Activephone mHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 517
    :cond_1
    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    .line 518
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    if-eqz v1, :cond_4

    .line 519
    const-string v1, "NetworkModePreference"

    const-string v2, "first Otherphone mHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 521
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    if-eq v0, v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 520
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    .end local v0           #simSlotNum:I
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 531
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 10
    .parameter "positiveResult"

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f0902ba

    const v7, 0x7f0902b3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 535
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 537
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 539
    :cond_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_multisim_ver2"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_multisim_ver3"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    :cond_1
    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDialogClosed, mNetworkType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOldNetworkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iput v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 543
    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 650
    :cond_2
    :goto_0
    return-void

    .line 549
    :cond_3
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    .line 556
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 558
    .local v1, state:I
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataStateDs(I)I

    move-result v1

    .line 562
    :cond_4
    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDialogClosed : change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Data state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, mDataEnabled:Z
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v2, v5, :cond_8

    .line 573
    :cond_5
    :goto_1
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "feature_multisim_ver2"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "feature_multisim_ver3"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 575
    :cond_6
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_9

    .line 576
    :cond_7
    const-string v2, "NetworkModePreference"

    const-string v3, "Phone State is Not IDLE!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 577
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090452

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 568
    :cond_8
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 571
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto/16 :goto_1

    .line 584
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    if-ne v2, v5, :cond_c

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eq v1, v9, :cond_a

    if-ne v1, v5, :cond_c

    .line 588
    :cond_a
    const-string v2, "network_selection_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-ne v1, v5, :cond_b

    .line 589
    const-string v2, "NetworkModePreference"

    const-string v3, "Currently Data is connecting!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 590
    invoke-direct {p0, v6}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    .line 591
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    .line 592
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/MobileNetworkSettings;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 593
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    new-instance v3, Lcom/android/phone/NetworkModePreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$2;-><init>(Lcom/android/phone/NetworkModePreference;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 600
    :cond_b
    const-string v2, "NetworkModePreference"

    const-string v3, "Currently Data is conncected!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 601
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f09011d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 609
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_0

    .line 612
    :cond_d
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_e

    .line 613
    const-string v2, "NetworkModePreference"

    const-string v3, "Phone State is Not IDLE!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 614
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090452

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 621
    :cond_e
    if-eqz v0, :cond_11

    if-eq v1, v9, :cond_f

    if-ne v1, v5, :cond_11

    .line 626
    :cond_f
    const-string v2, "network_selection_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne v1, v5, :cond_10

    .line 627
    const-string v2, "NetworkModePreference"

    const-string v3, "Currently Data is connecting!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 628
    invoke-direct {p0, v6}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    .line 629
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    .line 630
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/MobileNetworkSettings;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 631
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    new-instance v3, Lcom/android/phone/NetworkModePreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$3;-><init>(Lcom/android/phone/NetworkModePreference;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 638
    :cond_10
    const-string v2, "NetworkModePreference"

    const-string v3, "Currently Data is conncected!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 639
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f09011d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 647
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_0
.end method

.method public setNetworkModePreference(I)V
    .locals 4
    .parameter "activePhone"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    .line 157
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 158
    .local v0, phoneType:I
    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 159
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "NetworkModePreference"

    const-string v2, "get\tTELEPHONY_SERVICE_2"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 167
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhone:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method
