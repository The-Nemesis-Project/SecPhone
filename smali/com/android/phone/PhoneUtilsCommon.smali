.class public Lcom/android/phone/PhoneUtilsCommon;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"


# static fields
.field private static sIsMySoundListening:Z

.field private static sIsPutDownListening:Z

.field private static final sSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static sSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    new-instance v0, Lcom/android/phone/PhoneUtilsCommon$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsCommon$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 349
    sput-boolean v1, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    .line 350
    sput-boolean v1, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static changeCoverLockUI(Z)V
    .locals 6
    .parameter "isSuppress"

    .prologue
    const/4 v5, 0x1

    .line 576
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 577
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    const-string v0, "com.samsung.cover.STATE_CHANGE"

    .line 580
    .local v0, ACTION_COM_SAMSUNG_COVER_STATE_CHANGE:Ljava/lang/String;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    iget-object v3, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    if-eqz p0, :cond_0

    .line 583
    const-string v3, "changeCoverLockUI - do not because IDLE"

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 604
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v3, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_3

    :cond_1
    if-nez p0, :cond_3

    .line 588
    const-string v3, "changeCoverLockUI - do not because OFFHOOK"

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v3, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_3

    if-eqz p0, :cond_3

    .line 593
    const-string v3, "changeCoverLockUI - do not because IDLE"

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 598
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCoverLockUI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 599
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 600
    .local v2, mCallEndIntent:Landroid/content/Intent;
    const-string v3, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v3, "sender"

    const-string v4, "PhoneUtilsCommon"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v3, "suppressCoverUI"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static doActionPutUpDown(Z)V
    .locals 6
    .parameter "isPutDown"

    .prologue
    const/4 v3, 0x1

    .line 353
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 354
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v2

    .line 363
    .local v2, screenOn:Z
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive event for LCD on/off : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 368
    if-eqz p0, :cond_4

    if-nez v2, :cond_4

    .line 369
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_screen_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move v1, v3

    .line 370
    .local v1, isSmartScreenOn:Z
    :goto_1
    if-nez v1, :cond_3

    .line 371
    const-string v4, "smart screen off"

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 369
    .end local v1           #isSmartScreenOn:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 374
    .restart local v1       #isSmartScreenOn:Z
    :cond_3
    const-string v4, "doActionPutUpDown : forceWakeUpScreen"

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto :goto_0

    .line 376
    .end local v1           #isSmartScreenOn:Z
    :cond_4
    if-nez p0, :cond_0

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->makeGoToSleepWithNoLockSound()V

    goto :goto_0
.end method

.method public static getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 9

    .prologue
    .line 728
    const/4 v5, 0x0

    .line 730
    .local v5, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 731
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 732
    .local v0, aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const/4 v2, 0x0

    .line 734
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 737
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 738
    .local v4, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 739
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 740
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 741
    .local v6, type:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnectedBTWithWatch type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 743
    const-string v7, "WA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 744
    const/4 v5, 0x1

    .line 750
    .end local v3           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:Ljava/util/Iterator;
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBTWatchDevice result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 752
    if-nez v5, :cond_2

    .line 753
    const/4 v2, 0x0

    .line 755
    :cond_2
    return-object v2
.end method

.method public static getIncomingCallNotifications()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 616
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "popup_incoming_call"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 617
    .local v0, incomingCallPopup:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIncomingCallNotifications : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 618
    return v0
.end method

.method public static getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 6
    .parameter "conn"

    .prologue
    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 624
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 625
    .local v2, context:Landroid/content/Context;
    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 627
    .local v1, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: conn.getAddress() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: conn.getOrigDialString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 629
    if-eqz v1, :cond_0

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumber: callerInfo.phoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 658
    :cond_1
    :goto_0
    return-object v3

    .line 640
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->hasExtentionNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 643
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 648
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 651
    :cond_5
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 653
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getRejectMessageCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 17
    .parameter "rejectmsg"

    .prologue
    .line 75
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 76
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    .local v3, context:Landroid/content/Context;
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "_id"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "REJECT_MESSAGE"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "EDIT_CHECKED"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "REMIND_TIME"

    aput-object v16, v14, v15

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 84
    .local v11, result:Landroid/database/MatrixCursor;
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 86
    :cond_0
    const/4 v10, 0x0

    .line 87
    .local v10, rejectMessage:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 88
    .local v7, id:J
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 90
    .local v5, edited:I
    const/4 v14, 0x1

    if-ne v5, v14, :cond_3

    const/4 v9, 0x1

    .line 91
    .local v9, isChanged:Z
    :goto_0
    if-eqz v9, :cond_4

    .line 92
    const-string v14, "PhoneUtilsCommon"

    const-string v15, "Edited"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 93
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    :goto_1
    if-eqz v10, :cond_1

    .line 109
    const/4 v14, 0x4

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    aput-object v10, v2, v14

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    .line 115
    .local v2, column:[Ljava/lang/Object;
    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 117
    .end local v2           #column:[Ljava/lang/Object;
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 123
    .end local v5           #edited:I
    .end local v7           #id:J
    .end local v9           #isChanged:Z
    .end local v10           #rejectMessage:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v11

    .line 90
    .restart local v5       #edited:I
    .restart local v7       #id:J
    .restart local v10       #rejectMessage:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 95
    .restart local v9       #isChanged:Z
    :cond_4
    const-wide/16 v14, 0x1

    sub-long v12, v7, v14

    .line 97
    .local v12, stringIdx:J
    const-string v14, "modify_reject_message"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 98
    sget-object v14, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[Ljava/lang/String;

    long-to-int v15, v12

    aget-object v6, v14, v15

    .line 102
    .local v6, entryName:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "string"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v14, "PhoneUtilsCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    .end local v5           #edited:I
    .end local v6           #entryName:Ljava/lang/String;
    .end local v7           #id:J
    .end local v9           #isChanged:Z
    .end local v10           #rejectMessage:Ljava/lang/String;
    .end local v12           #stringIdx:J
    :catch_0
    move-exception v4

    .line 120
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "PhoneUtilsCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getRejectMessageCursor exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    .line 100
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #edited:I
    .restart local v7       #id:J
    .restart local v9       #isChanged:Z
    .restart local v10       #rejectMessage:Ljava/lang/String;
    .restart local v12       #stringIdx:J
    :cond_5
    :try_start_1
    sget-object v14, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[Ljava/lang/String;

    long-to-int v15, v12

    aget-object v6, v14, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6       #entryName:Ljava/lang/String;
    goto :goto_3
.end method

.method public static getVoiceEqListValue()I
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getVoiceEqListValue(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 479
    .local v4, isHearingRevisionOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 482
    .local v2, eqListValue:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, eqListEntries:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue_noCallPose : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 487
    if-eq v2, v10, :cond_0

    if-ne v2, v11, :cond_2

    :cond_0
    move v5, v7

    .line 490
    .local v5, mySoundEnabled:Z
    :goto_0
    if-lez v4, :cond_4

    if-nez v5, :cond_4

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "hearing_direction"

    const/4 v9, -0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 492
    .local v0, direction:I
    if-nez v0, :cond_3

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    const/4 v2, 0x3

    .line 496
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .end local v0           #direction:I
    :cond_1
    :goto_1
    move v3, v2

    .line 541
    .end local v2           #eqListValue:I
    .end local v5           #mySoundEnabled:Z
    .local v3, eqListValue:I
    :goto_2
    return v3

    .end local v3           #eqListValue:I
    .restart local v2       #eqListValue:I
    :cond_2
    move v5, v6

    .line 487
    goto :goto_0

    .line 497
    .restart local v0       #direction:I
    .restart local v5       #mySoundEnabled:Z
    :cond_3
    if-ne v0, v7, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    const/4 v2, 0x4

    .line 501
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 503
    .end local v0           #direction:I
    :cond_4
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    const/4 v2, 0x0

    .line 507
    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    .end local v1           #eqListEntries:[Ljava/lang/String;
    .end local v2           #eqListValue:I
    .end local v4           #isHearingRevisionOn:I
    .end local v5           #mySoundEnabled:Z
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 515
    .restart local v4       #isHearingRevisionOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 518
    .restart local v2       #eqListValue:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 521
    .restart local v1       #eqListEntries:[Ljava/lang/String;
    array-length v8, v1

    if-lt v2, v8, :cond_6

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    const/4 v2, 0x3

    .line 525
    const-string v8, "change eqListValue for upgrade "

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 528
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 530
    if-lez v4, :cond_8

    if-eqz v2, :cond_8

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    const/4 v2, 0x0

    .line 534
    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v3, v2

    .line 541
    .end local v2           #eqListValue:I
    .restart local v3       #eqListValue:I
    goto/16 :goto_2

    .line 535
    .end local v3           #eqListValue:I
    .restart local v2       #eqListValue:I
    :cond_8
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    const/4 v2, 0x3

    .line 539
    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static hasExtentionNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 556
    const/4 v3, 0x0

    .line 558
    .local v3, result:Z
    if-nez p0, :cond_0

    .line 559
    const/4 v4, 0x0

    .line 571
    :goto_0
    return v4

    .line 562
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 563
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    .line 564
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 565
    .local v0, c:C
    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 566
    const/4 v3, 0x1

    .end local v0           #c:C
    :cond_1
    move v4, v3

    .line 571
    goto :goto_0

    .line 563
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hasRingingCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 150
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 151
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 157
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 153
    :cond_2
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 155
    .local v1, defSimCardId:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_0
.end method

.method public static isAirMotionOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, result:Z
    const-string v5, "air_motion_wave"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    :goto_0
    return v4

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_engine"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 167
    .local v0, isOnAirMotion:Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_motion_call_accept"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 170
    .local v1, isOnAirMotionCallAcccept:Z
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 171
    const/4 v2, 0x1

    :cond_1
    move v4, v2

    .line 174
    goto :goto_0

    .end local v0           #isOnAirMotion:Z
    .end local v1           #isOnAirMotionCallAcccept:Z
    :cond_2
    move v0, v4

    .line 165
    goto :goto_1

    .restart local v0       #isOnAirMotion:Z
    :cond_3
    move v1, v4

    .line 167
    goto :goto_2
.end method

.method public static isDrivingModeOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    const-string v0, "driving_mode_on"

    .line 236
    .local v0, DB_KEY_DRIVING_MODE_ON:Ljava/lang/String;
    const/4 v1, 0x0

    .line 237
    .local v1, driveModeForIncoming:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_incoming_call_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 242
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrivingModeOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 243
    return v1

    :cond_0
    move v1, v3

    .line 237
    goto :goto_0
.end method

.method public static isOnehandAnyScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 267
    .local v0, isOnehandAnyScreen:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOnehandAnyScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 268
    return v0
.end method

.method public static isOnehandModeOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 272
    const-string v0, "onehand_dialer_enabled"

    .line 273
    .local v0, ONE_HAND_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_dialer_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 274
    .local v1, isOnehandModeOn:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnehandModeOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 275
    const-string v4, "support_onehand_any_screen"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandAnyScreen()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    and-int/2addr v1, v2

    .line 278
    :cond_0
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const/4 v1, 0x0

    .line 283
    :cond_1
    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const/4 v1, 0x0

    .line 286
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-eqz v2, :cond_3

    .line 287
    const/4 v1, 0x0

    .line 289
    :cond_3
    return v1

    .end local v1           #isOnehandModeOn:Z
    :cond_4
    move v1, v3

    .line 273
    goto :goto_0

    .restart local v1       #isOnehandModeOn:Z
    :cond_5
    move v2, v3

    .line 276
    goto :goto_1
.end method

.method public static isVoiceControlIncomingCallOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 254
    .local v0, voiceControlIncomingCallOn:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlIncomingCallOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 255
    return v0
.end method

.method public static isVoiceControlOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 248
    .local v0, voiceControlOn:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 249
    return v0
.end method

.method public static isVoiceControlOnForIncomingCall(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 260
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlIncomingCallOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 261
    .local v0, voiceControlOnForIncomingCall:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceControlOnForIncomingCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 262
    return v0

    .line 260
    .end local v0           #voiceControlOnForIncomingCall:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 803
    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 807
    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 808
    return-void
.end method

.method public static sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;ILjava/lang/String;)V
    .locals 8
    .parameter "bluetoothHeadset"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 672
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 673
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 675
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-nez p2, :cond_2

    .line 676
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 677
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 678
    .local v2, duration:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    .local v5, value:Ljava/lang/String;
    const-string v6, "R_CT"

    invoke-static {p0, v6, v5}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #duration:J
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v1, v4

    .line 676
    goto :goto_0

    .line 682
    :cond_2
    invoke-static {p0, v4, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 683
    invoke-static {p0, v0, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    goto :goto_1
.end method

.method public static sendCallTimeToOtherDevice(Landroid/bluetooth/BluetoothHeadset;Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z
    .locals 12
    .parameter "bluetoothHeadset"
    .parameter "call"
    .parameter "id"
    .parameter "number"

    .prologue
    .line 689
    const-wide/16 v4, 0x0

    .line 690
    .local v4, duration:J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 691
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 694
    .local v2, count:I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 695
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 696
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, currentNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v4

    .line 699
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendCallTimeToOtherDevice: current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 700
    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 701
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, value:Ljava/lang/String;
    const-string v10, "R_CT"

    invoke-static {p0, v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v10, 0x1

    .line 724
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #currentNumber:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :goto_0
    return v10

    .line 707
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 708
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 709
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 710
    .restart local v3       #currentNumber:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 711
    .local v7, t:J
    cmp-long v10, v7, v4

    if-lez v10, :cond_1

    .line 712
    move-wide v4, v7

    .line 714
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 715
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 716
    .restart local v9       #value:Ljava/lang/String;
    const-string v10, "R_CT"

    invoke-static {p0, v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v10, 0x1

    goto :goto_0

    .line 707
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 723
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #currentNumber:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #t:J
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendCallTimeToOtherDevice: no find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 724
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static sendIncomingVT(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 4
    .parameter "bluetoothHeadset"

    .prologue
    .line 662
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 663
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 664
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    .line 665
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    :cond_0
    const-string v2, "R_VT"

    invoke-static {p0, v2, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    .line 669
    :cond_1
    return-void
.end method

.method public static sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "bluetoothHeadset"
    .parameter "command"
    .parameter "c"

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 761
    .local v0, number:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 762
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 765
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public static sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "bluetoothHeadset"
    .parameter "command"
    .parameter "extra"

    .prologue
    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendSecBluetoothATCommand: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 781
    const-string v7, "sec_bt_at_command"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 782
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 783
    .local v1, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 784
    .local v0, aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const/4 v2, 0x0

    .line 786
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 789
    .local v3, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 790
    .local v4, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 791
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 792
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, type:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnectedBTWithWatch type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, message:Ljava/lang/String;
    const/16 v7, 0xb

    invoke-virtual {p0, v2, v7, v5}, Landroid/bluetooth/BluetoothHeadset;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    goto :goto_0

    .line 800
    .end local v0           #aBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    .end local v1           #app:Lcom/android/phone/PhoneGlobals;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setFolderStatusToAudio(Z)V
    .locals 3
    .parameter "open"

    .prologue
    .line 607
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 608
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p0, :cond_0

    .line 609
    const-string v1, "folder_open=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v1, "folder_open=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shouldAcceptByTapping()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 137
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answering_accessibility_tapping"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 140
    .local v1, isOn:Z
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    const/4 v2, 0x1

    .line 143
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldAcceptByTapping is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 145
    return v2
.end method

.method public static shouldHideSNS()Z
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, result:Z
    const-string v1, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->hasRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 186
    :cond_0
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v0, 0x1

    .line 191
    :cond_1
    return v0
.end method

.method public static startMySoundDirectionListening(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 426
    const-string v0, "startCallPose"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 428
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-nez v0, :cond_0

    .line 433
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 434
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 435
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 436
    sput-boolean v3, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    .line 438
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static startPutDownListening(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 384
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v3, "startPutDownListening"

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 390
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 391
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    .line 392
    .local v1, bthf:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    .line 394
    .local v2, isSpeakerON:Z
    sget-boolean v3, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    if-nez v3, :cond_0

    .line 395
    const-string v3, "scontext"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextManager;

    sput-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 396
    sget-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 400
    sget-object v3, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v4, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 401
    sput-boolean v6, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    goto :goto_0

    .line 403
    :cond_2
    const-string v3, "getting sSContextManager failed"

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stopMySoundDirectionListening(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 444
    const-string v0, "stopCallPose"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 446
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-ne v0, v1, :cond_0

    .line 451
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 452
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 453
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 454
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    .line 456
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stopPutDownListening(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 409
    invoke-static {p0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v0, "stopPutDownListening"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    .line 414
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    if-ne v0, v1, :cond_0

    .line 415
    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 416
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 417
    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 418
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsPutDownListening:Z

    goto :goto_0

    .line 420
    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
