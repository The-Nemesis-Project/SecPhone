.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# static fields
.field public static IsAdditionSetting:Z

.field public static IsSIM2only:Z

.field public static mSimId:I


# instance fields
.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mCallBarring:Landroid/preference/PreferenceScreen;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field private mInitIndex:I

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSubaddress:Landroid/preference/CheckBoxPreference;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallBarring:Landroid/preference/PreferenceScreen;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    .line 141
    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    .line 143
    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 147
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    .line 804
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    .line 886
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->switchAdditionalCallSettingsButtonsState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/CallWaitingCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private checkAdditionalCallMenu()V
    .locals 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 603
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "remove_additional_call_setting_for_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    const-string v1, "button_cw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    const-string v1, "button_autoredial_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 607
    :cond_0
    const-string v1, "support_subaddress_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    const-string v1, "button_subaddress_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 609
    :cond_1
    return-void
.end method

.method private checkCallBarringMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 560
    const/4 v1, 0x0

    .line 562
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 565
    :cond_0
    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 570
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 571
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 572
    .local v2, phoneType:I
    if-eq v2, v5, :cond_1

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 576
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 577
    .local v0, barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 581
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_2
    if-eq v2, v5, :cond_7

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 591
    :cond_3
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 592
    .restart local v0       #barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 593
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 594
    const/4 v0, 0x0

    .line 596
    :cond_4
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 598
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_5
    :goto_1
    return-void

    .line 567
    .end local v2           #phoneType:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_0

    .line 581
    .restart local v2       #phoneType:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_7
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 585
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 586
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    .line 587
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 588
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    goto :goto_1
.end method

.method private checkCallForwardingMenu()V
    .locals 6

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 456
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 457
    .local v0, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 460
    :cond_0
    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 465
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const-string v4, "remove_call_forwarding"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "global_network_cdma_gsm_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    const/4 v3, 0x1

    .line 470
    .local v3, shouldRemoveCF:Z
    :goto_1
    if-nez v3, :cond_2

    .line 471
    :cond_2
    const-string v4, "button_callType_select_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 472
    .local v1, options:Landroid/preference/Preference;
    if-eqz v1, :cond_3

    .line 473
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    :cond_3
    if-nez v3, :cond_7

    .line 482
    :cond_4
    :goto_2
    return-void

    .line 462
    .end local v1           #options:Landroid/preference/Preference;
    .end local v3           #shouldRemoveCF:Z
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 478
    .restart local v1       #options:Landroid/preference/Preference;
    .restart local v3       #shouldRemoveCF:Z
    :cond_7
    const-string v4, "button_gsm_voicecall_forwarding"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_4

    .line 480
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private checkCallerIDMenu()V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 487
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "hide_caller_id"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 489
    .local v0, callerIDButton:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    .end local v0           #callerIDButton:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private checkFdnMenu()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 500
    :cond_0
    sget v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 505
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 506
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_fdn_key"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 507
    .local v0, fdnButton:Landroid/preference/Preference;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 508
    .local v2, phoneType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 509
    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "feature_chn_duos_gsm_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 510
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 515
    :cond_1
    :goto_1
    if-eq v2, v9, :cond_2

    const-string v5, "hide_FDN"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 516
    :cond_2
    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    :cond_3
    :goto_2
    const-string v5, "feature_tmo"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 556
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    :cond_4
    return-void

    .line 502
    .end local v0           #fdnButton:Landroid/preference/Preference;
    .end local v2           #phoneType:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_0

    .line 511
    .restart local v0       #fdnButton:Landroid/preference/Preference;
    .restart local v2       #phoneType:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_6
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    sget v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_1

    .line 518
    :cond_7
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 519
    const/4 v4, 0x0

    .line 521
    .local v4, simState:I
    sget v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v5, v7, :cond_9

    .line 522
    const-string v5, "gsm.sim.currentcardstatus2"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdn setEnabled : PROPERTY_SIM_STATUS_SECONDARY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 529
    :goto_3
    if-eqz v4, :cond_8

    if-eq v4, v9, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 532
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdn setEnabled : getFDNavailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 534
    if-eqz v0, :cond_3

    .line 535
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 525
    :cond_9
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdn setEnabled : PROPERTY_SIM_STATUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    goto :goto_3

    .line 537
    .end local v4           #simState:I
    :cond_a
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_3

    .line 539
    if-eqz v0, :cond_3

    .line 540
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 542
    :cond_b
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v7, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 547
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdn setEnabled : getSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fdn setEnabled : getFDNavailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 550
    if-eqz v0, :cond_3

    .line 551
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public static getSimId()I
    .locals 1

    .prologue
    .line 883
    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 796
    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 800
    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 801
    return-void
.end method

.method public static setPickContactsActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 451
    const-string v0, "GsmUmtsAdditionalCallOptions"

    const-string v1, "setPickContactsActivityResult"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private switchAdditionalCallSettingsButtonsState(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_fdn_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 865
    .local v0, fdnButton:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 866
    const-string v1, "fdn setEnabled in IMS"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 867
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 876
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 877
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 879
    :cond_3
    return-void
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 434
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 435
    .local v1, hasData:Z
    :goto_0
    const-string v0, "area_code_enabled"

    .line 436
    .local v0, dbName:Ljava/lang/String;
    if-eqz v1, :cond_3

    move v2, v3

    .line 438
    .local v2, value:I
    :goto_1
    const-string v4, "feature_chn_duos_gsm_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v4, v3, :cond_1

    .line 442
    const-string v0, "area_code_sim2_enabled"

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    .line 448
    return-void

    .end local v0           #dbName:Ljava/lang/String;
    .end local v1           #hasData:Z
    .end local v2           #value:I
    :cond_2
    move v1, v4

    .line 434
    goto :goto_0

    .restart local v0       #dbName:Ljava/lang/String;
    .restart local v1       #hasData:Z
    :cond_3
    move v2, v4

    .line 436
    goto :goto_1
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 418
    .local v1, hasData:Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummaryAutoAreaCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 420
    if-eqz v1, :cond_2

    .line 421
    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "%d"

    aput-object v6, v0, v5

    .line 422
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 423
    .local v2, inputs:[Ljava/lang/String;
    const v4, 0x7f090314

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 427
    .local v3, summaryOn:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v2           #inputs:[Ljava/lang/String;
    .end local v3           #summaryOn:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .end local v1           #hasData:Z
    :cond_1
    move v1, v5

    .line 417
    goto :goto_0

    .line 429
    .restart local v1       #hasData:Z
    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v5, 0x7f090315

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "qualcomm_ril"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ril.MSIMM"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 163
    const-string v9, "GsmUmtsAdditionalCallOptions"

    const-string v10, "sim2 only case."

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 164
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    .line 167
    :cond_0
    const-string v9, "feature_chn_duos_gsm_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 168
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 169
    .local v7, simState1:I
    const-string v9, "gsm.sim.currentcardstatus2"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 171
    .local v8, simState2:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_e

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    .line 172
    const-string v9, "DUAL SIM"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 174
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 175
    const-string v9, "CallSettingTab"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    .line 183
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_1
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 222
    .end local v7           #simState1:I
    .end local v8           #simState2:I
    :cond_2
    :goto_1
    const v9, 0x7f060020

    invoke-virtual {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 225
    .local v6, prefSet:Landroid/preference/PreferenceScreen;
    const-string v9, "button_clir_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CLIRListPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 226
    const-string v9, "button_cw_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 229
    const-string v9, "button_gsm_voicecall_forwarding"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    .line 237
    const-string v9, "edittext_areacode_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/EditTextPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    .line 238
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;

    invoke-direct {v10, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 274
    const-string v9, "feature_chn_duos_gsm_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 277
    :cond_3
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;

    invoke-direct {v10, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    :cond_4
    const-string v9, "button_autoredial_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 303
    const-string v9, "button_subaddress_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    .line 305
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v9, "remove_additional_call_setting_for_kor"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 307
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_5
    const-string v9, "feature_dcm_u1"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 312
    const-string v9, "button_noise_reduction_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 313
    .local v5, options:Landroid/preference/Preference;
    if-eqz v5, :cond_6

    .line 314
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    .end local v5           #options:Landroid/preference/Preference;
    :cond_6
    const-string v9, "hide_caller_id"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "remove_additional_call_setting_for_kor"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 321
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    .line 322
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCanShowDialog:Z

    .line 323
    if-nez p1, :cond_1a

    .line 324
    const-string v9, "GsmUmtsAdditionalCallOptions"

    const-string v10, "start to init "

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 325
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 327
    :cond_8
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    sget v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 365
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallForwardingMenu()V

    .line 366
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallerIDMenu()V

    .line 367
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkFdnMenu()V

    .line 368
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallBarringMenu()V

    .line 369
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkAdditionalCallMenu()V

    .line 371
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 372
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_a

    .line 374
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 377
    :cond_a
    const-string v9, "cdma_additional_setting_enable"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 378
    if-eqz v6, :cond_b

    .line 379
    const-string v9, "button_clir_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 381
    const-string v9, "button_cw_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 383
    const-string v9, "edittext_areacode_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    .line 385
    const-string v9, "button_autoredial_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 389
    :cond_b
    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 390
    const-string v9, "edittext_areacode_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    .line 394
    :cond_c
    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    .line 397
    if-eqz v6, :cond_d

    .line 398
    const-string v9, "button_autoredial_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 400
    .restart local v5       #options:Landroid/preference/Preference;
    if-eqz v5, :cond_d

    .line 401
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 409
    .end local v5           #options:Landroid/preference/Preference;
    :cond_d
    new-instance v9, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    .line 410
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    .line 414
    return-void

    .line 177
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v6           #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v7       #simState1:I
    .restart local v8       #simState2:I
    :cond_e
    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 178
    const-string v9, "SIM2 Only"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 179
    const/4 v9, 0x1

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_0

    .line 181
    :cond_f
    const/4 v9, 0x0

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_0

    .line 184
    .end local v7           #simState1:I
    .end local v8           #simState2:I
    :cond_10
    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 185
    const/4 v9, 0x1

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_1

    .line 186
    :cond_11
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 188
    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v3

    .line 189
    .local v3, dualSimState:I
    const/4 v4, 0x0

    .line 190
    .local v4, mIsDualSimTurnedOn:Z
    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 194
    const/4 v4, 0x1

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MultiSIM] GsmUmtsmIsDualSimTurnedOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 199
    :cond_13
    const/4 v9, 0x3

    if-eq v3, v9, :cond_14

    if-eqz v4, :cond_17

    .line 200
    :cond_14
    const-string v9, "DUAL SIM"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 202
    .restart local v1       #arg:Landroid/os/Bundle;
    if-eqz v1, :cond_16

    .line 203
    const-string v9, "Bundle is not null"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 204
    const-string v9, "CallSettingTab"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    .line 219
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_15
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    .restart local v1       #arg:Landroid/os/Bundle;
    :cond_16
    const-string v9, "Bundle is null"

    invoke-direct {p0, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 207
    const/4 v9, 0x0

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_3

    .line 210
    .end local v1           #arg:Landroid/os/Bundle;
    :cond_17
    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 211
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    .line 212
    sget-boolean v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    if-eqz v9, :cond_15

    .line 213
    const/4 v9, 0x0

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_3

    .line 216
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_3

    .line 329
    .end local v3           #dualSimState:I
    .end local v4           #mIsDualSimTurnedOn:Z
    .restart local v6       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_19
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2

    .line 332
    :cond_1a
    const-string v9, "GsmUmtsAdditionalCallOptions"

    const-string v10, "restore stored states"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 333
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 334
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 336
    :cond_1b
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    sget v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 341
    :goto_4
    const-string v9, "remove_additional_call_setting_for_kor"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 342
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 344
    :cond_1c
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/4 v10, 0x0

    sget v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 349
    :cond_1d
    :goto_5
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v9}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 350
    .local v2, clirArray:[I
    if-eqz v2, :cond_20

    .line 351
    const-string v9, "GsmUmtsAdditionalCallOptions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate:  clirArray[0]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", clirArray[1]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v9, v2}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_2

    .line 338
    .end local v2           #clirArray:[I
    :cond_1e
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_4

    .line 346
    :cond_1f
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_5

    .line 355
    .restart local v2       #clirArray:[I
    :cond_20
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 357
    :cond_21
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    sget v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_2

    .line 359
    :cond_22
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_2
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 702
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    if-nez v1, :cond_0

    .line 703
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    return-void

    .line 707
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 709
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 710
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 739
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 922
    packed-switch p1, :pswitch_data_0

    .line 933
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 924
    :pswitch_0
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 677
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 685
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    .line 688
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 745
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 747
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 752
    :goto_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 753
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v2, v1, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode_sim2"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 750
    goto :goto_0

    .line 759
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "subaddress_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    :cond_5
    :goto_2
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 772
    :cond_6
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_8

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick - mCallForwarding SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 780
    const-string v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 766
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "subaddress_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 783
    :cond_8
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_9

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick - mCallBarring SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 785
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    const-string v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 792
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    :cond_0
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    :cond_1
    sput-boolean v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    .line 621
    :cond_2
    const-string v1, "onResume()"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 623
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-nez v1, :cond_9

    .line 624
    sput v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    .line 628
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 633
    :cond_3
    const/4 v0, 0x0

    .line 635
    .local v0, data:Ljava/lang/String;
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_4
    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-eq v1, v2, :cond_5

    sget-boolean v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    if-eqz v1, :cond_c

    .line 639
    :cond_5
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 640
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "area_code_value"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :goto_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 646
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "autoredial_mode_sim2"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 654
    :cond_6
    :goto_3
    const-string v1, "cdma_additional_setting_enable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 655
    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    .line 657
    :cond_7
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 658
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "subaddress_mode"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_e

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 666
    :cond_8
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    .line 667
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->switchAdditionalCallSettingsButtonsState(Z)V

    .line 672
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 673
    return-void

    .line 626
    .end local v0           #data:Ljava/lang/String;
    :cond_9
    sput v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_0

    .line 642
    .restart local v0       #data:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "area_code_sim2_value"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    move v1, v3

    .line 646
    goto :goto_2

    .line 648
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "area_code_value"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 651
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "autoredial_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_d

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    move v1, v3

    .line 658
    goto :goto_4

    :cond_f
    move v2, v3

    .line 667
    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 692
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 693
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 698
    :cond_0
    return-void
.end method
