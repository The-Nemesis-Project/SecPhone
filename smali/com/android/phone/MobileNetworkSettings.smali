.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;,
        Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;,
        Lcom/android/phone/MobileNetworkSettings$SIM2Handler;,
        Lcom/android/phone/MobileNetworkSettings$SIM1Handler;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler2;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler1;
    }
.end annotation


# static fields
.field private static fromSettingSearch:Z

.field public static isClickedNetworkModeDiffer:Z

.field private static mArrayLinkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckValue:Z

.field private static mOpenDetailMenu:Z

.field private static mOpenDetailMenuKey:Ljava/lang/String;

.field private static mRegistered:Z

.field private static mSettingValue:I

.field public static mSimId:I


# instance fields
.field private SimState:I

.field private SimState1:I

.field private SimState2:I

.field private buttonPreferredNetworkMode:I

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnotherHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler1;

.field private mButton2Gcheck2:Z

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

.field private mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworks:Landroid/preference/Preference;

.field private mButtonRoamingState:Landroid/preference/Preference;

.field private mButtonSignalStrength:Landroid/preference/Preference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataClicked:Z

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataWarningDialog:Landroid/app/AlertDialog$Builder;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

.field mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

.field mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

.field private mOkClicked:Z

.field private mOtherHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler2;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

.field private mSIM1Handler:Lcom/android/phone/MobileNetworkSettings$SIM1Handler;

.field private mSIM2Handler:Lcom/android/phone/MobileNetworkSettings$SIM2Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToddlerEnabledObserver:Landroid/database/ContentObserver;

.field private mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

.field private objValuePreferredNetworkMode:Ljava/lang/String;

.field private settingsPreferredNetworkMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->isClickedNetworkModeDiffer:Z

    .line 235
    sput v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 243
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    .line 244
    sput-object v2, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 245
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    .line 246
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mCheckValue:Z

    .line 247
    sput-object v2, Lcom/android/phone/MobileNetworkSettings;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 248
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    .line 251
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    .line 255
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    .line 286
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    .line 317
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 2248
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$21;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$21;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0900a8

    .line 2077
    packed-switch p1, :pswitch_data_0

    .line 2157
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 2160
    :goto_0
    return-void

    .line 2079
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2083
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2087
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2091
    :pswitch_3
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2100
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 2107
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2102
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2113
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2117
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2121
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2125
    :pswitch_9
    const-string v0, "network_mode_global_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2134
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2138
    :pswitch_b
    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2139
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2141
    :cond_2
    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2142
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2144
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2149
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2153
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 2077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
    .end packed-switch

    .line 2100
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->objValuePreferredNetworkMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->buttonPreferredNetworkMode:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/MobileNetworkSettings;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setDontShowAgainDB(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/MobileNetworkSettings$SIM1Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM1Handler:Lcom/android/phone/MobileNetworkSettings$SIM1Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/MobileNetworkSettings$SIM2Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM2Handler:Lcom/android/phone/MobileNetworkSettings$SIM2Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MobileNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/MobileNetworkSettings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getPlmnNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1908
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1911
    const/4 v0, 0x0

    .line 1913
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, simName:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimNumeric(Z)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 1893
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1895
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-object v0

    .line 1898
    :cond_1
    if-eqz p1, :cond_2

    .line 1899
    const/4 v0, 0x3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1901
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 1904
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2196
    const-string v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    return-void
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 4

    .prologue
    .line 2423
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2425
    const v1, 0x7f0400d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2428
    const v0, 0x7f0a032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2430
    new-instance v2, Lcom/android/phone/MobileNetworkSettings$22;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/MobileNetworkSettings$22;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 2444
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 2446
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0904e3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$24;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$24;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$23;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$23;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2475
    return-void
.end method

.method private setDataRoamingforATT()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2226
    const-string v0, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2231
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 2232
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 2235
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2245
    :goto_0
    return-void

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private setDontShowAgainDB(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDontShowAgainDB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2290
    if-eqz p1, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "global_mode_change_do_not_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2294
    :cond_0
    return-void
.end method

.method private setMobileData(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2394
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileData() isPopupChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2399
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 2400
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->onDisplayMobileDataOffAlert()V

    .line 2404
    :goto_0
    return-void

    .line 2402
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2407
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2410
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cm.setMobileDataEnabledSecondary("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2420
    :goto_0
    return-void

    .line 2414
    :cond_0
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cm.setMobileDataEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2418
    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setPreferredNetworkMode(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2363
    .line 2365
    if-ltz p1, :cond_0

    const/16 v2, 0xc

    if-le p1, v2, :cond_3

    :cond_0
    move v2, v1

    .line 2373
    :goto_0
    if-nez v2, :cond_1

    const/16 v3, 0xb

    if-ne p2, v3, :cond_1

    .line 2390
    :goto_1
    return v0

    .line 2378
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 2379
    const-string v3, "kor_phone_via_chip"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2380
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2384
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2388
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v0}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    move v0, v1

    .line 2390
    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private setSelectedDataRoamingMode(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1920
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_national_roaming_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1924
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v0

    .line 1925
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getPlmnNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectedDataRoamingMode : simMCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plmnMCC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1928
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1931
    if-nez p1, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1933
    :cond_1
    if-ne p1, v4, :cond_3

    .line 1934
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1935
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 1937
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 1940
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private setSprintForceLTE()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2305
    .line 2308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SprintForceLTE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2314
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 2315
    if-ne v0, v3, :cond_1

    .line 2316
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2321
    :cond_0
    :goto_1
    return-void

    .line 2309
    :catch_0
    move-exception v0

    .line 2311
    const-string v0, "MobileNetworkSettings"

    const-string v2, "SprintForceLTE - SettingNotFoundException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2297
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0906c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2301
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2302
    :cond_1
    return-void
.end method

.method private showGsmUmtsDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2279
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->globalGsmSystemSelectShowDialog()V

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2281
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 2286
    :goto_0
    return-void

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto :goto_0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2487
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2488
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2489
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2493
    :cond_0
    return-void

    .line 2487
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method checkAbsentSimStateAndDisplayToast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2324
    const-string v1, "checkAbsentSimStateAndDisplayToast()"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2325
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2326
    const-string v1, "no sim state"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2327
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f090742

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishUpdateState()V
    .locals 2

    .prologue
    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishUpdateState : fromSettingSearch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 2497
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    if-nez v0, :cond_0

    .line 2502
    :goto_0
    return-void

    .line 2500
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    .line 2501
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2164
    packed-switch p1, :pswitch_data_0

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2166
    :pswitch_0
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 2164
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 354
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 356
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 361
    :goto_0
    const-string v0, "data_roaming_noti_tray"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    .line 364
    :cond_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f090099

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 779
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_fragment_bundle_key"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 784
    if-eqz v4, :cond_1

    .line 785
    const-string v0, "extra_from_search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 786
    if-eqz v5, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 788
    :goto_0
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 791
    :cond_0
    sput-boolean v5, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    .line 792
    const-string v0, "extra_parent_preference_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 793
    const-string v0, "extra_link_key_array"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 794
    const-string v0, "extra_setting_value"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    .line 795
    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/MobileNetworkSettings;->mCheckValue:Z

    .line 796
    const-string v0, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOpenDetailMenuKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSettingValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCheckValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/phone/MobileNetworkSettings;->mCheckValue:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 805
    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    .line 807
    :cond_2
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    .line 808
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 809
    const-string v4, "com.sk.action.update2GButtonEnable"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v4, "com.sk.action.dataButtonEnable"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Lcom/android/phone/MobileNetworkSettings$MyBoradcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 812
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mRegistered:Z

    .line 813
    const-string v0, "MobileNetworkSettings"

    const-string v4, "onCreate"

    invoke-static {v0, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v0, "custom_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 820
    :try_start_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.GLOBAL_ROAMING_LGT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 1237
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 787
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 795
    goto/16 :goto_1

    .line 829
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.phone"

    const-string v5, "com.samsung.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 834
    :catch_0
    move-exception v0

    .line 839
    :cond_6
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 840
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 841
    const v4, 0x7f040095

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 842
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setContentView(Landroid/view/View;)V

    .line 844
    :cond_7
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 845
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 847
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 848
    const-string v4, "sim_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 849
    const-string v4, "sim_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId from tab: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 869
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 891
    :goto_4
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 893
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 895
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$MyHandler2;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler2;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOtherHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler2;

    .line 898
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$MyHandler1;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler1;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAnotherHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler1;

    .line 901
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$SIM1Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MobileNetworkSettings$SIM1Handler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM1Handler:Lcom/android/phone/MobileNetworkSettings$SIM1Handler;

    .line 902
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$SIM2Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MobileNetworkSettings$SIM2Handler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM2Handler:Lcom/android/phone/MobileNetworkSettings$SIM2Handler;

    .line 906
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 907
    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 908
    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 910
    const-string v0, "button_data_enabled_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 911
    const-string v0, "button_roaming_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 912
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 913
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0900b1

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0900b1

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 916
    :cond_a
    const-string v0, "volte_enable_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    .line 917
    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 918
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 919
    :cond_b
    const-string v0, "preferred_network_mode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 922
    const-string v0, "pref_roaming_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    .line 923
    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v5

    .line 924
    const-string v0, "national_roaming_mode_menu_play"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v5, :cond_24

    const-string v0, "26006"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPlay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simMCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 928
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 929
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 930
    :cond_d
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 931
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 933
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "data_national_roaming_mode"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 936
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NATIONAL_ROAMING_MODE is true. settingsDataRoamingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 944
    :cond_e
    :goto_6
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_f

    .line 945
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 948
    :cond_f
    const-string v0, "button_preferred_networks_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworks:Landroid/preference/Preference;

    .line 949
    const-string v0, "preferred_networks"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 950
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworks:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 954
    :cond_10
    const-string v0, "au_network_settings_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_11

    .line 956
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 958
    :cond_11
    const-string v0, "cpa_settings_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_12

    .line 960
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 963
    :cond_12
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v1, :cond_26

    move v0, v1

    .line 964
    :goto_7
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v1, :cond_28

    .line 967
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "preferred_network_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 978
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 979
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v4, v5}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 980
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 981
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-direct {v0, p0, v4, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 1150
    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_14

    .line 1153
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1154
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1157
    :goto_9
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1158
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1162
    :cond_14
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1163
    const-string v0, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntent() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v5, "MobileNetworkSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntent().getExtras() = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1166
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "enable_roaming"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1167
    const-string v3, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    if-eqz v0, :cond_16

    .line 1169
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1170
    :cond_15
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    .line 1176
    :cond_16
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v0, v1, :cond_51

    .line 1178
    const-string v0, "phone2"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1183
    :goto_b
    const-string v0, "global_data_roaming_access_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/GlobalDataRoamingAccess;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    .line 1184
    const-string v0, "roaming_state_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    .line 1185
    const-string v0, "signal_strength"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    .line 1187
    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1188
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1189
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 1190
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1198
    :goto_c
    const-string v0, "sprint_connections_optimizer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1199
    const-string v0, "connections_optimizer_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1201
    :cond_17
    const-string v0, "omadm_lte_forced_nv"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1202
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setSprintForceLTE()V

    .line 1204
    :cond_18
    const-string v0, "sprint_mvno_mobile_network_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1205
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eqz v0, :cond_19

    .line 1206
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1208
    :cond_19
    const-string v0, "tracfone_network_mode_feature"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1209
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eqz v0, :cond_1a

    .line 1210
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1213
    :cond_1a
    const-string v0, "cust_network_sel_menu4_lteready"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1214
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1215
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "network_mode_selection"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1216
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLaunchFromLTEReady : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    if-eqz v0, :cond_1c

    .line 1219
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_1c

    .line 1220
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    const/16 v3, 0x9

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1222
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLaunchFromLTEReady : settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1225
    if-gez v0, :cond_1b

    .line 1226
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1227
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 1230
    :cond_1b
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1236
    :cond_1c
    const-string v0, "Settings"

    const-string v1, "Settings.onCreate()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 853
    :cond_1d
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 854
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "CURRENT_NETWORK"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 860
    :goto_d
    if-nez v0, :cond_1f

    .line 861
    sput v2, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 865
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId from current network: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 855
    :cond_1e
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 857
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v0

    goto :goto_d

    .line 863
    :cond_1f
    sput v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    goto :goto_e

    .line 872
    :cond_20
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 873
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 874
    const-string v4, "sim_id"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 875
    const-string v4, "sim_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 876
    const-string v0, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimId : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-lt v0, v8, :cond_22

    .line 880
    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState:I

    .line 881
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState1:I

    .line 882
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState2:I

    .line 883
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_4

    .line 885
    :cond_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState:I

    .line 886
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_4

    .line 889
    :cond_23
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_4

    :cond_24
    move v0, v2

    .line 924
    goto/16 :goto_5

    .line 940
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_e

    .line 941
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_26
    move v0, v2

    .line 963
    goto/16 :goto_7

    .line 983
    :cond_27
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_8

    .line 986
    :cond_28
    if-eqz v0, :cond_29

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 988
    :cond_29
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 990
    :cond_2a
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 991
    if-eq v5, v8, :cond_2b

    const-string v6, "global_network_cdma_gsm_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 992
    :cond_2b
    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "disable_network_mode_display"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 993
    :cond_2c
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 995
    :cond_2d
    const-string v5, "usa_spr_roaming_feature"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v5, "cdma_apn_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_2e
    const-string v5, "feature_d2_vtr"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 997
    new-instance v5, Lcom/android/phone/CdmaOptions;

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v5, p0, v4, v6}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 999
    :cond_2f
    if-eqz v0, :cond_13

    .line 1000
    const-string v0, "apn_setting_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1003
    :cond_30
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 1004
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1005
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1006
    :cond_31
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1007
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_32
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1009
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1011
    :cond_33
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "preferred_network_mode_pst_vzw"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1013
    const-string v5, "MobileNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Networkmode_enable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1015
    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1016
    const-string v5, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1017
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a5

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1019
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1050
    :goto_f
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1054
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1057
    const-string v5, "feature_vzw"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-nez v0, :cond_13

    .line 1058
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1059
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 1021
    :cond_34
    const-string v5, "network_mode_cdma_lte"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1022
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1024
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a4

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_f

    .line 1026
    :cond_35
    const-string v5, "network_mode_global_lte_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1027
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1029
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800ac

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_f

    .line 1032
    :cond_36
    if-ne v0, v1, :cond_37

    .line 1033
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a7

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1035
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a8

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_f

    .line 1038
    :cond_37
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a9

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1040
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800aa

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_f

    .line 1045
    :cond_38
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a3

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1047
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v6, 0x7f0800a4

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_f

    .line 1062
    :cond_39
    if-ne v5, v1, :cond_4e

    .line 1063
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1064
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-direct {v0, p0, v4, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 1065
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1066
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1067
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1069
    :cond_3a
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-ne v0, v8, :cond_46

    .line 1070
    if-eqz v4, :cond_3b

    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1071
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1073
    :cond_3b
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    .line 1074
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    .line 1075
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1076
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_3c

    .line 1077
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_3d

    .line 1080
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1098
    :cond_3d
    :goto_10
    const-string v0, "feature_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "feature_multisim_ver3"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1099
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_3f

    .line 1100
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    .line 1101
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_40

    .line 1102
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    .line 1103
    :cond_40
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_41

    .line 1104
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    .line 1105
    :cond_41
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1106
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_42

    .line 1107
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    .line 1108
    :cond_42
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_43

    .line 1109
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    .line 1110
    :cond_43
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_44

    .line 1111
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    .line 1113
    :cond_44
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_45

    .line 1114
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget v5, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setNetworkModePreference(I)V

    .line 1116
    :cond_45
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_13

    .line 1117
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    goto/16 :goto_8

    .line 1082
    :cond_46
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_47

    .line 1083
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1084
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    .line 1085
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    .line 1086
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    .line 1087
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/android/phone/MobileNetworkSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/NetworkModePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1091
    :cond_47
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    .line 1092
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1093
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1094
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 1120
    :cond_48
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 1121
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkModePreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    .line 1124
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1125
    const-string v0, "button_prefer_networkmode1_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1126
    :cond_49
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1127
    const-string v0, "button_prefer_networkmode2_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1128
    :cond_4a
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1129
    const-string v0, "button_prefer_networkmode3_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1131
    :cond_4b
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1132
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1133
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 1135
    :cond_4c
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1136
    const-string v0, "button_prefer_networkmode_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1138
    :cond_4d
    const-string v0, "network_mode_disable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1139
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1140
    const-string v0, "button_prefer_2g_key"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 1145
    :cond_4e
    if-eq v5, v1, :cond_13

    if-eq v5, v8, :cond_13

    .line 1146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_4f
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_9

    :cond_50
    move-object v0, v3

    .line 1164
    goto/16 :goto_a

    .line 1180
    :cond_51
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_b

    .line 1193
    :cond_52
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1194
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1195
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    :cond_53
    move v0, v2

    goto/16 :goto_d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 2182
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2187
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2192
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 2205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2206
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2218
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 2219
    const/4 v0, 0x1

    .line 2221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1715
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1716
    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1718
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1723
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1725
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1726
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x1010355

    const v8, 0x104000a

    const/high16 v7, 0x104

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1737
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    move-object v0, p2

    .line 1741
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1742
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "preferred_network_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1745
    if-eq v3, v4, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/MobileNetworkSettings;->isClickedNetworkModeDiffer:Z

    .line 1746
    const-string v0, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isClickedNetworkModeDiffer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/MobileNetworkSettings;->isClickedNetworkModeDiffer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1747
    const-string v0, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buttonNetworkMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1748
    const-string v0, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingsNetworkMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1750
    iput v3, p0, Lcom/android/phone/MobileNetworkSettings;->buttonPreferredNetworkMode:I

    .line 1751
    iput v4, p0, Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I

    .line 1752
    const-string v0, "preferred_network_mode_reboot_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1753
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->objValuePreferredNetworkMode:Ljava/lang/String;

    .line 1757
    :goto_1
    if-eq v3, v4, :cond_1

    .line 1758
    const-string v0, "preferred_network_mode_reboot_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    if-eq v0, v3, :cond_0

    const/16 v0, 0x8

    if-eq v0, v3, :cond_0

    const/16 v0, 0xa

    if-ne v0, v3, :cond_5

    .line 1760
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090726

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x1040014

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$14;

    invoke-direct {v4, p0}, Lcom/android/phone/MobileNetworkSettings$14;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$13;

    invoke-direct {v4, p0}, Lcom/android/phone/MobileNetworkSettings$13;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1787
    :cond_1
    const-string v0, "system_selection_automatic_ab_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    if-ne v0, v3, :cond_6

    .line 1788
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->cdmaSystemSelectShowDialog()V

    .line 1889
    :cond_2
    :goto_2
    return v1

    :cond_3
    move v0, v2

    .line 1745
    goto/16 :goto_0

    .line 1755
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1783
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1789
    :cond_6
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1790
    const/16 v0, 0xa

    if-eq v0, v3, :cond_7

    const-string v0, "network_mode_global_lte_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    if-ne v0, v3, :cond_8

    .line 1792
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1794
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->isClickedNetworkModeDiffer:Z

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setDontShowAgainDB(Z)V

    .line 1795
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto :goto_2

    .line 1797
    :cond_8
    const/16 v0, 0x8

    if-ne v0, v3, :cond_9

    .line 1798
    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1799
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1800
    const-string v0, "MobileNetworkSettings"

    const-string v3, "displayed cdma network change popup"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1801
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090740

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$16;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$16;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$15;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$15;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1823
    :cond_9
    const/4 v0, 0x3

    if-ne v0, v3, :cond_b

    .line 1824
    const-string v0, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1825
    const-string v0, "MobileNetworkSettings"

    const-string v3, "displayed gsm network change popup"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1826
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090741

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$18;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$18;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$17;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$17;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1851
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V

    goto/16 :goto_2

    .line 1854
    :cond_b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto/16 :goto_2

    .line 1857
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 1858
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1862
    const-string v3, "data_roaming_option_national"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "data_roaming_option_all"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    if-eq v0, v1, :cond_e

    :cond_d
    const-string v3, "data_roaming_option_all"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    .line 1865
    :cond_e
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 1866
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mRoamingWarningDialog:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0904e4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0904e3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$20;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/MobileNetworkSettings$20;-><init>(Lcom/android/phone/MobileNetworkSettings;I)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$19;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$19;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1884
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x1040013

    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v0

    if-ne v0, v1, :cond_d

    .line 382
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "button_apn_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 389
    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 390
    const-string v3, "sim Id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    :goto_0
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 763
    :goto_1
    return v0

    .line 392
    :cond_1
    const-string v1, "sim Id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 398
    goto :goto_1

    .line 401
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 403
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "button_prefer_2g_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mPhone_state_check:Z

    if-ne v0, v1, :cond_4

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090456

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090452

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$4;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateButtonPrefer2g()V

    move v0, v1

    .line 419
    goto :goto_1

    .line 422
    :cond_4
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v4, v4, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network mode2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v4, v4, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v0, v0, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode2:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    if-eqz v0, :cond_6

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-ne v0, v3, :cond_9

    .line 430
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v3, v3, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode:I

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM1Handler:Lcom/android/phone/MobileNetworkSettings$SIM1Handler;

    invoke-virtual {v4, v1}, Lcom/android/phone/MobileNetworkSettings$SIM1Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 432
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->update2GButtonDisable()V

    .line 433
    const-string v0, "ril.rat_change_sim1"

    const-string v3, "on"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT_CHANGE_SIM1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.rat_change_sim1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v0, v0, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    if-eqz v0, :cond_a

    .line 445
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi SIM ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v4, v4, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0907d9

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$6;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040009

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$5;

    invoke-direct {v4, p0}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 537
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    if-ne v0, v1, :cond_b

    .line 538
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 2G check2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    .line 540
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateNetworkMode2()V

    .line 541
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateButtonPrefer2g()V

    :cond_8
    :goto_4
    move v0, v1

    .line 554
    goto/16 :goto_1

    .line 436
    :cond_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v3, v3, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode:I

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mSIM2Handler:Lcom/android/phone/MobileNetworkSettings$SIM2Handler;

    invoke-virtual {v4, v1}, Lcom/android/phone/MobileNetworkSettings$SIM2Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->update2GButtonDisable()V

    .line 439
    const-string v0, "ril.rat_change_sim2"

    const-string v3, "on"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT_CHANGE_SIM2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.rat_change_sim2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 491
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v0, v0, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget v0, v0, Lcom/android/phone/GsmUmtsOptions;->mNetworkMode2:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    if-eqz v0, :cond_7

    .line 495
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 496
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    .line 497
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0907da

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/phone/MobileNetworkSettings$7;

    invoke-direct {v3, p0}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_3

    .line 543
    :cond_b
    const-string v0, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button 2G check3 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButton2Gcheck2:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    if-eqz v0, :cond_8

    .line 546
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateButtonPrefer2g()V

    goto/16 :goto_4

    :cond_c
    move v0, v1

    .line 556
    goto/16 :goto_1

    .line 558
    :cond_d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v0

    if-ne v0, v1, :cond_f

    .line 560
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 563
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_e
    move v0, v1

    .line 570
    goto/16 :goto_1

    .line 571
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_11

    .line 577
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 578
    const-string v0, "onPreferenceTreeClick: preference == mButtonPreferredNetworkMode. so popup timer reset"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 579
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isResetGlobalPopupTimer()V

    :cond_10
    move v0, v1

    .line 581
    goto/16 :goto_1

    .line 582
    :cond_11
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 584
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 585
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setDataRoamingforATT()V

    :cond_12
    :goto_5
    move v0, v1

    .line 614
    goto/16 :goto_1

    .line 587
    :cond_13
    const-string v0, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 592
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 593
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    const v0, 0x7f0900b4

    .line 595
    const-string v2, "data_roaming_noti_tray"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 596
    const v0, 0x7f0900b5

    .line 600
    :cond_14
    :goto_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_5

    .line 597
    :cond_15
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 598
    :cond_16
    const v0, 0x7f090560

    goto :goto_6

    .line 607
    :cond_17
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 608
    const-string v0, "data_roaming_noti_tray"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 609
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto/16 :goto_5

    .line 615
    :cond_18
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 616
    const-string v0, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 619
    const-string v0, "display_mobiledata_off_alert"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 620
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->setMobileData(Z)V

    :goto_7
    move v0, v1

    .line 721
    goto/16 :goto_1

    .line 621
    :cond_19
    const-string v0, "disable_mobile_data_popup"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 622
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 623
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z

    .line 624
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 628
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904e5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$10;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$10;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$9;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$9;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$8;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$8;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_7

    .line 661
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 662
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0904e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 664
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0904ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_1b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904e5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$11;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$11;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 687
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 690
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 691
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0904ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 698
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0904e5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$12;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$12;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    .line 716
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 718
    :cond_1e
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->setMobileDataEnabled(Z)V

    goto/16 :goto_7

    .line 722
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_20

    move v0, v1

    .line 723
    goto/16 :goto_1

    .line 724
    :cond_20
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-ne p2, v0, :cond_21

    move v0, v1

    .line 725
    goto/16 :goto_1

    .line 726
    :cond_21
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-ne p2, v0, :cond_22

    move v0, v1

    .line 727
    goto/16 :goto_1

    .line 728
    :cond_22
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-ne p2, v0, :cond_23

    .line 729
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    move v0, v1

    .line 730
    goto/16 :goto_1

    .line 732
    :cond_23
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-ne p2, v0, :cond_24

    move v0, v1

    .line 733
    goto/16 :goto_1

    .line 734
    :cond_24
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-ne p2, v0, :cond_25

    move v0, v1

    .line 735
    goto/16 :goto_1

    .line 736
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    if-ne p2, v0, :cond_26

    move v0, v1

    .line 737
    goto/16 :goto_1

    .line 739
    :cond_26
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_29

    .line 740
    const/4 v0, 0x7

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 743
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 744
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voicecall_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    if-eqz v0, :cond_27

    .line 746
    const-string v2, "manual register for IMS"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 747
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_27
    :goto_8
    move v0, v1

    .line 756
    goto/16 :goto_1

    .line 750
    :cond_28
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    if-eqz v0, :cond_27

    .line 752
    const-string v2, "manual deregister for IMS"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 753
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_8

    .line 761
    :cond_29
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v0, v2

    .line 763
    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/high16 v9, 0x1000

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1241
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1242
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    .line 1244
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1247
    const-string v3, "sim_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1248
    const-string v3, "sim_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: mSimId from tab: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1250
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1251
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1263
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1265
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1266
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->SimState:I

    if-ne v0, v2, :cond_1c

    :cond_2
    move v0, v2

    :goto_1
    move v3, v0

    .line 1268
    :goto_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1270
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 1272
    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    if-ne v4, v2, :cond_1d

    .line 1300
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1301
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_20

    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    if-eq v0, v7, :cond_20

    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "button_roaming_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1302
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    sget-boolean v4, Lcom/android/phone/MobileNetworkSettings;->mCheckValue:Z

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1308
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1309
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "voicecall_type"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1311
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->isImsPhoneActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1318
    :cond_5
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1319
    if-eqz v0, :cond_8

    .line 1320
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 1321
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1322
    const-string v4, "MDM-Roaming-policy"

    const-string v5, "setEnabled"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eqz v4, :cond_7

    .line 1326
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/GlobalDataRoamingAccess;->setEnabled(Z)V

    .line 1327
    const-string v4, "MDM-Roaming-policy"

    const-string v5, "global data setEnabled"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_7
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    .line 1331
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1333
    const-string v4, "MDM-Roaming-policy"

    const-string v5, "setEnabled"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_8
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1339
    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDataSubscription()I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 1340
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    .line 1341
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mButtonDataEnabled.. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1347
    :cond_9
    const-string v4, "toddler_mode_jpn"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "airplain_mode_jpn"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1348
    :cond_a
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1350
    if-eqz v4, :cond_c

    .line 1351
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_switch"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v2, :cond_b

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_23

    .line 1353
    :cond_b
    const-string v0, "MobileNetworkSettings"

    const-string v4, "TODDLER_MODE_SWITCH or AIRPLAIN_MODE_SWITCH set! It blocked to set DATA"

    invoke-static {v0, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 1356
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1369
    :cond_c
    :goto_7
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1370
    const-string v0, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrevNetworkType[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget-object v5, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    sget-object v0, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_25

    .line 1372
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 1373
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1382
    :cond_d
    :goto_8
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1384
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_e

    .line 1385
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateButtonPrefer2g()V

    .line 1387
    :cond_e
    const-string v0, "feature_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "feature_multisim_ver3"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1389
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsOptions;->mMultiSIM:Z

    if-eqz v0, :cond_26

    const-string v0, "on"

    const-string v4, "ril.rat_change_sim1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "on"

    const-string v4, "ril.rat_change_sim2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1392
    :cond_f
    const-string v0, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On Resume Disable, rat_change_sim1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.rat_change_sim1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat_change_sim2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.rat_change_sim2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->update2GButtonDisable()V

    .line 1401
    :cond_10
    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1402
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1406
    :cond_11
    const-string v0, "allow_select_network_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_15

    .line 1407
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1408
    const-string v0, "feature_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "feature_multisim_ver3"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1409
    :cond_12
    if-nez v3, :cond_15

    .line 1410
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_13

    .line 1411
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabled()V

    .line 1412
    :cond_13
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_14

    .line 1413
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabled()V

    .line 1414
    :cond_14
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    if-eqz v0, :cond_15

    .line 1415
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference3:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabled()V

    .line 1425
    :cond_15
    :goto_a
    const-string v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1426
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1427
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->roamingState(Landroid/telephony/ServiceState;)V

    .line 1428
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 1429
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    .line 1432
    :cond_16
    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1433
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1437
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v2, :cond_29

    if-ne v8, v0, :cond_29

    .line 1439
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v2}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 1445
    :cond_17
    :goto_b
    const-string v0, "omadm_lte_forced_nv"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1446
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setSprintForceLTE()V

    .line 1449
    :cond_18
    :try_start_0
    const-string v0, "sprint_connections_optimizer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1451
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.birdstep.android.cm"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1452
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1453
    if-eq v0, v8, :cond_19

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2a

    .line 1455
    :cond_19
    const-string v0, "connections_optimizer_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1456
    const-string v0, "Settings"

    const-string v3, "CO Optimizer disabled!"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_c
    const-string v0, "Settings"

    const-string v3, "Settings.onResume()"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1474
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "toddler_mode_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1477
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1480
    sget-boolean v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is called by SettingSearch"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1482
    sput-boolean v1, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    .line 1483
    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    if-eq v0, v7, :cond_2c

    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1484
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1509
    :cond_1a
    :goto_d
    return-void

    .line 1253
    :cond_1b
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_1c
    move v0, v1

    .line 1266
    goto/16 :goto_1

    .line 1276
    :cond_1d
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1280
    sget-boolean v4, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_1e

    sget v4, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    if-eq v4, v7, :cond_1e

    sget-object v4, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v5, "button_data_enabled_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1281
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    sget-boolean v4, Lcom/android/phone/MobileNetworkSettings;->mCheckValue:Z

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 1283
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cm.getMobileDataEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1284
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1286
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1287
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mobile_data_configure"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1290
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mobile_data_configure"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1304
    :cond_20
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_21
    move v0, v1

    .line 1309
    goto/16 :goto_5

    :cond_22
    move v4, v1

    .line 1331
    goto/16 :goto_6

    .line 1359
    :cond_23
    if-eqz v0, :cond_c

    .line 1360
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_c

    .line 1361
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    :goto_e
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_24
    move v0, v1

    goto :goto_e

    .line 1376
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 1377
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 1395
    :cond_26
    const-string v0, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On Resume Enable, rat_change_sim1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.rat_change_sim1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat_change_sim2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ril.rat_change_sim2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->update2GButtonEnable()V

    goto/16 :goto_9

    .line 1418
    :cond_27
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    goto/16 :goto_a

    .line 1421
    :cond_28
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    goto/16 :goto_a

    .line 1441
    :cond_29
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    goto/16 :goto_b

    .line 1458
    :cond_2a
    :try_start_1
    const-string v0, "connections_optimizer_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1459
    const-string v0, "Settings"

    const-string v3, "CO Optimizer enabled!"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setup CO Optimizer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1462
    :cond_2b
    :try_start_2
    const-string v0, "Settings"

    const-string v3, "Settings.onResume() has no CO Optimizer!"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_c

    .line 1485
    :cond_2c
    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSettingValue:I

    if-eq v0, v7, :cond_2d

    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "button_roaming_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1486
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 1487
    :cond_2d
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "pref_roaming_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1488
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 1489
    :cond_2e
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1493
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 1495
    :cond_2f
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "button_prefer_networkmode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1496
    sput-boolean v2, Lcom/android/phone/MobileNetworkSettings;->fromSettingSearch:Z

    goto/16 :goto_d

    .line 1497
    :cond_30
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1498
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_d

    .line 1499
    :cond_31
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "global_data_roaming_access_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1500
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_d

    .line 1501
    :cond_32
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1503
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1505
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    :cond_33
    move v3, v1

    goto/16 :goto_2
.end method

.method roamingState(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2260
    .line 2262
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    .line 2264
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2268
    if-nez v0, :cond_0

    if-nez v0, :cond_0

    .line 2269
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0906c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    :goto_0
    return-void

    .line 2270
    :cond_0
    if-ne v2, v0, :cond_1

    if-nez v0, :cond_1

    .line 2271
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0906c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2272
    :cond_1
    if-nez v0, :cond_2

    if-ne v2, v0, :cond_2

    .line 2273
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0906c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2275
    :cond_2
    const-string v0, "roaming_state_key"

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0906c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 2338
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 2339
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2340
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2342
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 2348
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 2351
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 2352
    if-ne v4, v2, :cond_4

    .line 2355
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0906c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0906c9

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2360
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method
