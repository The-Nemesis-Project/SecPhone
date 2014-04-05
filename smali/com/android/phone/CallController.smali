.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static isCtcRoamingCall:Z

.field public static isEmergencyCall:Z

.field public static isRetryEmergencyCall:Z

.field private static orangefirstcallCheck:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private cdmaBarringPopup:Z

.field private lastEmergencyNumber:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallStateBroadcasterLock:Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

.field private mIsCSCall:Z

.field private mOriginCallIntent:Landroid/content/Intent;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mRtsValueForKor:[Ljava/lang/Integer;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorInVoice:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    .line 144
    sput-boolean v2, Lcom/android/phone/CallController;->isCtcRoamingCall:Z

    .line 148
    sput-boolean v2, Lcom/android/phone/CallController;->isEmergencyCall:Z

    .line 149
    sput-boolean v2, Lcom/android/phone/CallController;->isRetryEmergencyCall:Z

    .line 171
    sput-boolean v1, Lcom/android/phone/CallController;->orangefirstcallCheck:Z

    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)V
    .locals 3
    .parameter "app"
    .parameter "callLogger"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 127
    iput-object v1, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/phone/CallController;->mIsCSCall:Z

    .line 141
    iput-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    .line 152
    iput-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 215
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 216
    iput-object p2, p0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 217
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/CallController;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 219
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/CallController;->mPhone2:Lcom/android/internal/telephony/Phone;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 225
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;

    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mCallStateBroadcasterLock:Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;

    .line 230
    :cond_1
    new-instance v0, Lcom/android/phone/WfcEmergencyCallController;

    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/WfcEmergencyCallController;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    .line 234
    return-void
.end method

.method private checkForOtaspCall(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1809
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->isOtaspCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOtaspCall: handling OTASP intent! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-static {p1}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 1822
    :goto_0
    return-void

    .line 1820
    :cond_0
    const-string v0, "checkForOtaspCall: not an OTASP call."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .parameter

    .prologue
    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1565
    packed-switch p1, :pswitch_data_0

    .line 1601
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :pswitch_0
    const-string v0, "support_cs_svc_prop"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/CallController;->mIsCSCall:Z

    if-eqz v0, :cond_1

    .line 1568
    const-string v0, "ril.cs_svc"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.cs_svc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1571
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    .line 1598
    :cond_0
    :goto_0
    return-object v0

    .line 1575
    :cond_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 1579
    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 1590
    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 1594
    :pswitch_3
    const-string v0, "limited_service_state"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1595
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    .line 1596
    if-nez v0, :cond_0

    .line 1598
    :cond_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 1565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .parameter "tm"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, iccid:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method private getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 285
    if-eqz p1, :cond_0

    .line 286
    const-string v1, "sim_iccid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOutgoingCallError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 1629
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1796
    :pswitch_0
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1798
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 1801
    :goto_0
    return-void

    .line 1633
    :pswitch_1
    const-string v0, "CallController"

    const-string v1, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 1644
    :pswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1656
    :pswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1663
    :pswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1668
    :pswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1675
    :pswitch_6
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1691
    :pswitch_7
    const-string v0, "dcm_emergency_conflict"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mWaitPendingEmergency:Z

    if-eqz v0, :cond_0

    .line 1692
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mWaitPendingEmergency:Z

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mWaitPendingEmergency to  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->mWaitPendingEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0901a5

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1699
    :cond_1
    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->mIsInitiatedMMI:Z

    goto :goto_0

    .line 1708
    :pswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1711
    :pswitch_9
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1715
    :pswitch_a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1719
    :pswitch_b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_WITH_POP_UP:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 1723
    :pswitch_c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1727
    :pswitch_d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1731
    :pswitch_e
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FDN_MODE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1735
    :pswitch_f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1739
    :pswitch_10
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1743
    :pswitch_11
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1747
    :pswitch_12
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1751
    :pswitch_13
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1755
    :pswitch_14
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1759
    :pswitch_15
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1763
    :pswitch_16
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1767
    :pswitch_17
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1771
    :pswitch_18
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1775
    :pswitch_19
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1779
    :pswitch_1a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1785
    :pswitch_1b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1788
    :pswitch_1c
    const-string v1, "handleOutgoingCallError(): set RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA "

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1789
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1792
    :pswitch_1d
    invoke-virtual {v0, p1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto/16 :goto_0

    .line 1629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallController;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 198
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 204
    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 202
    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1980
    const-string v0, "CallController"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1984
    const-string v0, "CallController"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1985
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    return-object v0
.end method

.method private placeCallInternal(Landroid/content/Intent;I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 683
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 687
    :goto_0
    const/4 v7, 0x0

    .line 688
    const-wide/16 v10, 0x0

    .line 689
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 691
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 697
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v2

    .line 708
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 710
    const-string v4, "single_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 711
    const-string v4, "IS_CONF_CALL"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 712
    if-nez v4, :cond_1

    .line 713
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsIms;->validatePhNumberLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 717
    :cond_1
    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    sput-object v8, Lcom/android/phone/PhoneUtilsIms;->InitialNumber:Ljava/lang/String;

    .line 720
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- actual number to dial: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 721
    const-string v4, "android.phone.extra.CALL_TYPE"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 730
    const-string v4, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 732
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 734
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, p2

    invoke-static {v5, v3, v8, v4, v0}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 738
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got Phone instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 739
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 740
    const-string v4, "simnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 741
    const-string v4, "simnum"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========simNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 743
    if-eqz v7, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->isCorrectSimId(I)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 745
    :cond_4
    const/4 v4, 0x1

    if-ne v7, v4, :cond_a

    .line 746
    const/4 v7, 0x2

    .line 750
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra simNumber is wrong value. set correct simNumber"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 768
    :cond_5
    :goto_3
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "gsm.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_6
    const/4 v4, 0x3

    move/from16 v0, v19

    if-ne v0, v4, :cond_11

    .line 772
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "okToCallStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phonestate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 774
    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 775
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    .line 1549
    :cond_7
    :goto_4
    return-object v13

    .line 683
    :cond_8
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_0

    .line 736
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v3, v8, v4}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    goto/16 :goto_1

    .line 748
    :cond_a
    const/4 v7, 0x1

    goto :goto_2

    .line 751
    :cond_b
    const/4 v4, 0x1

    if-ne v7, v4, :cond_c

    .line 752
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v14, v4, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    goto :goto_3

    .line 753
    :cond_c
    const/4 v4, 0x2

    if-ne v7, v4, :cond_d

    .line 754
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v14, v4, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_3

    .line 756
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    goto/16 :goto_3

    .line 759
    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========no simNumber, getCurrentNetworkPhone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 761
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "========set simNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 813
    :catch_0
    move-exception v3

    .line 818
    sget-object v3, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v3, :cond_19

    .line 819
    const-string v3, "Voicemail number not reachable in current SIM card state."

    invoke-static {v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    move-object v13, v2

    .line 820
    goto :goto_4

    .line 764
    :cond_f
    :try_start_1
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 765
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    goto/16 :goto_3

    .line 777
    :cond_10
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 781
    :cond_11
    const-string v4, "single_lte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 782
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "okToCallStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phonestate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 785
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v2, v5, :cond_12

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 786
    const/4 v4, 0x0

    .line 788
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 826
    :cond_13
    :goto_5
    if-nez v8, :cond_1a

    .line 827
    const-string v2, "CallController"

    const-string v3, "placeCall: couldn\'t get a phone number from Intent "

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 828
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 789
    :cond_14
    :try_start_2
    const-string v4, "handle_ims_not_registered"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x3

    move/from16 v0, v19

    if-ne v0, v4, :cond_18

    .line 790
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 792
    const-string v5, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[placeCallInternal] okToCallStatus["

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "] phonestate ["

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "]"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 794
    const-string v4, "CallController"

    const-string v5, "[placeCallInternal] Outgoing VT in RoamingArea"

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 796
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 798
    :cond_15
    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v2, v5, :cond_17

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    if-nez v5, :cond_17

    .line 799
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 800
    const-string v4, "CallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[placeCallInternal] okToCallStatus["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mRtsValueForKor[3] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v13, 0x3

    aget-object v6, v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_13

    .line 802
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_5

    .line 805
    :cond_16
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_5

    .line 808
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v2

    goto/16 :goto_5

    .line 811
    :cond_18
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_2
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_5

    .line 822
    :cond_19
    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 823
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 838
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    .line 839
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, p2

    invoke-static {v8, v4, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v4

    .line 843
    :cond_1b
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 846
    :cond_1c
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 847
    const-string v4, "gsm.current.simnum"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :goto_6
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    .line 858
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    .line 860
    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 862
    const-string v6, "sec_product_feature_common_dsds_support"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/android/phone/PhoneUtilsDsds;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v5

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/android/phone/PhoneUtilsDsds;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v4

    move v6, v5

    move v5, v4

    .line 869
    :goto_7
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 870
    if-nez v6, :cond_1e

    if-eqz v20, :cond_23

    :cond_1e
    const-string v4, "2222"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 873
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/CallController;->isEmergencyCall:Z

    .line 874
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    .line 882
    :cond_1f
    :goto_8
    const-string v4, "dcm_prohibit_secondcall_in_emergency"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 883
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v13, :cond_24

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    .line 886
    if-eqz v4, :cond_24

    .line 887
    const-string v2, "CallController"

    const-string v3, "Currently EMERGENCY_CALL connection -- failing call."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 849
    :cond_20
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 851
    const-string v4, "gsm.current.simnum"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 853
    :cond_21
    const-string v4, "gsm.current.simnum"

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 865
    :cond_22
    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move/from16 v0, p2

    invoke-static {v8, v5, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v5

    move v6, v4

    goto/16 :goto_7

    .line 877
    :cond_23
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/phone/CallController;->isEmergencyCall:Z

    goto :goto_8

    .line 893
    :cond_24
    const-string v4, "limited_service_state"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 894
    if-eqz v6, :cond_26

    .line 895
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 896
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 898
    :cond_25
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 899
    const-string v13, "ril.simtype"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 900
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_26

    .line 901
    const-string v15, "45001"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v13, 0xc

    if-ne v4, v13, :cond_26

    .line 902
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 907
    :cond_26
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_28

    .line 908
    const-string v4, "1"

    const-string v13, "REG"

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 909
    const-string v13, "1"

    const-string v15, "AUTH"

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 910
    if-eqz v4, :cond_27

    if-nez v13, :cond_28

    .line 911
    :cond_27
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    .line 916
    :cond_28
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 917
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/4 v13, 0x3

    if-eq v4, v13, :cond_29

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v13, 0x9

    if-eq v4, v13, :cond_29

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v13, 0xa

    if-eq v4, v13, :cond_29

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v13, 0xb

    if-ne v4, v13, :cond_2a

    :cond_29
    const/4 v4, 0x1

    .line 922
    :goto_9
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-eq v13, v15, :cond_2c

    if-eqz v4, :cond_2c

    .line 923
    if-eqz v6, :cond_2c

    .line 924
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 926
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 917
    :cond_2a
    const/4 v4, 0x0

    goto :goto_9

    .line 928
    :cond_2b
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 929
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isChinaCommercialSim()Z

    move-result v13

    .line 932
    if-nez v13, :cond_2c

    .line 933
    const-string v13, "45001"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 935
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 943
    :cond_2c
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 944
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 945
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v13, :cond_2d

    .line 947
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->clearLGTRADOutgoingCallNumber()V

    .line 949
    :cond_2d
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    :goto_a
    if-eqz v5, :cond_38

    if-nez v20, :cond_38

    .line 955
    const-string v5, "common_volte_vt_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_37

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_37

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v5

    if-eqz v5, :cond_37

    const-string v5, "119"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 957
    const-string v5, "CallController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Non-VT_CALL_EMERGENCY Intent "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " attempted to call potential emergency number "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "."

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_2e
    if-eqz v6, :cond_30

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v2, v5, :cond_30

    .line 984
    :cond_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 985
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> UPDATING status to: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 990
    :cond_30
    const-string v5, "dcm_disable_block_reject_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 993
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 996
    const-string v5, "#31#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 997
    const-string v5, "#31#"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1001
    :goto_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    .line 1003
    if-eqz v6, :cond_33

    .line 1006
    const-string v5, "autoreject_mode_enable_sharedpref"

    const/4 v15, 0x1

    invoke-interface {v13, v5, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1011
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "autoreject_mode"

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1014
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_31

    if-lez v15, :cond_32

    .line 1015
    :cond_31
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1016
    const-string v13, "autoreject_mode_enable_sharedpref"

    const/4 v15, 0x0

    invoke-interface {v5, v13, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1017
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v13, "autoreject_mode"

    const/4 v15, 0x0

    invoke-static {v5, v13, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->notifyDisableAutoRejectNotification()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/phone/NotificationMgr;->updateDisableAutoRejectStatus(Z)V

    .line 1026
    :cond_32
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v13, "dormant_switch_onoff"

    const/4 v15, 0x0

    invoke-static {v5, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1030
    const/4 v13, 0x1

    if-ne v5, v13, :cond_33

    .line 1031
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dormant_switch_onoff"

    const/4 v13, 0x0

    invoke-static {v5, v8, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->notifyDisableBlockModeNotification()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/phone/NotificationMgr;->updateDisableBlockModeStatus(Z)V

    .line 1040
    :cond_33
    const-string v5, "limited_service_state"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1041
    if-eqz v6, :cond_35

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->LGT_REG_AUTH_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v2, v5, :cond_34

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v2, v5, :cond_35

    .line 1054
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1055
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 1056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> UPDATING status to: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_35
    move-object v13, v2

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1063
    if-eqz v6, :cond_3d

    .line 1064
    const-string v2, "CallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Emergency number:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v2, "gsmcall"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1066
    if-eqz v2, :cond_3c

    .line 1067
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v13, v2, :cond_3a

    .line 1068
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallController;->makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;)V

    .line 1069
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 951
    :cond_36
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 961
    :cond_37
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " attempted to call potential emergency number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 966
    :cond_38
    if-nez v5, :cond_2e

    if-eqz v20, :cond_2e

    .line 967
    const-string v2, "CallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with non-potential-emergency number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- failing call."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 998
    :cond_39
    const-string v5, "*31#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 999
    const-string v5, "*31#"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    .line 1071
    :cond_3a
    const-string v2, "CallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not  placing the call thru EmergegencyCallHelper call status :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_3b
    :goto_c
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1121
    if-nez v6, :cond_3e

    sget-object v5, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v13, v5, :cond_3e

    if-nez v2, :cond_3e

    .line 1122
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1074
    :cond_3c
    const-string v2, "CallController"

    const-string v5, "Emergency is going over IMS."

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1077
    :cond_3d
    const-string v2, "CallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not an emergency number:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1131
    :cond_3e
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v13, v2, :cond_40

    .line 1208
    const-string v2, "limited_service_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1209
    if-nez v6, :cond_3f

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1211
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1212
    if-nez v2, :cond_48

    const/4 v2, 0x1

    .line 1213
    :goto_d
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v13

    .line 1214
    if-eqz v13, :cond_3f

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v13, v2, :cond_7

    .line 1220
    :cond_3f
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1221
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_49

    .line 1224
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1135
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1145
    if-eqz v6, :cond_41

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v13, v2, :cond_42

    .line 1178
    :cond_41
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1179
    if-nez v6, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-eqz v2, :cond_45

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1148
    :cond_42
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1174
    const-string v2, "CallController"

    const-string v3, "placeCall: Trying to make emergency call while POWER_OFF for TMO!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1175
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_CALL_WITH_POP_UP:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1152
    :cond_43
    const-string v2, "CallController"

    const-string v3, "placeCall: Trying to make emergency call while POWER_OFF!"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1155
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1156
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/CallController;->makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;I)V

    .line 1168
    :goto_e
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1158
    :cond_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/phone/CallController;->makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;)V

    goto :goto_e

    .line 1185
    :cond_45
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1194
    :cond_46
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    goto/16 :goto_4

    .line 1197
    :cond_47
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    goto/16 :goto_4

    .line 1212
    :cond_48
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1228
    :cond_49
    const-string v2, "restricted_call_for_qc_issue"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1229
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 1230
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->hasRestrictedCallMessageForQC()Z

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4a

    iget-wide v15, v2, Lcom/android/phone/PhoneGlobals;->bootCompletedTime:J

    const-wide/16 v17, 0x0

    cmp-long v5, v15, v17

    if-eqz v5, :cond_4a

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-wide v0, v2, Lcom/android/phone/PhoneGlobals;->bootCompletedTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    .line 1232
    const-wide/16 v17, 0x7530

    sub-long v15, v17, v15

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOOT: placeCall: delay time - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "msec"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1234
    const-wide/16 v17, 0x0

    cmp-long v2, v15, v17

    if-lez v2, :cond_4a

    const-wide/16 v17, 0x7530

    cmp-long v2, v15, v17

    if-gez v2, :cond_4a

    .line 1235
    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    .line 1240
    :cond_4a
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1241
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v2

    .line 1242
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1244
    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->getStartRecordTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    cmp-long v5, v15, v17

    if-lez v5, :cond_4b

    .line 1245
    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 1249
    :cond_4b
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1250
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v2

    .line 1251
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1253
    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->getStartRecordTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    cmp-long v5, v15, v17

    if-lez v5, :cond_4c

    .line 1254
    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->stopRecord()V

    .line 1258
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v2

    .line 1259
    if-eqz v2, :cond_4d

    .line 1260
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    .line 1261
    if-eqz v2, :cond_4d

    .line 1262
    invoke-virtual {v2}, Lcom/android/phone/CallCard;->clearAnswerMemoImageView()V

    .line 1267
    :cond_4d
    const-string v2, "ctc_voicecall_additional_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1269
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v8

    .line 1271
    if-nez v8, :cond_4f

    const/4 v2, 0x0

    .line 1272
    :goto_f
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_54

    const-string v13, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1274
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1275
    const-string v13, "cb_outgoing_key"

    const/4 v15, 0x0

    invoke-interface {v5, v13, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1276
    const-string v13, "callbyUTK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 1277
    const-string v5, "callbyUTK"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_50

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 1290
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    if-nez v5, :cond_4e

    if-eqz v2, :cond_4e

    .line 1291
    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->hideCallBarringCheckPanelIMM()V

    .line 1292
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1293
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 1302
    :cond_4e
    const-string v2, "auto_reject_outgoingcall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1303
    if-nez v6, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->isAutoRejectOutgoingCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1304
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->AUTO_REJECTED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1271
    :cond_4f
    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getCallBarringCheckPanel()Landroid/view/ViewGroup;

    move-result-object v2

    goto :goto_f

    .line 1277
    :cond_50
    const/4 v5, 0x0

    goto :goto_10

    .line 1278
    :cond_51
    if-eqz v5, :cond_52

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    if-nez v13, :cond_52

    .line 1279
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 1280
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1281
    :cond_52
    if-eqz v5, :cond_53

    if-eqz v8, :cond_53

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_53

    .line 1283
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 1284
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_OUT_BARRING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1286
    :cond_53
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    goto :goto_11

    .line 1288
    :cond_54
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    goto :goto_11

    .line 1321
    :cond_55
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 1322
    invoke-virtual {v9}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 1328
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 1330
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1331
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    if-nez v2, :cond_57

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    .line 1332
    :goto_12
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1333
    const-string v2, "placeCall: otherphone is dialing now"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1336
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    .line 1340
    :cond_56
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1331
    :cond_57
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    goto :goto_12

    .line 1341
    :cond_58
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_5c

    .line 1342
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_59

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1343
    :cond_59
    const-string v2, "placeCall: otherphone is busy now"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1346
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    .line 1351
    :cond_5a
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1353
    :cond_5b
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->holdCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1360
    :cond_5c
    const-string v2, "single_lte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1361
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1363
    const-string v8, "phone"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1364
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v8, 0xd

    if-ne v2, v8, :cond_62

    const/4 v2, 0x1

    .line 1365
    :goto_13
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v8

    if-nez v8, :cond_5d

    if-nez v5, :cond_5e

    if-eqz v2, :cond_5e

    .line 1366
    :cond_5d
    const-string v2, "ril.ims.pre_regstate"

    const-string v5, "true"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :cond_5e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    if-nez v6, :cond_5f

    if-eqz v20, :cond_63

    :cond_5f
    const/16 v17, 0x1

    :goto_14
    iget-object v0, v9, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object v15, v4

    invoke-static/range {v13 .. v19}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v2

    .line 1382
    if-nez v6, :cond_60

    if-eqz v20, :cond_61

    .line 1383
    :cond_60
    const-string v5, "gsmcall"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1384
    if-eqz v5, :cond_64

    .line 1385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallController;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v5, v4}, Lcom/android/phone/WfcEmergencyCallController;->startTimerForCS(Ljava/lang/String;)V

    .line 1395
    :cond_61
    :goto_15
    packed-switch v2, :pswitch_data_0

    .line 1547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placeCall: unknown callStatus "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1549
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1364
    :cond_62
    const/4 v2, 0x0

    goto :goto_13

    .line 1370
    :cond_63
    const/16 v17, 0x0

    goto :goto_14

    .line 1390
    :cond_64
    const-string v5, "CallController"

    const-string v8, "Emergency is going over IMS."

    invoke-static {v5, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1397
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1400
    const-string v2, "feature_ltn_notipopup_when_number_changed"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1401
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/CallCard;->setmShowNotiPopup(Z)V

    .line 1412
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- inCallUiState.inCallScreenMode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v9, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1414
    iget-object v2, v9, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v5, :cond_66

    .line 1415
    const-string v2, "==>  OTA_NORMAL note: switching to OTA_STATUS_LISTENING."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v5, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1421
    :cond_66
    if-eqz v3, :cond_67

    const-string v2, "voicemail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    :cond_67
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_68
    const/4 v2, 0x1

    .line 1424
    :goto_16
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1425
    if-eqz v3, :cond_69

    const-string v2, "voicemail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    :cond_69
    move/from16 v0, p2

    invoke-static {v4, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_6a
    const/4 v2, 0x1

    .line 1428
    :cond_6b
    :goto_17
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1429
    const/4 v2, 0x0

    .line 1430
    const-string v5, "ril.MSIMM"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1431
    if-eqz v5, :cond_6c

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1432
    const/4 v2, 0x1

    .line 1434
    :cond_6c
    const-string v5, "feature_marvell_dsds"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1435
    if-eqz v3, :cond_6d

    const-string v2, "voicemail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    :cond_6d
    move/from16 v0, p2

    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_6e
    const/4 v2, 0x1

    .line 1448
    :cond_6f
    :goto_18
    const-string v3, "disable_display_voicemail_keypad"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1449
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1464
    :goto_19
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    .line 1471
    const/4 v2, 0x0

    .line 1472
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_70

    if-nez v6, :cond_70

    .line 1473
    const-string v2, "CallController"

    const-string v3, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v2, 0x1

    .line 1477
    :cond_70
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_71

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_71

    .line 1482
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 1497
    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 1503
    :cond_71
    if-eqz v2, :cond_7a

    .line 1504
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1421
    :cond_72
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 1425
    :cond_73
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 1435
    :cond_74
    const/4 v2, 0x0

    goto :goto_18

    .line 1438
    :cond_75
    if-eqz v3, :cond_76

    const-string v5, "voicemail"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    :cond_76
    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_77
    const/4 v2, 0x1

    goto :goto_18

    :cond_78
    const/4 v2, 0x0

    goto :goto_18

    .line 1451
    :cond_79
    iput-boolean v2, v9, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_19

    .line 1506
    :cond_7a
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1510
    :pswitch_1
    const-string v2, "placeCall: specified number was an MMI code: "

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1521
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1524
    :pswitch_2
    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number: "

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1530
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    .line 1540
    :cond_7b
    :goto_1a
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    .line 1533
    :cond_7c
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    goto :goto_1a

    .line 1543
    :pswitch_3
    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED_LOWBATT for number: "

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 1544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1545
    sget-object v13, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED_LOWBATT:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_4

    :cond_7d
    move-object v5, v4

    goto/16 :goto_b

    :cond_7e
    move-object v4, v8

    goto/16 :goto_a

    :cond_7f
    move v6, v4

    goto/16 :goto_7

    .line 1395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBarringPopup()Z
    .locals 1

    .prologue
    .line 1905
    iget-boolean v0, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    return v0
.end method

.method public getIntentOfOriginCall()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIsCSCall()Z
    .locals 2

    .prologue
    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsCSCall() mIsCSCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallController;->mIsCSCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1855
    iget-boolean v0, p0, Lcom/android/phone/CallController;->mIsCSCall:Z

    return v0
.end method

.method public getRtsValueForKor()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 279
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 242
    :sswitch_0
    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto :goto_0

    .line 256
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/CallController;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 258
    const-string v0, "CallController"

    const-string v2, "mHandler: mToneGenerator == null"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 260
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 261
    iget-object v0, p0, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 271
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 272
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x4b

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;

    .line 273
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7d -> :sswitch_1
        0x7e -> :sswitch_2
    .end sparse-switch
.end method

.method public initRtsValueForKor()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1838
    const-string v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "place call : ril = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 1840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_1

    .line 1841
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    .line 1842
    :cond_0
    const-string v1, ";"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1843
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v6

    const-string v3, "Status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1844
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v4

    const-string v3, "Idle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1845
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v2, v0, v7

    const-string v3, "CS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1846
    iget-object v1, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    aget-object v0, v0, v8

    const-string v2, "PS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    .line 1847
    iget-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1851
    :goto_0
    return-void

    .line 1849
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallController;->mRtsValueForKor:[Ljava/lang/Integer;

    goto :goto_0
.end method

.method makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1909
    const-string v0, "CallController"

    const-string v1, "makeEmergencyCallWhileAirPlaneMode() "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1910
    if-nez p1, :cond_0

    .line 1911
    invoke-virtual {p0}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v0

    .line 1913
    :try_start_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1920
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1921
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v0, :cond_1

    .line 1922
    new-instance v0, Lcom/android/phone/EmergencyCallHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 1924
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1927
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v0, p1}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 1928
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1924
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method makeEmergencyCallWhileAirPlaneMode(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1932
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeEmergencyCallWhileAirPlaneMode(), simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1933
    if-nez p1, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v0

    .line 1936
    :try_start_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1942
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1943
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v0, :cond_1

    .line 1944
    new-instance v0, Lcom/android/phone/EmergencyCallHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    iput-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 1946
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1948
    iget-object v0, p0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;I)V

    .line 1949
    return-void

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 32
    .parameter "intent"

    .prologue
    .line 336
    const-string v28, "placeCall()...  "

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 344
    .local v11, inCallUiState:Lcom/android/phone/InCallUiState;
    if-nez p1, :cond_0

    .line 345
    const-string v28, "CallController"

    const-string v29, "placeCall: called with null intent"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 346
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "placeCall: called with null intent"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 349
    :cond_0
    const-string v28, "intent = "

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 350
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "extras = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 354
    .local v27, uri:Landroid/net/Uri;
    if-nez v27, :cond_1

    .line 355
    const-string v28, "CallController"

    const-string v29, "placeCall: intent had no data"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 356
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "placeCall: intent had no data"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 359
    :cond_1
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 360
    .local v19, scheme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, number:Ljava/lang/String;
    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 366
    .local v5, context:Landroid/content/Context;
    const-string v28, "phone"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 367
    .local v26, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v28, "orange_first_Time_boot"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 368
    .local v24, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 370
    .local v8, ed:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->getIccidPreference(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, iccidPref:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->getIccid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, iccid:Ljava/lang/String;
    const/4 v15, 0x0

    .line 375
    .local v15, newSim:Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- action: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 376
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- uri: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 377
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- scheme: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 378
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- number: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v28

    if-nez v28, :cond_8

    const/16 v28, 0x1

    :goto_0
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallController;->mIsCSCall:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    .line 388
    .local v18, phone:Lcom/android/internal/telephony/Phone;
    const/16 v20, 0x0

    .line 389
    .local v20, simId:I
    const/16 v22, 0x0

    .line 390
    .local v22, simSlotID:I
    const-string v28, "feature_chn_duos"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 391
    const-string v28, "simnum"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 392
    const-string v28, "simnum"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 393
    .local v21, simNumber:I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "intent has extra simNumber"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 394
    if-eqz v21, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    add-int/lit8 v29, v21, -0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/phone/PhoneGlobals;->isCorrectSimId(I)Z

    move-result v28

    if-nez v28, :cond_a

    const-string v28, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    const-string v28, "android.intent.action.CALL_EMERGENCY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 396
    :cond_3
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 397
    const/16 v21, 0x2

    .line 401
    :goto_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "extra simNumber is wrong value. set correct simNumber"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 413
    .end local v21           #simNumber:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->setSimNumber(I)V

    .line 452
    :cond_4
    :goto_3
    const/4 v14, 0x0

    .line 453
    .local v14, isVoicemail:Z
    const-string v28, "sec_product_feature_common_dsds_support"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 454
    if-eqz v19, :cond_5

    const-string v28, "voicemail"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    :cond_5
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_17

    :cond_6
    const/4 v14, 0x1

    .line 461
    :goto_4
    if-eqz v14, :cond_7

    .line 462
    const-string v28, "audio"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/media/AudioManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v28, v0

    const-string v29, "voicemail=on"

    invoke-virtual/range {v28 .. v29}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 469
    :cond_7
    const-string v28, "android.intent.action.CALL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1c

    const-string v28, "android.intent.action.CALL_EMERGENCY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1c

    const-string v28, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1c

    .line 472
    const-string v28, "CallController"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall: unexpected intent action "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v28, Ljava/lang/IllegalArgumentException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unexpected action: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 380
    .end local v14           #isVoicemail:Z
    .end local v18           #phone:Lcom/android/internal/telephony/Phone;
    .end local v20           #simId:I
    .end local v22           #simSlotID:I
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 399
    .restart local v18       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v20       #simId:I
    .restart local v21       #simNumber:I
    .restart local v22       #simSlotID:I
    :cond_9
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 402
    :cond_a
    const/16 v28, 0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 403
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 404
    :cond_b
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 405
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 407
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    goto/16 :goto_2

    .line 410
    .end local v21           #simNumber:I
    :cond_d
    const-string v28, "intent has no extra simNumber"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    goto/16 :goto_2

    .line 414
    :cond_e
    const-string v28, "ctc_dual_mode"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 415
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    goto/16 :goto_3

    .line 416
    :cond_f
    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 417
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v6

    .line 419
    .local v6, defSimCardId:I
    const-string v28, "simSlot"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 420
    const-string v28, "simSlot"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 421
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "placeCall()... intent has simId, the active phone is... "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 434
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    .line 435
    goto/16 :goto_3

    .line 423
    :cond_10
    const/16 v23, 0x0

    .local v23, simSlotNum:I
    :goto_6
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 424
    move/from16 v0, v23

    if-ne v0, v6, :cond_13

    .line 425
    move/from16 v22, v23

    .line 429
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v28

    if-nez v28, :cond_12

    .line 430
    const/16 v22, 0x0

    .line 432
    :cond_12
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "placeCall()... intent has no simId, the active phone is... "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 423
    :cond_13
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 435
    .end local v6           #defSimCardId:I
    .end local v23           #simSlotNum:I
    :cond_14
    const-string v28, "sec_product_feature_common_dsds_support"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 436
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v6

    .line 437
    .restart local v6       #defSimCardId:I
    if-gez v6, :cond_15

    .line 438
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "defSimCardId<0. So it sets 0 defSimCardId:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 439
    const/4 v6, 0x0

    .line 442
    :cond_15
    const-string v28, "simId"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 443
    const-string v28, "simId"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 444
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "placeCall()... intent has simId, the active phone is... "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 449
    :goto_7
    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    goto/16 :goto_3

    .line 446
    :cond_16
    move/from16 v20, v6

    .line 447
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "placeCall()... intent has no simId, the active phone is... "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 454
    .end local v6           #defSimCardId:I
    .restart local v14       #isVoicemail:Z
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 457
    :cond_18
    if-eqz v19, :cond_19

    const-string v28, "voicemail"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    :cond_19
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    :cond_1a
    const/4 v14, 0x1

    :goto_8
    goto/16 :goto_4

    :cond_1b
    const/4 v14, 0x0

    goto :goto_8

    .line 476
    :cond_1c
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallController;->checkForOtaspCall(Landroid/content/Intent;)V

    .line 482
    :cond_1d
    const-string v28, "emergency_call_cont_beeps"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 483
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    .line 484
    .local v12, isEmergencyNumber:Z
    if-eqz v12, :cond_20

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v28, v0

    if-nez v28, :cond_1e

    .line 486
    const-string v28, "audio"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/media/AudioManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    .line 489
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mToneGeneratorLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 490
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v28, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v28, :cond_1f

    .line 492
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v28

    if-eqz v28, :cond_23

    .line 493
    new-instance v28, Landroid/media/ToneGenerator;

    const/16 v30, 0x2

    const/16 v31, 0x5a

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    :cond_1f
    :goto_9
    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    const/16 v28, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/CallController;->removeMessages(I)V

    .line 505
    const/16 v28, 0x7d

    const-wide/16 v29, 0x5dc

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    const/16 v28, 0x7e

    const-wide/16 v29, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    .end local v12           #isEmergencyNumber:Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 526
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallUiState;->setProviderInfo(Landroid/content/Intent;)V

    .line 533
    :goto_a
    const-string v28, "sec_product_feature_common_dsds_support"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v25

    .line 540
    .local v25, status:Lcom/android/phone/Constants$CallStatusCode;
    :goto_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "==> placeCall(): status from placeCallInternal(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 543
    sget-object v28, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_21

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_CIQ_BroadcastState"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 544
    sget-object v28, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(Ljava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 545
    const v28, 0xffff

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(Ljava/lang/String;I)V

    .line 549
    :cond_21
    sget-object v28, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 593
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 602
    :goto_c
    const-string v28, "support_one_touch_report"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 603
    const-string v28, "112"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 604
    .local v13, isOneTouchReportNumber:Z
    const-string v28, "startFlag"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 605
    .local v17, oneTouchFlag:Ljava/lang/String;
    if-nez v17, :cond_22

    const-string v17, "001"

    .line 608
    :cond_22
    const-string v28, "002"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2a

    const-string v28, "0112002424"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2a

    const/16 v28, 0x1

    :goto_d
    or-int v13, v13, v28

    .line 611
    if-eqz v13, :cond_2b

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtilsExt;->isOneTouchReportEnabled(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->launchOneTouchReport(Landroid/content/Context;Ljava/lang/String;)V

    .line 614
    const-string v28, "002"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 616
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 656
    .end local v13           #isOneTouchReportNumber:Z
    .end local v17           #oneTouchFlag:Ljava/lang/String;
    :goto_e
    return-void

    .line 495
    .end local v25           #status:Lcom/android/phone/Constants$CallStatusCode;
    .restart local v12       #isEmergencyNumber:Z
    :cond_23
    :try_start_3
    new-instance v28, Landroid/media/ToneGenerator;

    const/16 v30, 0x4

    const/16 v31, 0x5a

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_9

    .line 497
    :catch_0
    move-exception v7

    .line 498
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v28, "CallController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_9

    .line 502
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v28

    .line 529
    .end local v12           #isEmergencyNumber:Z
    :cond_24
    invoke-virtual {v11}, Lcom/android/phone/InCallUiState;->clearProviderInfo()V

    goto/16 :goto_a

    .line 535
    :cond_25
    const-string v28, "feature_multisim"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_26

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v25

    .restart local v25       #status:Lcom/android/phone/Constants$CallStatusCode;
    goto/16 :goto_b

    .line 538
    .end local v25           #status:Lcom/android/phone/Constants$CallStatusCode;
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v25

    .restart local v25       #status:Lcom/android/phone/Constants$CallStatusCode;
    goto/16 :goto_b

    .line 553
    :pswitch_0
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 555
    sget-object v28, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_29

    .line 558
    sget-object v28, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 565
    :goto_f
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "call condition sucess iccid"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 566
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "call condition sucess iccidPref"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 567
    if-eqz v10, :cond_27

    if-eqz v9, :cond_28

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_28

    .line 569
    :cond_27
    const/4 v15, 0x1

    .line 570
    const-string v28, "orange newsim true"

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/android/phone/CallController;->log(Ljava/lang/String;Z)V

    .line 588
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/phone/PhoneGlobals;->setBeginningCall(Z)V

    goto/16 :goto_c

    .line 563
    :cond_29
    invoke-virtual {v11}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_f

    .line 608
    .restart local v13       #isOneTouchReportNumber:Z
    .restart local v17       #oneTouchFlag:Ljava/lang/String;
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_d

    .line 643
    .end local v13           #isOneTouchReportNumber:Z
    .end local v17           #oneTouchFlag:Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallController;->mOriginCallIntent:Landroid/content/Intent;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->displayVTCallScreen()V

    goto/16 :goto_e

    .line 647
    :cond_2c
    const-string v28, "sec_product_feature_common_dsds_support"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_e

    .line 650
    :cond_2d
    const-string v28, "ims_auto_call_test"

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 651
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    const-string v28, "auto_test"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->setAutoTestEnable(Z)V

    .line 653
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    goto/16 :goto_e

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public retryEmergencyCall()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1952
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 1956
    sput-boolean v4, Lcom/android/phone/CallController;->isRetryEmergencyCall:Z

    .line 1957
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallController;->mPhone2:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1972
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallController;->isRetryEmergencyCall:Z

    .line 1973
    return-void

    .line 1959
    :cond_1
    sput-boolean v4, Lcom/android/phone/CallController;->isRetryEmergencyCall:Z

    .line 1960
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1961
    const-string v0, "110"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "120"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "119"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "112"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "911"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "999"

    iget-object v1, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1963
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallController;->mPhone1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    goto :goto_0

    .line 1965
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallController;->mPhone1:Lcom/android/internal/telephony/Phone;

    const-string v2, "110"

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    goto :goto_0

    .line 1968
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallController;->mPhone1:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallController;->lastEmergencyNumber:Ljava/lang/String;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    goto :goto_0
.end method

.method public setBarringPopup(Z)V
    .locals 0
    .parameter "barringPopup"

    .prologue
    .line 1861
    iput-boolean p1, p0, Lcom/android/phone/CallController;->cdmaBarringPopup:Z

    .line 1862
    return-void
.end method

.method public setIsEmergencyCall(Z)V
    .locals 0
    .parameter "emergency"

    .prologue
    .line 1976
    sput-boolean p1, Lcom/android/phone/CallController;->isEmergencyCall:Z

    .line 1977
    return-void
.end method

.method public stopERTone()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v1, p0, Lcom/android/phone/CallController;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1996
    const/16 v0, 0x7d

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CallController;->removeMessages(I)V

    .line 1997
    iget-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallController;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;

    .line 1999
    monitor-exit v1

    .line 2001
    :cond_0
    return-void

    .line 1999
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
