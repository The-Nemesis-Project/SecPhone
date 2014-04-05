.class public Lcom/android/phone/WfcEmergencyCallController;
.super Ljava/lang/Object;
.source "WfcEmergencyCallController.java"


# instance fields
.field private final GSM_EMERGENCY_CALL_TIMEOUT:I

.field private TAG:Ljava/lang/String;

.field private mCSCallFailedBecauseOfTimeout:Z

.field private mCSCallSucceeded:Z

.field private mEmergencyCallPreference:I

.field private mEmergencyNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTemporaryDisableIms:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    .line 54
    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    .line 57
    const-string v0, "911"

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    .line 64
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/phone/WfcEmergencyCallController;->GSM_EMERGENCY_CALL_TIMEOUT:I

    .line 106
    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$1;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$1;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/WfcEmergencyCallController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->handleCallDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handlePhoneStateChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handleCSTimeoutForEmergency()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handleDelayedRegistration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRil()V

    return-void
.end method

.method private createRilRequestForLocalHangBeforeTimeout()[B
    .locals 7

    .prologue
    .line 419
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 422
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v5, 0xb

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 423
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 424
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 425
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 431
    .local v4, request:[B
    if-eqz v1, :cond_0

    .line 432
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 434
    :cond_0
    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    :cond_1
    :goto_1
    return-object v4

    .line 426
    .end local v4           #request:[B
    :catch_0
    move-exception v2

    .line 427
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v6, "IOException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #request:[B
    :catch_1
    move-exception v3

    .line 438
    .local v3, ex:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private delayIMSRegistration()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 367
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    .line 370
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "delayed IMS registration: wait for 5000(msecs)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "delayed IMS registration: wait for 180000(msecs)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private disableImsTemporarily()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    .line 262
    return-void
.end method

.method private disableWFCWhenCSCallIsSuccessful()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "disabling wifi call..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 252
    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private handleCSDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->shouldCallBeRetriedOverIms(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Trigger CS->IMS fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->placeEmergencyCallOverIMS()V

    .line 241
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    .line 242
    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "delay IMS registration, since call was placed successfully over GSM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->delayIMSRegistration()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS call failed before EVENT_CS_TIMEOUT_FOR_EMERGENCY occured with reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCSTimeoutForEmergency()V
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "hangup gsm emergency call..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangup call failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCallDisconnect(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 145
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 147
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 149
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause of disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-direct {p0, v1}, Lcom/android/phone/WfcEmergencyCallController;->handleCSDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    .line 157
    return-void

    .line 155
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    :catchall_0
    move-exception v3

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    throw v3
.end method

.method private handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 345
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v3, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v1

    .line 348
    .local v1, profile:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;
    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 350
    .local v0, isEmergencyCall:Z
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v2

    .line 352
    .local v2, registrationStatus:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-virtual {v2, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v4, "disabling wifi call temporarily..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->disableImsTemporarily()V

    .line 359
    .end local v0           #isEmergencyCall:Z
    .end local v1           #profile:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;
    .end local v2           #registrationStatus:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    :cond_0
    return-void
.end method

.method private handleDelayedRegistration()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v0, v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Delaying the registration further since call is not IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->delayIMSRegistration()V

    goto :goto_0
.end method

.method private handlePhoneStateChanged()V
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 165
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_STATE_CHANGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v0}, Lcom/android/phone/WfcEmergencyCallController;->handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V

    .line 170
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "Call was placed successfully over GSM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    .line 174
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->disableWFCWhenCSCallIsSuccessful()V

    .line 176
    :cond_0
    return-void
.end method

.method private placeEmergencyCallOverIMS()V
    .locals 3

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    .line 271
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "placeEmergencyCallOverIMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, dial:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    const-string v1, "gsmcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method private registerForDisconnectAndCallStateChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "registerForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private reportCallFailedWithLocalCauseToRil()V
    .locals 9

    .prologue
    .line 394
    iget-object v6, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v7, "reportCallFailedWithLocalCauseToRil"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    .local v0, context:Landroid/content/Context;
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 399
    .local v5, telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0xc8

    new-array v3, v6, [B

    .line 401
    .local v3, response:[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->createRilRequestForLocalHangBeforeTimeout()[B

    move-result-object v2

    .line 402
    .local v2, request:[B
    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 403
    .local v4, ret:I
    iget-object v6, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendOemRilRequestRaw: return value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v2           #request:[B
    .end local v4           #ret:I
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, re:Landroid/os/RemoteException;
    const-string v6, "sendWfcSwitchStateAndCurrentProfileToRil failed:"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldCallBeRetriedOverIms(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z
    .locals 4
    .parameter "cause"

    .prologue
    const/4 v0, 0x0

    .line 320
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-eqz v1, :cond_2

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cause of disconnect is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Retry the call over IMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "shouldCallBeRetriedOverIms(): Call became ACTIVE then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return v0

    .line 328
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-nez v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v2, "cause of disconnect is LOCAL and timeout did not occured: report it to RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!GSM call disconnected before timeout occured:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Investigate!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterForDisconnectAndCallStateChange()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "unregisterForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 102
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 103
    return-void
.end method


# virtual methods
.method public reportCallFailedWithLocalCauseToRilInNewThread()V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$2;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$2;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    invoke-virtual {v0}, Lcom/android/phone/WfcEmergencyCallController$2;->start()V

    .line 387
    return-void
.end method

.method protected startTimerForCS(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    .line 285
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->registerForDisconnectAndCallStateChange()V

    .line 287
    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    .line 288
    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    .line 292
    iget v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string v1, "Emergency will timeout after 6000 msecs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS -> IMS fallback will not happen since ECMP state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
