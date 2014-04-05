.class public Lcom/android/phone/PhoneUtilsExt;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtilsExt$CONFCallState;,
        Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;,
        Lcom/android/phone/PhoneUtilsExt$CallType;,
        Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field public static IsVTCallInRejectList:Z

.field private static LGTisPartyCall:Z

.field private static LGTmergeState:Z

.field private static LGTtransferState:Z

.field public static OTACancel:Z

.field public static RadOrigDiallist:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static bAutoRebootPopupLaunched:Z

.field public static callEnd:Z

.field private static callType:I

.field public static canMulti:Z

.field private static countryCode:Ljava/lang/String;

.field private static hasCountryCode:Z

.field static isSendDtmf:Z

.field static isSendEmptyFlash:Z

.field public static mCANPToggleTimer:Landroid/os/CountDownTimer;

.field public static mCANPToggleTimerCover:Landroid/os/CountDownTimer;

.field private static mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static mCallCardNumber:Ljava/lang/String;

.field private static mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static mContactName:Ljava/lang/String;

.field public static mContactsNumber:Ljava/lang/String;

.field private static mCountryCode:Ljava/lang/String;

.field private static mCountryCodeTemp:Ljava/lang/String;

.field public static mDisplayName:Ljava/lang/String;

.field public static mFindLostPhone:Z

.field public static mFindLostPhoneToOwner:Z

.field private static mInternationalAccessCode:Ljava/lang/String;

.field public static mIsCMFCall:Z

.field public static mIsImsCallForSrvcc:Z

.field public static mIsMessageCall:Z

.field public static mIsWzoneCall:Z

.field private static mLGTRADCallog:I

.field private static mLGTRADTemp:I

.field private static mOutgoingCallString:Ljava/lang/String;

.field private static mOutgoingCallUri:Landroid/net/Uri;

.field public static mPlaceCallTime:J

.field private static mRevertDialingNumber:Z

.field private static mRoamMccChangedDialog:Landroid/app/AlertDialog;

.field private static mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

.field private static mSKTRADDialingToKoreaEnabled:Z

.field public static mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static mSkipSKTRADDialOption:Z

.field private static mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field private static mUserInputDialingNumber:Ljava/lang/String;

.field public static mWzoneprefix:Ljava/lang/String;

.field private static outgoingToKorea:Z

.field private static smsCall:Z

.field private static startCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->ENG:Z

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->RadOrigDiallist:Ljava/util/LinkedList;

    .line 141
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 142
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 143
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 144
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhone:Z

    .line 145
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhoneToOwner:Z

    .line 146
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 152
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 153
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 154
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mDisplayName:Ljava/lang/String;

    .line 155
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 163
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 173
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 174
    sput-wide v4, Lcom/android/phone/PhoneUtilsExt;->mPlaceCallTime:J

    .line 175
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->OTACancel:Z

    .line 218
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 247
    sput-wide v4, Lcom/android/phone/PhoneUtilsExt;->startCallTime:J

    .line 249
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    .line 251
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsImsCallForSrvcc:Z

    .line 1176
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1178
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    .line 1714
    sput-object v3, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    .line 1777
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$4;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsExt$4;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 255
    return-void
.end method

.method public static IsDialingNumberRevert()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static OutgoingCallAbroad(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 666
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "00"

    aput-object v0, v3, v1

    const-string v0, "*23#00"

    aput-object v0, v3, v2

    const-string v0, "+"

    aput-object v0, v3, v6

    .line 667
    const-string v0, "+"

    .line 668
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    .line 670
    if-nez p0, :cond_1

    move v1, v2

    .line 713
    :cond_0
    :goto_0
    return v1

    .line 672
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "internationalcall_settings"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_b

    .line 673
    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 674
    if-eqz p0, :cond_3

    const-string v4, "+82263439000"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0000"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    .line 676
    goto :goto_0

    .line 679
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "+82"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 681
    goto :goto_0

    .line 683
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 686
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v6, :cond_0

    .line 691
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLGTRADSetting = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "getLGTRADTemp = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "getLGTRADCallog = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 693
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v6, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_0

    :cond_8
    move v0, v1

    .line 699
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_a

    .line 701
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_0

    .line 699
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v1, v2

    .line 709
    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 713
    goto/16 :goto_0
.end method

.method public static OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 942
    const-string v0, "OutgoingCallRoamingArea Call!!"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 944
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    const-string v0, "LGT_RAD_TEMP"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    .line 947
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    .line 948
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    .line 949
    const-string v0, "CALL_TYPE"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    .line 951
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setRADCode()V

    .line 952
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isLGTRADSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasCountryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/PhoneUtilsExt;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 957
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCodeTemp(Ljava/lang/String;)V

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - countryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - getCountryCodeTemp() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCodeTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_2

    .line 962
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 988
    :cond_1
    :goto_0
    return-object p0

    .line 963
    :cond_2
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto :goto_0

    .line 965
    :cond_3
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 966
    const-string v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0082"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 967
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 968
    :cond_5
    const-string v0, "00700"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00345"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00365"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00321"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 969
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 970
    :cond_7
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 973
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 974
    :cond_9
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 977
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    const-string v0, "Set Auto Dial Temp On"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 979
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto/16 :goto_0
.end method

.method public static OutgoingCallSKTRAD(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 729
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPhoneGlobalsSetting()V

    .line 730
    const-string v0, "SKTRADDialOption"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    const-string v0, "RADDialOption"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutgoingCallSKTRAD getSKTRADSetting() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SKTRADDialOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 736
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-ne v1, v2, :cond_3

    .line 737
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 738
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 742
    :goto_0
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 757
    :cond_1
    :goto_1
    return-void

    .line 740
    :cond_2
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_0

    .line 744
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 745
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 746
    const-string v1, "korea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 747
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1

    .line 748
    :cond_4
    const-string v1, "abroad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1

    .line 753
    :cond_5
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 754
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    goto :goto_1
.end method

.method public static OutgoingCallSKTWZone(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 720
    const-string v0, "com.skt.iswzone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 721
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 722
    const-string v0, "Wzoneprefix"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 725
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static canUseHoldInVoIP()Z
    .locals 6

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->canUseHoldInVoIP()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 804
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseHoldInVoIP - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 808
    :goto_1
    return v0

    .line 805
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 806
    :goto_2
    :try_start_2
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUseHoldInVoIP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 808
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 805
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1080
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1081
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getInternationalAccessCode()Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1086
    const-string v1, "+"

    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InternationalAccessCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  CountryCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 1094
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1126
    :goto_0
    return-object p0

    .line 1096
    :cond_0
    const-string v2, "0234167010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1097
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1098
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1100
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1101
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1102
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1105
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 1106
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 1109
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_4

    .line 1110
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 1112
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1113
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1115
    :cond_5
    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1116
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 1118
    :cond_6
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1119
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1121
    :cond_7
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1122
    :cond_8
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 1125
    :cond_9
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    const-string v1, "changeDialingNumberForSKTRAD : "

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 523
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 525
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 582
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 530
    .restart local p0
    :cond_1
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    const-string v1, "114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "010114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "011114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "017114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0082114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "+82114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    :cond_2
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 534
    const-string p0, "+82263439000"

    goto :goto_0

    .line 538
    :cond_3
    const-string v1, "111"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "125"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "127"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    :cond_4
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 541
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    const-string p0, "+82232100404"

    goto/16 :goto_0

    .line 546
    :cond_5
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 547
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 548
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 552
    :cond_6
    const-string v1, "001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "0082"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 554
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDialingNumberForSKTRAD result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move-object p0, v0

    .line 582
    goto/16 :goto_0

    .line 556
    :cond_8
    const-string v1, "00700"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00345"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00365"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00321"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 558
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 560
    :cond_a
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 561
    :cond_b
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 562
    move-object v0, p0

    goto :goto_1

    .line 564
    :cond_c
    const-string v1, "1544"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1577"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1588"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1599"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1644"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_e

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 568
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_10

    :cond_f
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+8210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 571
    :cond_10
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 574
    :cond_11
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 578
    :cond_12
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 579
    move-object v0, p0

    goto/16 :goto_1
.end method

.method public static changeNameForSKT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 483
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 484
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    if-eqz p0, :cond_0

    .line 485
    const-string v1, "1521044"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090515

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 491
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 487
    .restart local p1
    :cond_1
    const-string v1, "0000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090517

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 469
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 470
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    if-eqz p0, :cond_0

    .line 471
    const-string v1, "+82263439000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 479
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 473
    .restart local p1
    :cond_1
    const-string v1, "+82232100404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 475
    :cond_2
    const-string v1, "+82263439000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090515

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static changeRtsMessage(I)Ljava/lang/CharSequence;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 1799
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1800
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1801
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1802
    const-string v1, "%s"

    .line 1806
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1807
    if-nez v1, :cond_0

    .line 1808
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 1809
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1811
    :cond_0
    if-eqz v1, :cond_1b

    .line 1812
    aget-object v3, v1, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1813
    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1814
    const/4 v7, 0x3

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1817
    :goto_0
    const v7, 0x7f090708

    if-eq p0, v7, :cond_1

    const v7, 0x7f090709

    if-ne p0, v7, :cond_6

    .line 1819
    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    :cond_2
    :goto_1
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1837
    const v2, 0x7f0906f5

    if-eq p0, v2, :cond_3

    const v2, 0x7f0906f6

    if-eq p0, v2, :cond_3

    const v2, 0x7f090712

    if-ne p0, v2, :cond_c

    .line 1839
    :cond_3
    if-nez v3, :cond_b

    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1882
    :cond_4
    :goto_2
    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1883
    const-string v0, "%d"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    :cond_5
    return-object v0

    .line 1820
    :cond_6
    const v2, 0x7f0906f2

    if-eq p0, v2, :cond_7

    const v2, 0x7f090700

    if-ne p0, v2, :cond_a

    .line 1821
    :cond_7
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1823
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1831
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1825
    :cond_8
    const-string v2, "domestic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1826
    const-string v0, "%s"

    const-string v2, "1599-0011"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1828
    :cond_9
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1832
    :cond_a
    const v2, 0x7f0906fa

    if-ne p0, v2, :cond_2

    .line 1833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1842
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1843
    :cond_c
    const v2, 0x7f09070e

    if-ne p0, v2, :cond_f

    .line 1844
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    if-eqz v4, :cond_d

    if-ne v4, v8, :cond_e

    :cond_d
    if-nez v3, :cond_e

    if-ne v1, v8, :cond_e

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1848
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1850
    :cond_f
    const v2, 0x7f09070f

    if-eq p0, v2, :cond_10

    const v2, 0x7f090710

    if-eq p0, v2, :cond_10

    const v2, 0x7f090711

    if-eq p0, v2, :cond_10

    const v2, 0x7f090715

    if-ne p0, v2, :cond_13

    .line 1852
    :cond_10
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    const-string v2, "domestic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1854
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    :goto_4
    if-nez v3, :cond_12

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1856
    :cond_11
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1862
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1864
    :cond_13
    const v2, 0x7f09078e

    if-eq p0, v2, :cond_14

    const v2, 0x7f09078d

    if-eq p0, v2, :cond_14

    const v2, 0x7f09078c

    if-ne p0, v2, :cond_15

    .line 1865
    :cond_14
    const-string v0, "%s"

    const-string v1, "1544-0010"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1866
    :cond_15
    const v2, 0x7f090713

    if-ne p0, v2, :cond_16

    .line 1867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1868
    :cond_16
    const v2, 0x7f090718

    if-eq p0, v2, :cond_17

    const v2, 0x7f09071a

    if-eq p0, v2, :cond_17

    const v2, 0x7f09071b

    if-eq p0, v2, :cond_17

    const v2, 0x7f090719

    if-ne p0, v2, :cond_4

    .line 1871
    :cond_17
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09071c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1872
    const-string v2, "%s"

    const-string v5, "+82-2-3416-7010"

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1873
    if-eqz v4, :cond_18

    if-ne v4, v8, :cond_19

    :cond_18
    if-nez v3, :cond_19

    if-ne v1, v8, :cond_19

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1876
    :cond_19
    if-nez v3, :cond_1a

    .line 1877
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1879
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1b
    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_0
.end method

.method public static changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 600
    if-nez p0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-object p0

    .line 602
    :cond_1
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 604
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 605
    if-eqz p0, :cond_0

    .line 606
    const-string v1, "+0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static checkCallProtectionValue()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 815
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 816
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const/4 v2, 0x0

    .line 818
    .local v2, value:I
    :try_start_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable_call_protect_when_calling : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 827
    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    return v3

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 822
    const-string v4, "enable_call_protect_when_calling : null->1"

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 823
    const/4 v2, 0x1

    .line 826
    goto :goto_0

    .line 824
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 825
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PhoneUtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable_call_protect_when_calling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static checkKTHDVoice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 2353
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2354
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2356
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isKTSIM()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "oversea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2358
    const-string v0, "kt_hd_voice_abnormal_case"

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2360
    if-lez v0, :cond_0

    .line 2361
    const-string v0, "backup_voicecall_type"

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2362
    if-eq v0, v4, :cond_1

    .line 2363
    const-string v2, "voicecall_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2369
    :cond_0
    :goto_0
    const-string v0, "kt_hd_voice_abnormal_case"

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2370
    const-string v0, "backup_voicecall_type"

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2385
    :goto_1
    return-void

    .line 2365
    :cond_1
    const-string v0, "voicecall_type"

    invoke-static {v1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2366
    const-string v0, "hd_voice_network_pref"

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2373
    :cond_2
    const-string v2, "backup_voicecall_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2374
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isKTSIM()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v2, v4, :cond_4

    .line 2375
    const-string v0, "voicecall_type"

    invoke-static {v1, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2376
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_voicecall_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2381
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicecall_type"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2382
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kt_hd_voice_abnormal_case"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 2377
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isKTSIM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2378
    const-string v0, "backup_voicecall_type"

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public static clearLGTRADOutgoingCallNumber()V
    .locals 1

    .prologue
    .line 423
    const-string v0, "clearLGTRADOutgoingCallNumber :"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->RadOrigDiallist:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 425
    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 3131
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->ENG:Z

    if-eqz v0, :cond_0

    .line 3132
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3133
    :cond_0
    return-void
.end method

.method public static fgConnectionsIsIncoming()Z
    .locals 3

    .prologue
    .line 1326
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 1327
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgConnectionsIsIncoming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    .line 1335
    :goto_0
    return v0

    .line 1334
    :cond_0
    const-string v0, "fgConnections is not have Connection!!!!!!!!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findAccessCode(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1052
    new-instance v2, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v2, v0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 1053
    const-string v3, "RoamingPrefs"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1055
    const-string v3, "fakesid"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1057
    :cond_0
    const-string v0, "ril.cdma.sid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    :cond_1
    const-string v3, ""

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/phone/LGTRoamingData;->getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1063
    if-nez v0, :cond_3

    move v0, v1

    .line 1075
    :goto_0
    return v0

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    if-eqz p0, :cond_2

    .line 1067
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 1068
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    move v0, v1

    .line 1069
    goto :goto_0

    .line 1072
    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 1073
    if-eqz p0, :cond_4

    .line 1074
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 1075
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .locals 1

    .prologue
    .line 1225
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method

.method public static getCallCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallEnd()Z
    .locals 1

    .prologue
    .line 1151
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    return v0
.end method

.method public static getCallTimeFromStartToEnd()J
    .locals 4

    .prologue
    .line 2535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2536
    .local v0, currntTime:J
    sget-wide v2, Lcom/android/phone/PhoneUtilsExt;->startCallTime:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public static getCallType()Lcom/android/phone/PhoneUtilsExt$CallType;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method

.method public static getContactsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1138
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1022
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    const-string v0, "82"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 1024
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCodeTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1369
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 1370
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1372
    return-object v0
.end method

.method public static getInternationalAccessCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :cond_0
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 1014
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    return-object v0
.end method

.method private static getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 1947
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    .line 1948
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0}, Lcom/android/phone/CallController;->getIsCSCall()Z

    move-result v5

    .line 1949
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKTCallStatusCode() isSvc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isRtsStatus = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCSCall = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1954
    if-nez p1, :cond_9

    .line 1955
    if-eqz v5, :cond_6

    .line 1956
    const-string v4, "support_follow_on_req"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1957
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1958
    const-string v0, "SIM_STATE_ABSENT"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1959
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    .line 2099
    :goto_1
    return-object v0

    :cond_1
    move v1, v2

    .line 1947
    goto :goto_0

    .line 1962
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    .line 1963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKTCallStatusCode, isLimitedService = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1964
    if-eqz v0, :cond_6

    .line 1965
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_4

    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, p0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_4

    move v0, v3

    .line 1966
    :goto_2
    aget-object v4, p0, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x10

    if-eq v4, v6, :cond_3

    aget-object v4, p0, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x11

    if-eq v4, v6, :cond_3

    aget-object v4, p0, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x16

    if-ne v4, v6, :cond_5

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v0, v4

    .line 1967
    if-eqz v0, :cond_6

    .line 1968
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1969
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1965
    goto :goto_2

    :cond_5
    move v4, v2

    .line 1966
    goto :goto_3

    .line 1975
    :cond_6
    if-nez v5, :cond_8

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_7

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_7

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_7

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_8

    .line 1977
    :cond_7
    aget-object v0, p0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2005
    :cond_8
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 2032
    :cond_9
    if-nez p1, :cond_a

    if-eqz v1, :cond_10

    .line 2033
    :cond_a
    if-eqz v5, :cond_e

    .line 2034
    const-string v0, "support_follow_on_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2036
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    move v0, v3

    .line 2038
    :goto_4
    aget-object v1, p0, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_b

    aget-object v1, p0, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_b

    aget-object v1, p0, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_c

    :cond_b
    move v2, v3

    :cond_c
    and-int/2addr v0, v2

    .line 2039
    if-eqz v0, :cond_e

    .line 2040
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2041
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1979
    :sswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1981
    :sswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1983
    :sswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1986
    :sswitch_3
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1992
    :sswitch_4
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1996
    :sswitch_5
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1998
    :sswitch_6
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2000
    :sswitch_7
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2007
    :sswitch_8
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2009
    :sswitch_9
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2011
    :sswitch_a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2013
    :sswitch_b
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2015
    :sswitch_c
    aget-object v0, p0, v3

    aput-object v0, p0, v9

    .line 2016
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2018
    :sswitch_d
    aget-object v0, p0, v3

    aput-object v0, p0, v9

    .line 2019
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2021
    :sswitch_e
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2023
    :sswitch_f
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2024
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2025
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 2036
    goto/16 :goto_4

    .line 2046
    :cond_e
    if-nez v5, :cond_f

    .line 2047
    aget-object v0, p0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    .line 2075
    :cond_f
    if-eqz v5, :cond_10

    .line 2076
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    .line 2099
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2049
    :sswitch_10
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2051
    :sswitch_11
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2053
    :sswitch_12
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2056
    :sswitch_13
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2062
    :sswitch_14
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2066
    :sswitch_15
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2068
    :sswitch_16
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2070
    :sswitch_17
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2078
    :sswitch_18
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2080
    :sswitch_19
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2082
    :sswitch_1a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2084
    :sswitch_1b
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2086
    :sswitch_1c
    if-nez p1, :cond_11

    .line 2087
    aget-object v0, p0, v7

    aput-object v0, p0, v9

    .line 2088
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2091
    :cond_11
    :sswitch_1d
    aget-object v0, p0, v7

    aput-object v0, p0, v9

    .line 2092
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 2094
    :sswitch_1e
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1977
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch

    .line 2005
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0xb -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_d
        0x11 -> :sswitch_d
        0x16 -> :sswitch_d
        0x5f -> :sswitch_f
        0x60 -> :sswitch_f
        0x61 -> :sswitch_f
        0x63 -> :sswitch_f
        0x6f -> :sswitch_f
        0xfe -> :sswitch_d
        0xff -> :sswitch_e
    .end sparse-switch

    .line 2047
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_11
        0x6 -> :sswitch_12
        0x7 -> :sswitch_13
        0x8 -> :sswitch_14
        0xb -> :sswitch_14
        0xc -> :sswitch_14
        0xd -> :sswitch_14
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_15
        0x16 -> :sswitch_15
        0xfe -> :sswitch_16
        0xff -> :sswitch_17
    .end sparse-switch

    .line 2076
    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_18
        0x3 -> :sswitch_19
        0x6 -> :sswitch_1a
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0xb -> :sswitch_1b
        0xc -> :sswitch_1b
        0xd -> :sswitch_1b
        0xe -> :sswitch_1c
        0xf -> :sswitch_1b
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x16 -> :sswitch_1d
        0xff -> :sswitch_1e
    .end sparse-switch
.end method

.method public static getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2298
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 2299
    if-nez v1, :cond_0

    .line 2300
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 2301
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 2303
    :cond_0
    if-nez v1, :cond_2

    .line 2316
    :cond_1
    :goto_0
    return-object v0

    .line 2304
    :cond_2
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2305
    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    goto :goto_0

    .line 2307
    :cond_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2308
    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtilsExt;->getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    goto :goto_0

    .line 2310
    :cond_4
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2311
    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtilsExt;->getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    goto :goto_0

    .line 2313
    :cond_5
    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2314
    invoke-static {v1, p0}, Lcom/android/phone/PhoneUtilsExt;->getOPENCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x2

    .line 2103
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLGTCallStatusCode() isSvc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneGlobals.getInstance().callController.getIsCSCall() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v4}, Lcom/android/phone/CallController;->getIsCSCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2108
    if-nez p1, :cond_5

    .line 2109
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v3}, Lcom/android/phone/CallController;->getIsCSCall()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2110
    const-string v3, "support_follow_on_req"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2112
    const-string v0, "SIM_STATE_ABSENT"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2113
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    .line 2239
    :goto_0
    return-object v0

    .line 2116
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    .line 2117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLGTCallStatusCode, isLimitedService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2118
    if-eqz v0, :cond_4

    .line 2119
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v1

    .line 2120
    :goto_1
    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_3

    :cond_1
    move v3, v1

    :goto_2
    or-int/2addr v0, v3

    .line 2121
    if-eqz v0, :cond_4

    .line 2122
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2123
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2119
    goto :goto_1

    :cond_3
    move v3, v2

    .line 2120
    goto :goto_2

    .line 2129
    :cond_4
    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2130
    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2194
    :cond_5
    :goto_3
    if-eqz p1, :cond_e

    .line 2195
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2196
    const-string v0, "support_follow_on_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2198
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_b

    move v0, v1

    .line 2200
    :goto_4
    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_6

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_6

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    and-int/2addr v0, v2

    .line 2201
    if-eqz v0, :cond_c

    .line 2202
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2203
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2132
    :sswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2134
    :sswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2136
    :sswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2138
    :sswitch_3
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2141
    :sswitch_4
    aget-object v0, p0, v6

    aput-object v0, p0, v8

    .line 2142
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2144
    :sswitch_5
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2146
    :sswitch_6
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2148
    :sswitch_7
    aget-object v0, p0, v6

    aput-object v0, p0, v8

    .line 2149
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2151
    :sswitch_8
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2155
    :cond_8
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_9

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_9

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_9

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 2158
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    const-string v3, "domestic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2160
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2161
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x13

    if-ne v0, v3, :cond_5

    .line 2162
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2166
    :cond_a
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_3

    .line 2168
    :sswitch_9
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2170
    :sswitch_a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2172
    :sswitch_b
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2174
    :sswitch_c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2177
    :sswitch_d
    aget-object v0, p0, v7

    aput-object v0, p0, v8

    .line 2178
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2180
    :sswitch_e
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2182
    :sswitch_f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2184
    :sswitch_10
    aget-object v0, p0, v7

    aput-object v0, p0, v8

    .line 2185
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2187
    :sswitch_11
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 2198
    goto/16 :goto_4

    .line 2207
    :cond_c
    const-string v0, "domestic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2208
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_e

    .line 2209
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_e

    .line 2210
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2214
    :cond_d
    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    .line 2239
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2216
    :sswitch_12
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2218
    :sswitch_13
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2220
    :sswitch_14
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2222
    :sswitch_15
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2224
    :sswitch_16
    aget-object v0, p0, v6

    aput-object v0, p0, v8

    .line 2225
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2227
    :sswitch_17
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2229
    :sswitch_18
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2231
    :sswitch_19
    aget-object v0, p0, v6

    aput-object v0, p0, v8

    .line 2232
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2234
    :sswitch_1a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_0

    .line 2130
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x16 -> :sswitch_7
        0x5f -> :sswitch_8
        0x60 -> :sswitch_8
        0x61 -> :sswitch_8
        0x63 -> :sswitch_8
        0x6f -> :sswitch_8
        0xfe -> :sswitch_8
        0xff -> :sswitch_8
    .end sparse-switch

    .line 2166
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_e
        0x8 -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_d
        0x10 -> :sswitch_10
        0x11 -> :sswitch_10
        0x16 -> :sswitch_10
        0xff -> :sswitch_11
    .end sparse-switch

    .line 2214
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_13
        0x6 -> :sswitch_14
        0x7 -> :sswitch_17
        0x8 -> :sswitch_15
        0xb -> :sswitch_16
        0xc -> :sswitch_16
        0xd -> :sswitch_16
        0xe -> :sswitch_18
        0xf -> :sswitch_16
        0x10 -> :sswitch_19
        0x11 -> :sswitch_19
        0x16 -> :sswitch_19
        0xff -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getLGTRADCallog()I
    .locals 1

    .prologue
    .line 1047
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADCallog:I

    return v0
.end method

.method public static getLGTRADOutgoingCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTRADOutgoingCallNumber : input number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 429
    move-object v2, p0

    .line 431
    .local v2, origdialnum:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/PhoneUtilsExt;->RadOrigDiallist:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    .local v0, curStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, tempStr:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTRADOutgoingCallNumber : found!! tempStr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 438
    move-object v2, v0

    .line 444
    .end local v0           #curStr:Ljava/lang/String;
    .end local v3           #tempStr:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTRADOutgoingCallNumber : origdialnum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 445
    return-object v2
.end method

.method public static getLGTRADTemp()I
    .locals 1

    .prologue
    .line 1039
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    return v0
.end method

.method public static getNetworkMode()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1474
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1476
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    .line 1477
    const-string v3, "ril.roaming.networkmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1478
    const-string v4, "gsm.sim.roaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1479
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNetworkSelManual => simtype  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "efRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsManualSelection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,networkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1482
    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1483
    const-string v1, "isNetworkSelManual - efRoaming is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1501
    :goto_0
    return v0

    .line 1486
    :cond_0
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1487
    const-string v1, "isNetworkSelManual - networkMode is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1491
    const-string v0, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1492
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1493
    goto :goto_0

    .line 1496
    :cond_2
    if-nez v2, :cond_3

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1497
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1498
    goto :goto_0

    .line 1501
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 3005
    .line 3006
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: conn.getAddress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: conn.getOrigDialString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3010
    if-eqz v0, :cond_0

    .line 3011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumber: callerInfo.phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3013
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3014
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3039
    :cond_1
    :goto_0
    return-object v0

    .line 3021
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->hasExtentionNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3024
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3027
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3029
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3032
    :cond_5
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3034
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3035
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOPENCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2243
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_0

    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2244
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2250
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2251
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    .line 2294
    :goto_0
    return-object v0

    .line 2253
    :cond_1
    aget-object v0, p0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2275
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_2

    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2276
    :cond_2
    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 2289
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2257
    :sswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2272
    :sswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2280
    :sswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2283
    :sswitch_3
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2287
    :sswitch_4
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 2294
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2253
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0xfe -> :sswitch_1
        0xff -> :sswitch_1
    .end sparse-switch

    .line 2276
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0xe -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 649
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 661
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 651
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 652
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 654
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v0, :cond_0

    .line 655
    :cond_3
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 656
    const-string v0, "***"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 657
    :cond_4
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x2

    .line 1890
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v3

    .line 1891
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSKTCallStatusCode() isSvc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isRtsStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneGlobals.getInstance().callController.getIsCSCall() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5}, Lcom/android/phone/CallController;->getIsCSCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1896
    if-eqz p1, :cond_6

    .line 1897
    const-string v0, "support_follow_on_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1899
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    move v0, v3

    .line 1901
    :goto_1
    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_1

    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_1

    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    and-int/2addr v0, v2

    .line 1902
    if-eqz v0, :cond_5

    .line 1903
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1904
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 1943
    :goto_2
    return-object v0

    :cond_3
    move v1, v2

    .line 1890
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1899
    goto :goto_1

    .line 1907
    :cond_5
    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1943
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1909
    :sswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_2

    .line 1911
    :sswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_2

    .line 1915
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v4}, Lcom/android/phone/CallController;->getIsCSCall()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1916
    const-string v4, "support_follow_on_req"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1917
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1918
    const-string v0, "SIM_STATE_ABSENT"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1919
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_2

    .line 1922
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    .line 1923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSKTCallStatusCode, isLimitedService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1924
    if-eqz v0, :cond_b

    .line 1925
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_a

    aget-object v0, p0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_a

    move v0, v3

    .line 1926
    :goto_4
    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_8

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_8

    aget-object v4, p0, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    or-int/2addr v0, v2

    .line 1927
    if-eqz v0, :cond_b

    .line 1928
    const-string v0, "FOLLOW_ON_REQ"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1929
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 1925
    goto :goto_4

    .line 1933
    :cond_b
    if-eqz v1, :cond_c

    .line 1934
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_2

    .line 1937
    :cond_c
    aget-object v0, p0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_3

    .line 1939
    :sswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_2

    .line 1907
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    .line 1937
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getSKTRADOutgoingCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallNumber : mOutgoingCallString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSKTRADOutgoingCallUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallUri : mOutgoingCallUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method

.method public static getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 371
    const/16 v5, 0x8

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "+82"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "+0082"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, "0082"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "+082"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "082"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "82"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "00682"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    const-string v6, "+00682"

    aput-object v6, v0, v5

    .line 372
    .local v0, SKTRADPrefixlist:[Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 373
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 374
    .local v4, strPrefix:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSKTRADisplayNumber : number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 373
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #strPrefix:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .locals 1

    .prologue
    .line 1221
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method

.method public static getUserInputDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;
    .locals 7
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 2540
    if-nez p0, :cond_1

    move-object v2, v4

    .line 2567
    :cond_0
    :goto_0
    return-object v2

    .line 2543
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 2544
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2545
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2546
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2548
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v5, :cond_0

    .line 2551
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_3

    .line 2552
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 2553
    goto :goto_0

    .line 2554
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v0

    .line 2555
    goto :goto_0

    .line 2559
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    .line 2561
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_4

    move-object v2, v1

    .line 2562
    goto :goto_0

    .line 2563
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    move-object v2, v0

    .line 2564
    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 2567
    goto :goto_0
.end method

.method public static getValidCallState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter

    .prologue
    .line 2570
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2571
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 2572
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->ENG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidCallState valid call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2574
    :cond_0
    if-eqz v1, :cond_1

    .line 2575
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2577
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->ENG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidCallState valid call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2578
    :cond_2
    return-object v0
.end method

.method public static getValidCallType(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call$CallType;
    .locals 3
    .parameter

    .prologue
    .line 2582
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    .line 2583
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2584
    if-eqz v1, :cond_0

    .line 2585
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v0

    .line 2587
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->ENG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getValidCallType] Call.CallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2588
    :cond_1
    return-object v0
.end method

.method public static invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2861
    :try_start_0
    const-string v0, "com.sec.android.internal.ims.IIMSTelephony$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2862
    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2863
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "imsphone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2865
    if-eqz p1, :cond_0

    .line 2866
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2867
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :goto_0
    return-object v0

    .line 2870
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    move-object v0, v1

    .line 2885
    goto :goto_0

    .line 2872
    :catch_0
    move-exception v0

    .line 2873
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2874
    :catch_1
    move-exception v0

    .line 2875
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2876
    :catch_2
    move-exception v0

    .line 2877
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2878
    :catch_3
    move-exception v0

    .line 2879
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2880
    :catch_4
    move-exception v0

    .line 2881
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2882
    :catch_5
    move-exception v0

    .line 2883
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeSecImsInterface -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 3063
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3064
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 3066
    .local v0, app_installed:Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3067
    const/4 v0, 0x1

    .line 3068
    const-string v3, "isAppInstalled true"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3073
    :goto_0
    return v0

    .line 3069
    :catch_0
    move-exception v1

    .line 3070
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 3071
    const-string v3, "isAppInstalled false"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAudioConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 2685
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 2687
    .local v0, callType:I
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2688
    const/4 v1, 0x1

    .line 2690
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2703
    if-nez p0, :cond_1

    .line 2744
    :cond_0
    :goto_0
    return v1

    .line 2705
    :cond_1
    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2706
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 2707
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2708
    const-string v0, "ims_conference_mt_ui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2709
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 2743
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableAddUser - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    goto :goto_0

    .line 2711
    :cond_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    .line 2712
    goto :goto_1

    .line 2713
    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2714
    :cond_5
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2715
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    goto :goto_1

    .line 2716
    :cond_6
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2717
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 2718
    if-eqz v2, :cond_0

    .line 2721
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    .line 2722
    if-eqz v2, :cond_0

    .line 2726
    const-string v3, "skt_conf_support"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableAddUser :: skt_conf_support = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    .line 2729
    if-eqz v2, :cond_8

    .line 2730
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    move v1, v0

    .line 2734
    goto :goto_1

    .line 2736
    :cond_7
    const-string v0, "ims_conference_voice"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2737
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public static isCSCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2748
    if-nez p0, :cond_0

    .line 2754
    :goto_0
    return v0

    .line 2749
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    .line 2750
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2753
    :cond_2
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCSCall - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isChinaCommercialSim()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 275
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v2, "phone2"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 277
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 278
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 279
    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v3, "460"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45404"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 285
    goto :goto_0

    :cond_2
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method public static isDefaultIMEI()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 259
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v2, "phone2"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 264
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v2, "357858010034783"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "004400152020002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    :cond_0
    const-string v0, "International Mobile Equipment Identity is initial state"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 269
    :goto_1
    return v0

    .line 262
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isDeviceOn3G()Z
    .locals 3

    .prologue
    .line 3113
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3115
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 3116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceOn3G() type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3118
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 3120
    :cond_0
    const/4 v0, 0x1

    .line 3122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceOnLTEOrWiFi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3087
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3088
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3089
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3091
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 3092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeviceOnWiFi() type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 3094
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 3097
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmergencyNumberToChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 330
    const-string v0, "114"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "112"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "113"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "119"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEvdoOnly()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1339
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_EVDO_Only_Mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v2

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEvdoOnly - evdo_only :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network_type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1342
    const-string v2, "Y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFindService()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, isService:Ljava/lang/String;
    const/4 v1, 0x0

    .line 502
    .local v1, isPlusService:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 504
    .local v3, result:Ljava/lang/Boolean;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/sms/sktcarrierlockmode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 509
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 516
    :goto_1
    return-object v4

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/io/IOException;
    const-string v4, "cannot open file : /efs/sms/sktcarrierlockmode"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 507
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 511
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 514
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static isHDConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter

    .prologue
    .line 2670
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 2672
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2673
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 2674
    if-eqz v0, :cond_0

    .line 2675
    const-string v1, "resolution"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2676
    const-string v1, "hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2677
    const/4 v0, 0x1

    .line 2681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHDVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2624
    if-nez p0, :cond_0

    .line 2628
    :goto_0
    return v0

    .line 2626
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2627
    .local v0, isHDVideoCall:Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHDVideoCall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isIMSConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2644
    if-nez p0, :cond_0

    .line 2649
    :goto_0
    return v0

    .line 2646
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2647
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIMSConfCall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  CallType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isIMSConfCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 2638
    if-nez p0, :cond_0

    .line 2639
    const/4 v0, 0x0

    .line 2640
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2602
    if-nez p0, :cond_0

    .line 2607
    :goto_0
    return v0

    .line 2603
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2607
    .local v0, isVideoCall:Z
    :cond_2
    goto :goto_0
.end method

.method public static isIdleSecIms()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2758
    const-string v2, "feature_srvcc_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2759
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2760
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 2761
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    move v1, v0

    .line 2776
    :cond_1
    :goto_0
    return v1

    .line 2763
    :cond_2
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2764
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2766
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 2767
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 2768
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    move v1, v0

    goto :goto_0

    .line 2771
    :cond_3
    const-string v0, "isIdle"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2772
    if-eqz v0, :cond_1

    .line 2773
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static isImsCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2592
    if-nez p0, :cond_0

    .line 2598
    :goto_0
    return v0

    .line 2593
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2598
    .local v0, isImsCall:Z
    :cond_2
    goto :goto_0
.end method

.method public static isKTSIM()Z
    .locals 3

    .prologue
    .line 2337
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2338
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2339
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2340
    :cond_0
    const/4 v0, 0x1

    .line 2341
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGTRADSetting()Z
    .locals 3

    .prologue
    .line 1004
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGTmergeState()Z
    .locals 1

    .prologue
    .line 1199
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    return v0
.end method

.method public static isLGTtransferState()Z
    .locals 1

    .prologue
    .line 1206
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    return v0
.end method

.method public static isNetworkSettingEnable()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1380
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1382
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 1383
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1385
    if-eqz v3, :cond_8

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1386
    const-string v0, "00101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1387
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isFactorySim = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1389
    :goto_1
    if-eqz v0, :cond_2

    .line 1406
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 1386
    goto :goto_0

    .line 1390
    :cond_2
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1392
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_7

    .line 1394
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1397
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable current_plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSimCardReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simOperator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1399
    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1403
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 1404
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1394
    goto :goto_3

    .line 1406
    :cond_5
    const-string v4, "domestic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public static isOffhookSecIms()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2795
    const-string v2, "feature_srvcc_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2796
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2797
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 2798
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 2806
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2798
    goto :goto_0

    .line 2801
    :cond_1
    const-string v2, "isOffhook"

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2802
    if-eqz v0, :cond_2

    .line 2803
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2806
    goto :goto_0
.end method

.method public static isOneTouchReportEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2456
    const-string v0, "go.police.report"

    .line 2457
    const-string v0, "com.android.vending"

    .line 2463
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2465
    :try_start_0
    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2467
    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2468
    const-string v0, "PhoneUtilsExt"

    const-string v1, "isOneTouchReportEnabled package is not installed.."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    :goto_0
    return v6

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOneTouchReportEnabled package is not installed / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2478
    :cond_0
    const-string v0, "content://go.police.provider.report"

    .line 2479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2481
    if-eqz v0, :cond_5

    .line 2482
    const-string v1, "content://go.police.provider.report"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2484
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2485
    const-string v0, "customer_agreement"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2487
    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    .line 2488
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2489
    if-ne v7, v0, :cond_1

    move v6, v7

    .line 2491
    :cond_1
    const-string v1, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOneTouchReportEnabled customerAgreementValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v0, v6

    .line 2497
    if-eqz v2, :cond_3

    .line 2498
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v6, v0

    .line 2503
    goto :goto_0

    .line 2494
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 2495
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2497
    if-eqz v2, :cond_3

    .line 2498
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2497
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 2498
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public static isOutngoingConfCall(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1236
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOutngoingConfCall number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    .line 1238
    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 1241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    const/4 v3, 0x0

    .line 2653
    if-nez p0, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return v3

    .line 2655
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 2657
    .local v1, callType:I
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 2658
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 2659
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    if-eqz v0, :cond_0

    .line 2660
    const-string v4, "resolution"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2661
    .local v2, resolution:Ljava/lang/String;
    const-string v4, "qcif"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2662
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2618
    if-nez p0, :cond_0

    .line 2620
    :goto_0
    return v0

    .line 2619
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2620
    .local v0, isQCIFVideoCall:Z
    :cond_1
    goto :goto_0
.end method

.method public static isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2632
    if-nez p0, :cond_0

    .line 2634
    :goto_0
    return v0

    .line 2633
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2634
    .local v0, isQVGAVideoCall:Z
    :cond_1
    goto :goto_0
.end method

.method public static isRingingSecIms()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2780
    const-string v2, "feature_srvcc_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2781
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2782
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 2783
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 2791
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2783
    goto :goto_0

    .line 2786
    :cond_1
    const-string v2, "isRinging"

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2787
    if-eqz v0, :cond_2

    .line 2788
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2791
    goto :goto_0
.end method

.method public static isRoamingArea()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 299
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    .line 305
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 306
    const-string v2, "domestic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 311
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v4, :cond_4

    move v2, v0

    .line 316
    :goto_2
    const-string v4, "domestic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 311
    goto :goto_2

    .line 314
    :cond_5
    const-string v2, "isRoamingArea :: phone.getIccCard() == null "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    .line 316
    goto :goto_3
.end method

.method public static isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled : mSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 322
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSKTRADEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 292
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 293
    .local v0, result:Ljava/lang/Boolean;
    return-object v0

    .line 292
    .end local v0           #result:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSKTSIM()Z
    .locals 3

    .prologue
    .line 2329
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2331
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2332
    :cond_0
    const/4 v0, 0x1

    .line 2333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSMS()Z
    .locals 1

    .prologue
    .line 1171
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->smsCall:Z

    return v0
.end method

.method public static isSecImsAppStateSrvcc()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2848
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2856
    :goto_0
    return v0

    .line 2851
    :cond_0
    const-string v0, "getImsAppState"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2852
    if-eqz v0, :cond_1

    .line 2853
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecImsAppState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2856
    goto :goto_0
.end method

.method public static isSecImsCallStateSrvcc()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2821
    const-string v1, "feature_srvcc_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2837
    :goto_0
    return v0

    .line 2824
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2825
    if-eqz v1, :cond_1

    .line 2826
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isCSCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2827
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSecImsCallStateSrvcc(Z)V

    .line 2836
    :cond_1
    :goto_1
    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecImsCallStateSrvcc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsImsCallForSrvcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsImsCallForSrvcc:Z

    goto :goto_0

    .line 2828
    :cond_2
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isImsCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2829
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSecImsCallStateSrvcc(Z)V

    goto :goto_1

    .line 2831
    :cond_3
    const-string v1, "PhoneUtilsExt"

    const-string v2, "This can be error... aliveCall state is unknown"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSecImsCallStateSrvcc(Z)V

    goto :goto_1
.end method

.method public static isSendDtmf()Z
    .locals 1

    .prologue
    .line 1189
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return v0
.end method

.method public static isSendEmptyFlash()Z
    .locals 1

    .prologue
    .line 1181
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    return v0
.end method

.method public static isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .parameter "cn"

    .prologue
    .line 3044
    const/4 v2, 0x0

    .line 3046
    .local v2, supported:Z
    if-eqz p0, :cond_0

    .line 3047
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 3048
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    if-eqz v0, :cond_0

    .line 3049
    const-string v3, "modifiable"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3051
    .local v1, isSupported:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3052
    const/4 v2, 0x1

    .line 3057
    .end local v0           #callDetails:Lcom/android/internal/telephony/CallDetails;
    .end local v1           #isSupported:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSessionModifyPossible supported :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    .line 3058
    return v2
.end method

.method public static isSimCardReady()Z
    .locals 4

    .prologue
    .line 2918
    const/4 v1, 0x0

    .line 2919
    .local v1, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2921
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 2925
    :goto_0
    return v1

    .line 2921
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2924
    :cond_1
    const-string v2, "isSimCardReady :: phone.getIccCard() == null "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isTestSIM()Z
    .locals 2

    .prologue
    .line 2345
    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2346
    const-string v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    const/4 v0, 0x1

    .line 2348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThrWayCallAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1352
    .line 1353
    const-string v2, "*22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1356
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1365
    :goto_0
    return v0

    .line 1357
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1360
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1361
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1363
    goto :goto_0
.end method

.method public static isVideoCallType()Z
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 2694
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 2696
    .local v0, callType:I
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2697
    const/4 v1, 0x1

    .line 2699
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoIPActivated()Z
    .locals 6

    .prologue
    .line 761
    const/4 v1, 0x0

    .line 763
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 765
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPActivated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    :goto_1
    return v0

    .line 766
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 767
    :goto_2
    :try_start_2
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPActivated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 769
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 766
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoIPRingOrDialing()Z
    .locals 6

    .prologue
    .line 774
    const/4 v1, 0x0

    .line 776
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 778
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPRingOrDialing - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 782
    :goto_1
    return v0

    .line 779
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 780
    :goto_2
    :try_start_2
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrDialing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 782
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 779
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoIPRingOrOffhook()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 789
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 790
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 791
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPRingOrOffhook - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return v0

    .line 792
    :catch_0
    move-exception v1

    .line 793
    :try_start_1
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrOffhook - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 795
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVoLTECall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 2611
    if-nez p0, :cond_0

    .line 2614
    :goto_0
    return v0

    .line 2612
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2613
    .local v0, isVoLTECall:Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoLTECall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchOneTouchReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2439
    const-string v0, "go.police.report"

    .line 2440
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2441
    if-eqz v0, :cond_0

    .line 2442
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2444
    :try_start_0
    const-string v1, "startFlag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2445
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2446
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OneTouchReport] Start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :goto_0
    return-void

    .line 2447
    :catch_0
    move-exception v1

    .line 2448
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OneTouchReport] ActivityNotFoundException / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2451
    :cond_0
    const-string v0, "PhoneUtilsExt"

    const-string v1, "[OneTouchReport] OneTouchReport is not installed on device"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3127
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 3136
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3137
    return-void
.end method

.method static notifyCallProtectionStatus(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 876
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 877
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_1

    .line 879
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    const-string v0, "notifyCallProtectionStatus : IMS VT"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionValue()V

    .line 885
    const-string v0, "gsm.version.ril-impl"

    const-string v3, "Qualcomm"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 888
    const-string v3, "Qualcomm"

    const/4 v4, 0x0

    const-string v5, "Qualcomm"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_2

    .line 890
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 902
    :cond_2
    :goto_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 903
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 905
    const/4 v0, 0x6

    .line 906
    const/16 v5, 0x16

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 907
    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 908
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 909
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 910
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v5, :cond_5

    .line 911
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 912
    const-string v0, "notifyCallProtectionStatus : No Call"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 917
    :goto_2
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_9

    .line 918
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 926
    :goto_3
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 927
    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallProtectionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 893
    :cond_4
    :try_start_3
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 895
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 898
    :catch_1
    move-exception v0

    .line 899
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallProtectionStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 914
    :cond_5
    if-eqz p0, :cond_7

    move v0, v1

    :goto_4
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallProtectionStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_8

    const-string v0, "Foreground"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 922
    :catch_2
    move-exception v0

    .line 923
    :try_start_5
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallProtectionStatus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 926
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 927
    :cond_6
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 928
    :catch_3
    move-exception v0

    .line 929
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallProtectionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 914
    :cond_7
    const/4 v0, 0x2

    goto :goto_4

    .line 915
    :cond_8
    :try_start_7
    const-string v0, "Background"

    goto :goto_5

    .line 920
    :cond_9
    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 925
    :catchall_0
    move-exception v0

    .line 926
    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 927
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 930
    :cond_b
    :goto_6
    throw v0

    .line 928
    :catch_4
    move-exception v1

    .line 929
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCallProtectionStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method static notifyCallProtectionValue()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 830
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 831
    const-string v0, "gsm.version.ril-impl"

    const-string v4, "Qualcomm"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 834
    const-string v4, "Qualcomm"

    const/4 v5, 0x0

    const-string v6, "Qualcomm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 849
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 851
    const/4 v0, 0x6

    .line 852
    const/16 v6, 0x16

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 853
    const/16 v6, 0x37

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 854
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 855
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 856
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkCallProtectionValue()Z

    move-result v6

    .line 857
    if-eqz v6, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallProtectionValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v6, :cond_5

    const-string v0, "Set"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 859
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_6

    .line 860
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 868
    :goto_3
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 869
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 874
    :cond_2
    :goto_4
    return-void

    .line 839
    :cond_3
    :try_start_3
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    const-string v4, "PhoneUtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallProtectionValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 857
    goto :goto_1

    .line 858
    :cond_5
    :try_start_4
    const-string v0, "Unset"

    goto :goto_2

    .line 862
    :cond_6
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 864
    :catch_1
    move-exception v0

    .line 865
    :try_start_5
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallProtectionValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 868
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 869
    :cond_7
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 870
    :catch_2
    move-exception v0

    .line 871
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallProtectionValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 870
    :catch_3
    move-exception v0

    .line 871
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallProtectionValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 867
    :catchall_0
    move-exception v0

    .line 868
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 869
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 872
    :cond_9
    :goto_5
    throw v0

    .line 870
    :catch_4
    move-exception v1

    .line 871
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCallProtectionValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static redialCall()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2929
    const-string v0, "redialCall"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2931
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2932
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2936
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_b

    .line 2938
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2939
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    .line 2945
    :goto_1
    if-nez v1, :cond_2

    .line 2946
    const-string v0, "call is null"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 3002
    :goto_2
    return-void

    .line 2934
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 2941
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 2952
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2953
    if-ne v0, v3, :cond_3

    .line 2954
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    .line 2959
    :goto_3
    if-nez v4, :cond_4

    .line 2960
    const-string v0, "connection is null"

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2956
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    .line 2964
    :cond_4
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 2966
    const-string v5, "roaming_auto_dial"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2967
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 2968
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Roaming area before - phoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 2969
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2970
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2971
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 2975
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Roaming area after - phoneNumber = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    :cond_5
    move-object v1, v0

    .line 2979
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2981
    if-eqz v0, :cond_6

    instance-of v4, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_6

    .line 2982
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2985
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2987
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2989
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 2994
    :goto_5
    const-string v1, "simnum"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2997
    :cond_7
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2998
    const-string v0, "CALL_END"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3000
    :cond_8
    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3001
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2973
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_a
    move v0, v3

    .line 2992
    goto :goto_5

    :cond_b
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static resetStartCallTime()V
    .locals 2

    .prologue
    .line 2531
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneUtilsExt;->startCallTime:J

    .line 2532
    return-void
.end method

.method public static setAutoDialState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1410
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    const-string v0, ""

    .line 1412
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1413
    const-string v0, "RoamingPrefs"

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1414
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1416
    const-string v4, "lastest_country"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1417
    const-string v4, "contain lastest_country"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1418
    const-string v4, "lastest_country"

    const-string v5, "kr"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    :goto_0
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1426
    const-string v4, "lastestCountry Change"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1427
    const-string v4, "lastest_country"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1428
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1431
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isoCountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastestCountry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1432
    if-eqz v1, :cond_2

    .line 1433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1434
    :cond_1
    const-string v0, "LGT AutoDialState No Change!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1435
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1472
    :cond_2
    :goto_1
    return-void

    .line 1420
    :cond_3
    const-string v0, "Not contain lastest_country"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1421
    const-string v0, "lastest_country"

    const-string v4, "kr"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1422
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1423
    const-string v0, "kr"

    goto :goto_0

    .line 1438
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1439
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGT roaming_auto_setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1441
    if-ne v0, v7, :cond_2

    if-nez v1, :cond_2

    .line 1442
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 1443
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1444
    const-string v1, ""

    .line 1445
    const v1, 0x7f0905d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1447
    const-string v2, "LGT show toast!!"

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1449
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1450
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1453
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkMode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1458
    :cond_6
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1459
    const-string v0, "LGT AutoDialing off"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1469
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setDefaultRoamingValue()V

    goto/16 :goto_1

    .line 1465
    :cond_7
    const-string v0, "LGT AutoDialing on"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public static setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1232
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    .line 1233
    return-void
.end method

.method public static setCallCardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "callCardNumber"

    .prologue
    .line 1142
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    .line 1143
    return-void
.end method

.method public static setCallEnd(Z)V
    .locals 0
    .parameter "callend"

    .prologue
    .line 1155
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 1156
    return-void
.end method

.method public static setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V
    .locals 2
    .parameter

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 344
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    .line 345
    return-void
.end method

.method public static setContactsNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contactsNumber"

    .prologue
    .line 1134
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 1018
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 1019
    return-void
.end method

.method public static setCountryCodeTemp(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCodeTemp"

    .prologue
    .line 1028
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method private static setDefaultRoamingValue()V
    .locals 6

    .prologue
    .line 1787
    const-string v0, "PhoneUtilsExt : setDefaultRoamingValue"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1788
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    const-wide/16 v4, 0x6c

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1793
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1794
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1795
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "CONTURY_NAME_ENG"

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1796
    return-void
.end method

.method public static setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1278
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1279
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1280
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1283
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1284
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1311
    :cond_1
    :goto_0
    const-string v0, "0234167010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1313
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1315
    :cond_2
    return-object p0

    .line 1285
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1286
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1288
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 1289
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 1291
    :cond_5
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1294
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1295
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1296
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 1297
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1298
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1299
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1300
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1302
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 1303
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1304
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1306
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0
.end method

.method public static setDialingNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1264
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1265
    .local v0, isEmergencyNumber:Z
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isEmergencyNumberToChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1266
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in Roaming Area --setDialingNumberForRAD before - number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1269
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1272
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in Roaming Area --setDialingNumberForRAD after -number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1274
    :cond_1
    return-object p0

    .line 1271
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0
.end method

.method public static setDialingNumberRevert(Z)V
    .locals 0
    .parameter "revert"

    .prologue
    .line 460
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    .line 461
    return-void
.end method

.method public static setEmptyFlash(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 1185
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1186
    return-void
.end method

.method public static setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"
    .parameter "isIncome"

    .prologue
    .line 1319
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADOutgoingCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1322
    :cond_0
    return-object p0
.end method

.method public static setHDVoiceNetworkPref(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2388
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 2389
    const-string v0, "gsm.version.ril-impl"

    const-string v4, "Qualcomm"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2391
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 2392
    const-string v4, "Qualcomm"

    const/4 v5, 0x0

    const-string v6, "Qualcomm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2393
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_0

    .line 2394
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2407
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2409
    const/16 v0, 0x8

    .line 2410
    const/16 v6, 0x16

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2411
    const/16 v6, 0x61

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2412
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2413
    if-eqz p0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2414
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2415
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2416
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2418
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_5

    .line 2419
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2423
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDVoiceNetworkPref : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2428
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2429
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2435
    :cond_2
    :goto_3
    return-void

    .line 2397
    :cond_3
    :try_start_3
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 2399
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2402
    :catch_0
    move-exception v0

    .line 2403
    const-string v4, "PhoneUtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHDVoiceNetworkPref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 2413
    goto :goto_1

    .line 2421
    :cond_5
    :try_start_4
    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2424
    :catch_1
    move-exception v0

    .line 2425
    :try_start_5
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDVoiceNetworkPref : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2428
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2429
    :cond_6
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 2430
    :catch_2
    move-exception v0

    .line 2431
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDVoiceNetworkPref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2430
    :catch_3
    move-exception v0

    .line 2431
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHDVoiceNetworkPref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2427
    :catchall_0
    move-exception v0

    .line 2428
    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2429
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 2432
    :cond_8
    :goto_4
    throw v0

    .line 2430
    :catch_4
    move-exception v1

    .line 2431
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHDVoiceNetworkPref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static setLGTRADOutgoingCallNumber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLGTRADOutgoingCallNumber : outgoingCallString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 419
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->RadOrigDiallist:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    return-void
.end method

.method public static setLGTRADTemp(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 1035
    sput p0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    .line 1036
    return-void
.end method

.method public static setLGTisPartyCall(Z)V
    .locals 0
    .parameter "lGTisPartyCall"

    .prologue
    .line 1218
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTisPartyCall:Z

    .line 1219
    return-void
.end method

.method public static setLGTmergeState(Z)V
    .locals 0
    .parameter "lGTmergeState"

    .prologue
    .line 1203
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    .line 1204
    return-void
.end method

.method public static setLGTtransferState(Z)V
    .locals 0
    .parameter "lGTtransferState"

    .prologue
    .line 1210
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    .line 1211
    return-void
.end method

.method public static setMultiCallState()V
    .locals 3

    .prologue
    .line 1245
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1246
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2

    .line 1248
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_0

    .line 1249
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1250
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_1

    .line 1251
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTtransferState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1261
    :cond_1
    :goto_0
    return-void

    .line 1252
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4

    .line 1254
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_3

    .line 1255
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1256
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_1

    .line 1257
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0

    .line 1259
    :cond_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0
.end method

.method public static setOutgoingToKorea(Z)V
    .locals 0
    .parameter "isKorea"

    .prologue
    .line 1159
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->outgoingToKorea:Z

    .line 1160
    return-void
.end method

.method public static setPhoneGlobalsSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_dial"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneGlobalsSetting : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => 0=Enabled, 1=Disabled, 2=OnlyOutgoingToKorea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 386
    packed-switch v0, :pswitch_data_0

    .line 402
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 403
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 406
    :goto_0
    return-void

    .line 389
    :pswitch_0
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 393
    :pswitch_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 394
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 398
    :pswitch_2
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setRADCode()V
    .locals 3

    .prologue
    .line 994
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "country_code"

    const/16 v2, 0x52

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRADCode : country_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 999
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCode(Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public static setSKTCallLogType(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    if-nez p0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 618
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 620
    :cond_2
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 621
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 623
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 624
    :cond_3
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 625
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 626
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 627
    :cond_4
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1521044"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 628
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhone:Z

    goto :goto_0

    .line 629
    :cond_5
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "0000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 632
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhoneToOwner:Z

    goto :goto_0

    .line 634
    :cond_6
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 635
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 637
    :cond_7
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 640
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto/16 :goto_0

    .line 642
    :cond_8
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 643
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto/16 :goto_0
.end method

.method public static setSKTRADDialingToKoreaEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 465
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 466
    return-void
.end method

.method public static setSKTRADOutgoingCallNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "outgoingCallString"

    .prologue
    .line 413
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public static setSKTRADOutgoingCallUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "outgoingCallUri"

    .prologue
    .line 409
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    .line 410
    return-void
.end method

.method public static setSecImsCallStateSrvcc(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2810
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    :goto_0
    return-void

    .line 2815
    :cond_0
    const-string v0, "PhoneUtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecImsCallStateSrvcc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mIsImsCallForSrvcc:Z

    goto :goto_0
.end method

.method public static setSendDtmf(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 1193
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    .line 1194
    return-void
.end method

.method public static setStartCallTime()V
    .locals 2

    .prologue
    .line 2527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/phone/PhoneUtilsExt;->startCallTime:J

    .line 2528
    return-void
.end method

.method public static setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1228
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    .line 1229
    return-void
.end method

.method public static setUserInputDialingNumber(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 450
    .line 451
    if-eqz p0, :cond_0

    .line 452
    const-string v0, "\\,.*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v1, "\\;.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserInputDialingNumber  input num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 456
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    .line 457
    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static showNetworkAutoReboot()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1505
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1507
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNetworkAutoReboot - SKT isManual = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1509
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    const-string v1, "showNetworkAutoReboot - SKT just set AUTO mode without showing rebooting popup!! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1511
    invoke-interface {v0, v9}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1512
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v8, v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    if-eqz v1, :cond_2

    .line 1518
    const-string v0, "showNetworkAutoReboot - already called LGTNetworkAutoRebootPopup so ignore duplicated intent! "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1524
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1525
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsManualSelection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,networkMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1529
    const-string v1, "showNetworkAutoReboot - MANUAL MODE need to show popup!! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 1534
    const-string v2, " setIMSIAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1536
    new-array v2, v10, [B

    .line 1537
    aput-byte v8, v2, v8

    .line 1540
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/IccCard;

    const-string v4, "setRoaming"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Message;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1541
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1550
    :goto_1
    const-string v2, " networkSelectAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1551
    invoke-interface {v0, v9}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1554
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1557
    :cond_3
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1559
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1561
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1566
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1568
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1569
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1571
    const/16 v0, 0x8

    .line 1572
    const/16 v4, 0x16

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1573
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1574
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1575
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1577
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v0, :cond_7

    .line 1578
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1586
    :goto_2
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1587
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1594
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v8, v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1598
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1599
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1601
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 1602
    sput-boolean v10, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    goto/16 :goto_0

    .line 1580
    :cond_7
    :try_start_3
    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    :try_start_4
    const-string v1, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetBand- Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1586
    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1587
    :cond_8
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1588
    :catch_1
    move-exception v0

    .line 1589
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetBand- Exception(finally) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1588
    :catch_2
    move-exception v0

    .line 1589
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetBand- Exception(finally) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1585
    :catchall_0
    move-exception v0

    .line 1586
    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1587
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1590
    :cond_a
    :goto_4
    throw v0

    .line 1588
    :catch_3
    move-exception v1

    .line 1589
    const-string v2, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetBand- Exception(finally) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1545
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .line 1544
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 1543
    :catch_6
    move-exception v2

    goto/16 :goto_1

    .line 1542
    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method

.method public static showNetworkAutoRebootIfManualSelected(Z)V
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1608
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1610
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1611
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1612
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IsManualSelection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,networkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1616
    if-eqz p0, :cond_2

    .line 1617
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1618
    const-string v0, "showNetworkAutoRebootIfManualSelected - efRoaming is blank !! "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1712
    :goto_0
    return-void

    .line 1621
    :cond_0
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    const-string v4, "AUTO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1622
    const-string v0, "showNetworkAutoRebootIfManualSelected - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    :cond_1
    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1627
    const-string v5, "domestic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetworkAutoRebootIfManualSelected - currentplmn is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1633
    :cond_2
    const-string v4, "showNetworkAutoRebootIfManualSelected - MANUAL MODE need to show popup!! "

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 1638
    const-string v5, "00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1639
    const-string v3, " setIMSIAuto !! "

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1641
    new-array v3, v6, [B

    .line 1642
    aput-byte v10, v3, v10

    .line 1645
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/IccCard;

    const-string v6, "setRoaming"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1646
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    const-string v1, "1"

    const-string v3, "ril.IsManualSelection"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1657
    :cond_4
    const-string v1, " networkSelectAuto !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1658
    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1661
    :cond_5
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/android/phone/PhoneGlobals;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1663
    :cond_6
    if-eqz p0, :cond_9

    .line 1664
    const-string v0, "AUTO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1665
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1667
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1668
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1673
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1684
    :cond_8
    :goto_2
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsExt$1;-><init>()V

    .line 1689
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1693
    if-eqz p0, :cond_a

    .line 1694
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1695
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1697
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1681
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1699
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1700
    new-instance v1, Lcom/android/phone/PhoneUtilsExt$2;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtilsExt$2;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1650
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 1649
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 1648
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 1647
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method public static showNetworkRoamMccChanged()V
    .locals 4

    .prologue
    .line 1717
    const-string v0, "PhoneUtilsExt : showNetworkRoamMccChanged"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1719
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1721
    new-instance v1, Lcom/android/phone/PhoneUtilsExt$3;

    invoke-direct {v1, v0}, Lcom/android/phone/PhoneUtilsExt$3;-><init>(Lcom/android/phone/PhoneGlobals;)V

    .line 1757
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1758
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1760
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1775
    :goto_0
    return-void

    .line 1762
    :cond_0
    const-string v0, "PhoneUtilsExt : createdialog"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1764
    const v0, 0x7f0905d5

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0905d6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0904d1

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0904d2

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1770
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1771
    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1772
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1773
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1774
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static showToast(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3077
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3078
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value of message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3081
    const/16 v2, 0x51

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 3082
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3084
    return-void
.end method
