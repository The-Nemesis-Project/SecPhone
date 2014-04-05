.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;,
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;,
        Lcom/android/phone/CallNotifier$MissedCallRunnable;,
        Lcom/android/phone/CallNotifier$MagazineCardRunnable;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$UpgradeTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field public static isChangeSimSlot:Z

.field public static isForRingtoneWhenEndCall:Z

.field private static mSharedContentsPath:Ljava/lang/String;

.field private static mSimId:I

.field public static prevSIMslot:I

.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sInstance:Lcom/android/phone/CallNotifier;

.field private static sInstances:[Lcom/android/phone/CallNotifier;

.field private static sPendingIntent:Landroid/app/PendingIntent;


# instance fields
.field private final CALLLOG_UPDATE_DELAY:I

.field private LOG_TAG:Ljava/lang/String;

.field private SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

.field private SWITCHED_CALL_SERVICE_TYPE:I

.field private bDuringSRVCC:Z

.field private beforeCallDuration:J

.field defaultPreferences:Landroid/content/SharedPreferences;

.field filter:Landroid/content/IntentFilter;

.field private isBlocked:Z

.field private isRingerStartedRinging:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnsweringMemo:Z

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallAirMotion:Lcom/android/phone/CallAirMotion;

.field private mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingToneCount:I

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCdmaVoicePrivacyState:Z

.field private mCurTID:I

.field private mCurrentEmergencyToneState:I

.field private mDisconnectSendUri:Landroid/net/Uri;

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mGoToSleepMode:Z

.field private mImsCall:Lcom/android/internal/telephony/Call;

.field private mImsPhone:Lcom/android/internal/telephony/Phone;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsAccessControlRejectedCall:Z

.field private mIsAutoRejectedCall:Z

.field private mIsAutoRejectedCallQuery:Z

.field public mIsCDMACallWaitingAutoRejectedCall:Z

.field public mIsCDMACallWaitingDormantRejectedCall:Z

.field private mIsCdmaRedialCall:Z

.field public mIsDormantRejectedCall:Z

.field private mIsEmergencyToneOn:I

.field private mIsFirstSwitched:Z

.field private mIsGsmRedialCall:Z

.field private mIsSignalInfoToneGenerator:Z

.field private mIsSwitchedLog:Z

.field private mLastCallNumber:Ljava/lang/String;

.field private mLastCardId:I

.field mLineCtrlCreateTime:J

.field mLineCtrlSavedDurationTime:J

.field private mNeedRestorePreviousSimID:Z

.field private mOtherPhone:Lcom/android/internal/telephony/Phone;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhotoUri:Ljava/lang/String;

.field public mPrevUserMode:I

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousSimID:I

.field private mRedialCallCount:I

.field mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mRedialProgressDialog:Landroid/app/ProgressDialog;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSignalInfoToneRequest:Z

.field private mSilentRingerRequested:Z

.field private mSstreamRun:Z

.field private mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

.field private mVoicePrivacyState:Z

.field myTask:Ljava/util/TimerTask;

.field nIncoming:I

.field private nSimNumber:I

.field private provisioned:Z

.field private saveDuration:J

.field private savedBaseLogForConf:Z

.field private serviceType:I

.field private storyItem:Lsstream/lib/objs/StoryItem;

.field timer:Ljava/util/Timer;

.field private ussdHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    sput-object v3, Lcom/android/phone/CallNotifier;->sAlarmManager:Landroid/app/AlarmManager;

    .line 184
    sput-object v3, Lcom/android/phone/CallNotifier;->sPendingIntent:Landroid/app/PendingIntent;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/CallNotifier;

    aput-object v3, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    .line 214
    sput-boolean v2, Lcom/android/phone/CallNotifier;->isForRingtoneWhenEndCall:Z

    .line 374
    sput-boolean v2, Lcom/android/phone/CallNotifier;->isChangeSimSlot:Z

    .line 375
    sput v2, Lcom/android/phone/CallNotifier;->prevSIMslot:I

    .line 417
    sput-object v3, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    .line 436
    sput v2, Lcom/android/phone/CallNotifier;->mSimId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 600
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 175
    const-string v0, "CallNotifier"

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    .line 241
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 329
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 336
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 337
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 338
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 342
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 346
    iput v3, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 355
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 356
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 357
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z

    .line 358
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 359
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 360
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 361
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 363
    iput v3, p0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    .line 377
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    .line 378
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->saveDuration:J

    .line 379
    iput v3, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 380
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    .line 381
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsFirstSwitched:Z

    .line 382
    const-string v0, "content://logs/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mDisconnectSendUri:Landroid/net/Uri;

    .line 384
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

    .line 385
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_SERVICE_TYPE:I

    .line 389
    iput v3, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    .line 400
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 403
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 404
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 411
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 412
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 415
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 419
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 420
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 422
    const/16 v0, 0x62

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    .line 423
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 425
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 429
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    .line 432
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsSignalInfoToneGenerator:Z

    .line 438
    iput v3, p0, Lcom/android/phone/CallNotifier;->mPreviousSimID:I

    .line 440
    iput v3, p0, Lcom/android/phone/CallNotifier;->mLastCardId:I

    .line 442
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mNeedRestorePreviousSimID:Z

    .line 446
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mAnsweringMemo:Z

    .line 449
    new-instance v0, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    .line 1169
    new-instance v0, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4482
    new-instance v0, Lcom/android/phone/CallNotifier$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$6;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 4555
    new-instance v0, Lcom/android/phone/CallNotifier$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$7;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 5914
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/CallNotifier;->CALLLOG_UPDATE_DELAY:I

    .line 6234
    new-instance v0, Lcom/android/phone/CallNotifier$8;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$8;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7306
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    .line 7677
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    .line 602
    if-nez p2, :cond_5

    .line 603
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 607
    :goto_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_6

    .line 609
    const-string v0, "CallNotifier1"

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    .line 610
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    .line 617
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 618
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 619
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 620
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 621
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 623
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 630
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 632
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 633
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_2

    .line 635
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 642
    :cond_2
    if-nez p3, :cond_8

    .line 643
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 649
    :goto_3
    const-string v1, "not_listen_mwi_cfi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 650
    const/16 v1, 0xc

    .line 652
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 653
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 658
    :cond_3
    :goto_4
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    .line 660
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 661
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_a

    .line 662
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    .line 672
    :cond_4
    iput v3, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 673
    return-void

    .line 605
    :cond_5
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 612
    :cond_6
    const-string v0, "CallNotifier2"

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    .line 613
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    .line 626
    :cond_7
    if-nez p3, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    goto/16 :goto_2

    .line 646
    :cond_8
    const-string v0, "phone2"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 655
    :cond_9
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_4

    .line 664
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER_2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_5

    .line 666
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xc

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 528
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 175
    const-string v0, "CallNotifier"

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    .line 241
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 329
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 336
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 337
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 338
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 342
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 346
    iput v2, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 355
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 356
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 360
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 361
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 363
    iput v2, p0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    .line 377
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    .line 378
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->saveDuration:J

    .line 379
    iput v2, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 380
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    .line 381
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsFirstSwitched:Z

    .line 382
    const-string v0, "content://logs/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mDisconnectSendUri:Landroid/net/Uri;

    .line 384
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

    .line 385
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_SERVICE_TYPE:I

    .line 389
    iput v2, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    .line 400
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 403
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 404
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 411
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 412
    iput-wide v5, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 415
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 419
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 420
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 422
    const/16 v0, 0x62

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    .line 423
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 425
    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 429
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    .line 432
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsSignalInfoToneGenerator:Z

    .line 438
    iput v2, p0, Lcom/android/phone/CallNotifier;->mPreviousSimID:I

    .line 440
    iput v2, p0, Lcom/android/phone/CallNotifier;->mLastCardId:I

    .line 442
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mNeedRestorePreviousSimID:Z

    .line 446
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mAnsweringMemo:Z

    .line 449
    new-instance v0, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    .line 1169
    new-instance v0, Lcom/android/phone/CallNotifier$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4482
    new-instance v0, Lcom/android/phone/CallNotifier$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$6;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 4555
    new-instance v0, Lcom/android/phone/CallNotifier$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$7;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 5914
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/phone/CallNotifier;->CALLLOG_UPDATE_DELAY:I

    .line 6234
    new-instance v0, Lcom/android/phone/CallNotifier$8;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$8;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7306
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    .line 7677
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    .line 529
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 530
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 531
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 532
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 533
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 535
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 537
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 539
    new-instance v0, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    .line 541
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 542
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 549
    :cond_0
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v3, v0, [Landroid/telephony/MultiSimTelephonyManager;

    move v1, v2

    .line 552
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_7

    .line 553
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 555
    const-string v0, "phone"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MultiSimTelephonyManager;

    aput-object v0, v3, v1

    .line 559
    :goto_1
    const-string v0, "not_listen_mwi_cfi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    aget-object v0, v3, v1

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v7}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 586
    :cond_1
    :goto_2
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    .line 588
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    .line 592
    :cond_2
    iput v2, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 593
    return-void

    .line 552
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 566
    :cond_4
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 569
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 570
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier CallNotifier: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 574
    :cond_5
    const-string v1, "not_listen_mwi_cfi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 578
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 579
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-static {p1, v0, v1, v7}, Lcom/android/phone/PhoneUtilsDsds;->listenDs(Lcom/android/phone/PhoneGlobals;ILandroid/telephony/PhoneStateListener;I)Z

    goto :goto_2

    .line 581
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_1
.end method

.method private AutoRedial(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 4499
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4500
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 4501
    iput v4, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 4539
    :cond_0
    :goto_0
    return-void

    .line 4504
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 4505
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f090187

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4506
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 4507
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 4508
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4509
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4510
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4511
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4512
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4513
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4514
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 4518
    :cond_2
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4519
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 4520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4527
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/high16 v2, 0x800

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4529
    if-ne p1, v6, :cond_5

    .line 4530
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4531
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 4522
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4524
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4532
    :cond_5
    if-lt p1, v5, :cond_6

    const/4 v0, 0x4

    if-gt p1, v0, :cond_6

    .line 4533
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4534
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 4535
    :cond_6
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 4536
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4537
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method

.method private SetDualStandbyCallStatusOrig(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7231
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7232
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7234
    const-string v2, "SetDualStandbyCallStatus"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7237
    const/16 v2, 0x11

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7238
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7239
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 7241
    if-ne p2, v3, :cond_0

    .line 7242
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7250
    :goto_0
    if-nez p1, :cond_1

    .line 7251
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "!!!SetDualStandbyCallStatus - CDMA"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7252
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 7257
    :goto_1
    return-void

    .line 7244
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7246
    :catch_0
    move-exception v1

    .line 7247
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IOException in SetDualStandbyCallStatus for dual call"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7254
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "!!!SetDualStandbyCallStatus - GSM"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7255
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallNotifier;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallNotifier;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurTID:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsSignalInfoToneGenerator:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/phone/CallNotifier;->mLastCardId:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/CallAirMotion;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/phone/CallNotifier;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/phone/CallNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-static {p0}, Lcom/android/phone/CallNotifier;->getSstreamDefaultCallerPhotoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/phone/CallNotifier;)Lsstream/lib/objs/StoryItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/CallNotifier;Lsstream/lib/objs/StoryItem;)Lsstream/lib/objs/StoryItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method private createSignalInfoToneGenerator()V
    .locals 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 682
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 684
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallNotifier: mSignalInfoToneGenerator created when toneplay"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 689
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSignalInfoToneGenerator created already, hence skipping"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 6379
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6380
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6381
    :cond_0
    return-void
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 9
    .parameter "call"

    .prologue
    .line 7037
    const-wide/16 v3, 0x0

    .line 7038
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 7039
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 7042
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 7043
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 7046
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 7076
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v3

    .line 7048
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 7049
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 7052
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 7053
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    .line 7054
    move-wide v3, v6

    .line 7048
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private getCshInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6370
    sget-object v0, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableMagazineCard()Z
    .locals 3

    .prologue
    .line 7735
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "magazinecardservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardManager;

    invoke-virtual {v1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isServiceEnabled()Z

    move-result v0

    .line 7736
    .local v0, enableMagazinecard:Z
    if-eqz v0, :cond_0

    .line 7737
    const/4 v1, 0x1

    .line 7739
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneNumbers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 6316
    if-nez p1, :cond_0

    .line 6317
    const/4 v0, 0x0

    .line 6320
    :goto_0
    return-object v0

    .line 6319
    :cond_0
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 4
    .parameter "sub"

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneStateListener: SUBSCRIPTION == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v0, Lcom/android/phone/CallNotifier$5;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallNotifier$5;-><init>(Lcom/android/phone/CallNotifier;I)V

    .line 1195
    .local v0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private static getSstreamDefaultCallerPhotoUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7567
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 7568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mux_per_default_bg_05.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7570
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7572
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7576
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 7579
    :try_start_0
    const-string v3, "mux_per_default_bg_05.jpg"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    .line 7581
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/files/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7583
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7584
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7585
    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 7586
    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 7589
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 7592
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 7595
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    .line 7596
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 7598
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 7599
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 7601
    if-eqz v2, :cond_2

    .line 7603
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7609
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 7611
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 7612
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 7621
    :cond_3
    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7622
    invoke-virtual {v0, v7, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 7623
    invoke-virtual {v0, v7, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 7626
    :cond_4
    return-object v4

    .line 7601
    :cond_5
    if-eqz v3, :cond_6

    .line 7603
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 7609
    :cond_6
    :goto_4
    if-eqz v2, :cond_3

    .line 7611
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 7612
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 7613
    :catch_1
    move-exception v0

    .line 7614
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 7604
    :catch_2
    move-exception v0

    .line 7605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 7604
    :catch_3
    move-exception v0

    .line 7605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 7613
    :catch_4
    move-exception v0

    .line 7614
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 7601
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    if-eqz v3, :cond_7

    .line 7603
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 7609
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 7611
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 7612
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 7616
    :cond_8
    :goto_7
    throw v0

    .line 7604
    :catch_5
    move-exception v2

    .line 7605
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 7613
    :catch_6
    move-exception v1

    .line 7614
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 7601
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 7598
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private handleMessageForSRVCC(Landroid/os/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7308
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 7309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessageForSRVCC] Phone state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7311
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 7312
    const-string v1, "IMS_PHONE_SRVCC_HANDOVER"

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7313
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    .line 7326
    :goto_0
    return v0

    .line 7317
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7318
    const-string v1, "handleMessage This is not CS Call State - return"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7321
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    if-eqz v0, :cond_2

    .line 7322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onSrvccHandOverSuccess(Landroid/os/AsyncResult;)V

    .line 7323
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    :cond_2
    move v0, v1

    .line 7326
    goto :goto_0
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1707
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    :goto_0
    return v1

    .line 1715
    :cond_1
    const-string v0, "restricted_call_for_qc_issue"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1716
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    if-ne v0, v1, :cond_2

    .line 1717
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CallNotifier: reject incoming call: for qualcomm issue"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1718
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->hasRestrictedCallMessageForQC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    sput-boolean v2, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    goto :goto_0

    .line 1728
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1729
    const-string v0, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move v1, v2

    .line 1730
    goto :goto_0

    .line 1734
    :cond_3
    const-string v0, "ram"

    const-string v3, "encryption.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1736
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CallNotifier: rejecting incoming call: RAM mode for device encryption"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1741
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 1744
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    if-nez v0, :cond_5

    .line 1745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1748
    if-nez v0, :cond_5

    .line 1751
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SetupWizard is disabled, setting device provisioned value to non-zero..."

    invoke-static {v0, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1754
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 1758
    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->provisioned:Z

    if-nez v0, :cond_7

    .line 1759
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ignoring incoming call: not provisioned"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1741
    goto :goto_1

    .line 1764
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1765
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 1767
    :goto_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_9

    move v3, v1

    .line 1769
    :goto_3
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1771
    if-eqz v4, :cond_a

    .line 1772
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ignoring incoming call: OTA call is active"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1765
    goto :goto_2

    :cond_9
    move v3, v2

    .line 1767
    goto :goto_3

    .line 1774
    :cond_a
    if-nez v0, :cond_b

    if-eqz v3, :cond_d

    .line 1779
    :cond_b
    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->dismissOtaDialogs()V

    .line 1780
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    .line 1781
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->clearInCallScreenMode()V

    move v1, v2

    .line 1782
    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 1787
    goto/16 :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 490
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 495
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 493
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;[Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)[Lcom/android/phone/CallNotifier;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 502
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 503
    :try_start_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 505
    sget-object v2, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 506
    sget-object v2, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    new-instance v3, Lcom/android/phone/CallNotifier;

    aget-object v4, p1, v0

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    aput-object v3, v2, v0

    .line 504
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() called multiple times!  sInstance["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 511
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 512
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/phone/CallNotifier;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    aput-object v3, v0, v2

    .line 513
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 517
    :goto_2
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    .line 518
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/phone/CallNotifier;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-direct {v3, p0, v4, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    aput-object v3, v0, v2

    .line 523
    :cond_2
    :goto_3
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 515
    :cond_3
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstances[PhoneGlobals.SIM_SLOT_1] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    .line 520
    :cond_4
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstances[PhoneGlobals.SIM_SLOT_2] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstances:[Lcom/android/phone/CallNotifier;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private insertCallLog(Lcom/android/internal/telephony/Connection;)V
    .locals 24
    .parameter

    .prologue
    .line 4372
    const/4 v3, 0x0

    .line 4373
    const/4 v2, 0x0

    .line 4375
    if-eqz p1, :cond_15

    .line 4376
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 4377
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v3

    .line 4380
    :goto_0
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 4381
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 4382
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 4383
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 4384
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 4385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v13, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v15

    .line 4390
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4393
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_a

    .line 4395
    :cond_0
    const-string v2, "dcm_not_support_extra_calllog_type"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4396
    const/4 v2, 0x3

    :goto_1
    move v6, v2

    .line 4408
    :goto_2
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 4412
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4413
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    add-long/2addr v2, v9

    .line 4414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===TAN===,  onDisconnect: mLineCtrlSavedDurationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: mLineCtrlCreateTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4418
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_d

    .line 4419
    const-string v4, "call_out_duration"

    const-wide/16 v16, 0x3e8

    div-long v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4420
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 4423
    :goto_3
    const-string v2, "simnum"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4425
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->isBlocked:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 4426
    const-string v2, "reject_flag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4431
    :cond_1
    :goto_4
    const/16 v18, 0x0

    .line 4432
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4433
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    if-nez v2, :cond_f

    .line 4434
    const/16 v18, 0x1

    .line 4439
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 4440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 4443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 4445
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v2, :cond_3

    .line 4447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v2, :cond_3

    .line 4448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v2}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$900(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 4456
    :cond_3
    const-string v2, "emergency_calllog_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_10

    const/4 v2, 0x0

    .line 4462
    :goto_6
    invoke-static {v14}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v14, v13}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    invoke-static {v13}, Lcom/android/phone/OtaUtils;->isUsCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_5
    const/4 v13, 0x1

    .line 4467
    :goto_7
    if-eqz v15, :cond_6

    if-eqz v2, :cond_12

    :cond_6
    if-nez v13, :cond_12

    const/4 v2, 0x1

    .line 4471
    :goto_8
    if-eqz v2, :cond_7

    .line 4472
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V

    .line 4480
    :cond_7
    :goto_9
    return-void

    .line 4398
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->isBlocked:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x6

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x5

    goto/16 :goto_1

    .line 4401
    :cond_a
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 4405
    :cond_c
    const/4 v6, 0x2

    goto/16 :goto_2

    .line 4422
    :cond_d
    const-string v2, "call_out_duration"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 4428
    :cond_e
    const-string v2, "reject_flag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 4436
    :cond_f
    const/16 v18, 0x2

    goto/16 :goto_5

    .line 4456
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f0c000b

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto :goto_6

    .line 4462
    :cond_11
    const/4 v13, 0x0

    goto :goto_7

    .line 4467
    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 4474
    :cond_13
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    invoke-virtual/range {v13 .. v23}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    goto :goto_9

    .line 4477
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v11, v12

    invoke-virtual/range {v2 .. v11}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    goto :goto_9

    :cond_15
    move-object v13, v2

    move-object v2, v3

    goto/16 :goto_0
.end method

.method private is2GNetwork()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7284
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 7285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently connected netwokr Tech. type is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7287
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 7294
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBlockCallList(Lcom/android/internal/telephony/Connection;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2860
    .line 2861
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 2862
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whiteListmode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2865
    if-nez v0, :cond_0

    move v0, v6

    .line 2911
    :goto_0
    return v0

    .line 2869
    :cond_0
    const-string v1, "All contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2870
    const-string v0, "all"

    .line 2877
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 2878
    const-string v0, "whiteListmode is null"

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    move v0, v6

    .line 2911
    goto :goto_0

    .line 2871
    :cond_3
    const-string v1, "All favourite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2872
    const-string v0, "favorite"

    goto :goto_1

    .line 2873
    :cond_4
    const-string v1, "Custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2874
    const-string v0, "custom"

    goto :goto_1

    .line 2879
    :cond_5
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v7

    .line 2880
    goto :goto_0

    .line 2883
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2886
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "dormant"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2891
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2893
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2894
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur.getCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2896
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2897
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2898
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2908
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v7

    goto/16 :goto_0

    .line 2904
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2905
    :goto_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dormantmode Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2908
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2904
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private isCDMAStandardSignal(III)Z
    .locals 3
    .parameter "SignalType"
    .parameter "AlertPitch"
    .parameter "Signal"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 7180
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    if-ne p3, v0, :cond_0

    .line 7184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVTFallBackCondtion(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z
    .locals 1
    .parameter

    .prologue
    .line 7298
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6375
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 6384
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 6385
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5611
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5612
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5614
    const-string v2, "ctc_vip_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5615
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 5616
    if-eqz v1, :cond_3

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->isVipModeReject(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5618
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isBlocked:Z

    .line 5619
    const-string v0, "waiting isVipModeReject true"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5621
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5623
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 5625
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_1

    .line 5626
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5632
    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 5633
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->insertCallLog(Lcom/android/internal/telephony/Connection;)V

    .line 5724
    :cond_0
    :goto_1
    return-void

    .line 5628
    :cond_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v0, v2, :cond_2

    .line 5629
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 5631
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    goto :goto_0

    .line 5641
    :cond_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5642
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CallNotifier: rejecting onCdmaCallWaiting call: auto reject call"

    invoke-static {v0, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5646
    const-string v0, "change_hangup_ipc_in_auto_reject"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5647
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 5651
    :goto_2
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 5652
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 5653
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto :goto_1

    .line 5649
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 5658
    :cond_5
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5659
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isDormantOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5660
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->isBlockCallList(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5661
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 5662
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 5669
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 5670
    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 5672
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5673
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_8

    .line 5674
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 5675
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    .line 5681
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 5686
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5687
    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5688
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 5689
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5690
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivityForce()V

    .line 5694
    :cond_9
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 5695
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 5699
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v3}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 5702
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 5706
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 5707
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 5708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5709
    if-ne v1, v4, :cond_0

    .line 5710
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 5711
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 5712
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 5713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5716
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 5719
    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/CallNotifier;->isCDMAStandardSignal(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5721
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_1
.end method

.method private onCfiChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4710
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cdma_call_forwarding_indicator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4712
    const-string v0, "return onCfiChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4731
    :cond_0
    :goto_0
    return-void

    .line 4716
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "feature_chn_dual_mode_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4718
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4720
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4721
    const-string v0, "persist.radio.calldefault.simid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4722
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    goto :goto_0

    .line 4723
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4725
    const-string v0, "persist.radio.calldefault.simid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4726
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    goto :goto_0

    .line 4728
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_0
.end method

.method private onConferenceDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "conn"

    .prologue
    .line 7653
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 7654
    .local v1, state:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnectConfCall: current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7655
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 7656
    .local v0, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    if-eqz v0, :cond_0

    .line 7657
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    .line 7658
    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 7659
    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->setLastLog()V

    .line 7660
    invoke-virtual {v0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V

    .line 7663
    :cond_0
    return-void
.end method

.method private onConferenceStateChanged()V
    .locals 5

    .prologue
    .line 7630
    const/4 v0, 0x0

    .line 7631
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    .line 7632
    .local v1, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 7634
    .local v2, validcall:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    .line 7635
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7637
    :cond_0
    if-eqz v0, :cond_2

    .line 7638
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    .line 7639
    iget-boolean v3, v1, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    if-nez v3, :cond_1

    .line 7640
    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->showConnectedToast()V

    .line 7641
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    .line 7646
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->saveBaseLogForConf(Lcom/android/internal/telephony/Connection;)V

    .line 7647
    invoke-virtual {v1, v0}, Lcom/android/phone/IMSConferenceCallMgr;->update(Lcom/android/internal/telephony/Connection;)V

    .line 7649
    :cond_2
    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->setLastLog()V

    .line 7650
    return-void

    .line 7644
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    goto :goto_0
.end method

.method private onCustomRingQueryComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1915
    .line 1916
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1917
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v0, v1, :cond_8

    .line 1918
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v1

    .line 1921
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 1923
    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const v0, 0x112a0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1943
    :cond_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1944
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1948
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    .line 1949
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1986
    :goto_2
    return-void

    .line 1921
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    goto :goto_1

    .line 1956
    :cond_2
    const-string v0, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1957
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1959
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_4

    .line 1961
    const-string v0, "Stop other phone\'s ringer..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1962
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1963
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_3

    .line 1964
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 1984
    :cond_3
    :goto_3
    const-string v0, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1985
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_2

    .line 1965
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_5

    .line 1967
    const-string v0, "other phone is waiting state..so don\'t ring& don\'t play waiting tone ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1968
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_6

    .line 1970
    const-string v0, "other phone is OFFHOOK state..so don\'t ring&play waiting tone ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1971
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->duosPlayWaitingTone()V

    goto :goto_3

    .line 1974
    :cond_6
    const-string v0, "ring mRinger..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1975
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_3

    .line 1976
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_3

    .line 1979
    :cond_7
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_3

    .line 1980
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 3095
    if-eqz v0, :cond_5

    .line 3096
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_1

    .line 3097
    const-string v0, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3098
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3131
    :goto_0
    return-void

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3106
    :cond_1
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3112
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_4

    .line 3113
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 3114
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3130
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 3116
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 3119
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 3127
    :cond_5
    const-string v0, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 35
    .parameter

    .prologue
    .line 3260
    const-string v2, "minute_minder_noti"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3261
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 3262
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3264
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 3265
    const-string v2, "Run minute_minder_noti in CallNotifier !! "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->cancelTimer()V

    .line 3268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->stopMinuteMinderAlarm()V

    .line 3272
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect()...  CallManager state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3274
    const-string v2, "single_lte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3275
    const-string v2, "ril.ims.pre_regstate"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    :cond_1
    const-string v2, "feature_srvcc_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    if-eqz v2, :cond_2

    .line 3279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->bDuringSRVCC:Z

    .line 3282
    :cond_2
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3283
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopCallHoldTone()V

    .line 3289
    :cond_3
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    move-object v3, v2

    .line 3295
    :goto_0
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_15

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 3302
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 3303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 3304
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v2

    check-cast v26, Lcom/android/internal/telephony/Connection;

    .line 3305
    if-eqz v26, :cond_1b

    .line 3306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect: cause = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", incoming = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", date = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v2

    .line 3315
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v4, "DISC"

    move-object/from16 v0, v26

    invoke-static {v2, v4, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    .line 3319
    :cond_4
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3320
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_18

    .line 3321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v4, "!!!onDisconnect - CDMA"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    .line 3342
    :cond_5
    :goto_3
    const-string v2, "write_call_state"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3346
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->writeCallState(Z)V

    .line 3348
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    if-eqz v2, :cond_7

    .line 3350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v2, :cond_1c

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 3352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 3353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Go back to previous mode mPrevUserMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3354
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 3355
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    .line 3358
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "voicemail=off"

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3361
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3362
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    .line 3363
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setSendDtmf(Z)V

    .line 3364
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 3365
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 3369
    :cond_8
    const-string v2, "visual_expression"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3370
    const-string v2, "- onDisconnect: VE: HANDLE_MSG_STOP_PLAY"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3371
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 3372
    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11ec

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3375
    :cond_9
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3376
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneGlobals;->setNSRISecureCall(Z)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "svr=off"

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3380
    :cond_a
    const-string v2, "support_incomingcall_popup_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3381
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->stopIncomingPopupService()V

    .line 3385
    :cond_b
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    .line 3387
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    .line 3388
    if-eqz v2, :cond_e

    .line 3389
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v2

    .line 3390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3391
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v6, :cond_e

    .line 3392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3394
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopGuidance()V

    .line 3395
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnsweringMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3396
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->setAutoAnsweringMode(Lcom/android/phone/PhoneGlobals;Z)V

    .line 3397
    :cond_c
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v4

    .line 3398
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3399
    invoke-virtual {v4}, Lcom/android/phone/AnsweringMemoRecorder;->stopRecord()V

    .line 3400
    invoke-virtual {v2}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 3402
    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    .line 3409
    :cond_e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sAutoAnswering:Z

    .line 3411
    const/4 v2, 0x0

    .line 3412
    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3413
    if-eqz v26, :cond_f

    .line 3414
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v4

    .line 3415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SipErrorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3416
    const/16 v5, 0x17c

    if-ne v4, v5, :cond_f

    .line 3417
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    .line 3418
    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    .line 3419
    :goto_5
    if-eqz v4, :cond_f

    .line 3420
    const/4 v2, 0x1

    .line 3425
    :cond_f
    const-string v4, "ps_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 3426
    sget-boolean v4, Lcom/android/phone/PhoneUtilsIms;->mPSBarredSilentRedial:Z

    if-eqz v4, :cond_bc

    .line 3427
    const/4 v2, 0x1

    move v4, v2

    .line 3430
    :goto_6
    const-string v2, "support_incomingcall_multi_window"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3431
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mTurnOnSpeaker:Z

    .line 3434
    :cond_10
    const/4 v5, 0x0

    .line 3435
    const/4 v2, 0x0

    .line 3437
    if-eqz v26, :cond_bb

    .line 3438
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    .line 3439
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 3442
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "119"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3443
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3444
    const-string v6, "ril.skt119Cat"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    :cond_11
    :goto_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 3452
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getIsAutoRejectedCall()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v3, "call_end_vib"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3456
    :cond_12
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    if-eqz v2, :cond_1f

    .line 3457
    const-string v2, "- onDisconnect: This is Incomming Video call disconnect so calling continueDisconnectionAfterVTStackCleanup "

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3458
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 3460
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 4369
    :cond_13
    :goto_8
    return-void

    .line 3292
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    .line 3296
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3299
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v2, :cond_17

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    .line 3324
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v4, "!!!onDisconnect - GSM"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    goto/16 :goto_3

    .line 3327
    :cond_19
    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3328
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 3329
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_1a

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_5

    .line 3331
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mNeedRestorePreviousSimID:Z

    if-eqz v2, :cond_5

    .line 3332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mNeedRestorePreviousSimID:Z

    .line 3333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mPreviousSimID:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    goto/16 :goto_3

    .line 3338
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onDisconnect: null connection"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 3350
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 3418
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 3446
    :cond_1e
    const-string v6, "ril.skt119Cat"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3462
    :cond_1f
    const-string v2, "- onDisconnect: This is Video call disconnect so returning back."

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3467
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_20

    .line 3468
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    goto/16 :goto_8

    .line 3470
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v2, :cond_13

    .line 3471
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    goto/16 :goto_8

    :cond_21
    move-object/from16 v31, v2

    move-object/from16 v32, v5

    .line 3478
    :goto_a
    const/4 v2, 0x0

    .line 3479
    if-eqz v26, :cond_22

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "call_auto_retry"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3484
    :cond_22
    if-eqz v26, :cond_ba

    .line 3485
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_23

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_23

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_ba

    .line 3488
    :cond_23
    const-string v2, "autoredial_mode"

    .line 3489
    const-string v5, "feature_chn_duos_gsm_gsm"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    .line 3491
    const-string v2, "autoredial_mode_sim2"

    .line 3494
    :cond_24
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3495
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 3496
    const/4 v2, 0x1

    sput v2, Lcom/android/phone/CallNotifier;->mSimId:I

    .line 3497
    const-string v2, "autoredial_mode_sim2"

    .line 3500
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move/from16 v27, v2

    .line 3504
    :goto_b
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_26

    .line 3507
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 3510
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_28

    .line 3516
    :cond_27
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 3520
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoretrySetting = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3521
    if-eqz v26, :cond_29

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_29

    .line 3523
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 3526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 3529
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3530
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3540
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 3541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v6, :cond_63

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v5, v2}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 3547
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    .line 3564
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 3565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    move-object v5, v2

    .line 3570
    :goto_d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_67

    .line 3571
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3574
    const-string v2, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 3615
    :cond_2b
    :goto_e
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 3618
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 3620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3625
    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v8

    .line 3626
    const/4 v7, 0x0

    .line 3627
    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isShowingWaitingCallDialog()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 3628
    const/4 v7, 0x1

    .line 3630
    :cond_2c
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_2f

    if-nez v7, :cond_2f

    .line 3634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3635
    const/4 v2, 0x0

    .line 3636
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 3638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last noise reduction : set= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "  set result ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3643
    :cond_2d
    const-string v2, "extra_volume"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3644
    const/4 v2, 0x0

    .line 3645
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 3647
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    .line 3648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last extra volume : set= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3659
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 3661
    const-string v6, "realcall=off"

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3667
    const-string v2, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3668
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 3674
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_30

    .line 3675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 3676
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 3677
    const-string v2, "custom_waiting_tone"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3678
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 3679
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3684
    :cond_30
    if-eqz v26, :cond_31

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3685
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3686
    const-string v2, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->handleOtaspDisconnect()V

    .line 3690
    :cond_31
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isHungUpInAnswerCall:Z

    .line 3694
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getIsAutoRejectedCall()Z

    move-result v2

    if-nez v2, :cond_32

    .line 3695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v5, "call_end_vib"

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3700
    :cond_32
    const/4 v2, 0x0

    .line 3702
    const/4 v5, 0x0

    .line 3703
    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 3704
    if-eqz v26, :cond_33

    .line 3705
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v6

    .line 3706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SipErrorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3707
    const/16 v7, 0x1e6

    if-ne v6, v7, :cond_33

    .line 3708
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v6

    .line 3709
    sget-object v7, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v6, v7, :cond_6a

    const/4 v6, 0x1

    .line 3710
    :goto_10
    if-eqz v6, :cond_33

    .line 3711
    const/4 v5, 0x1

    .line 3718
    :cond_33
    if-eqz v26, :cond_b9

    .line 3719
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v6, :cond_34

    if-eqz v5, :cond_6b

    .line 3720
    :cond_34
    const-string v2, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3721
    const/4 v2, 0x2

    move/from16 v30, v2

    .line 3760
    :goto_11
    const/4 v2, 0x0

    .line 3768
    if-nez v30, :cond_36

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_36

    if-nez v4, :cond_36

    if-eqz v26, :cond_36

    .line 3772
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_35

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_35

    invoke-static/range {v26 .. v26}, Lcom/android/phone/PhoneUtilsIms;->needToPlayEndToneForIMS(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3775
    :cond_35
    const-string v2, "- need to play CALL_ENDED tone!"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v2

    .line 3779
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 3780
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 3781
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 3785
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_77

    :cond_37
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static/range {v31 .. v31}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_77

    :cond_38
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_77

    if-eqz v26, :cond_77

    .line 3795
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_79

    .line 3796
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_78

    .line 3797
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRedialState : redialCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3798
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 3799
    const-string v5, "auto_redial_time_delay"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3800
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 3801
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->AutoRedial(I)V

    .line 3818
    :cond_39
    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsGsmRedialCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getIsAutoRejectedCall()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 3821
    const-string v5, "wake up screen"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3822
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 3823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    .line 3829
    :cond_3a
    :goto_13
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_3c

    .line 3832
    if-nez v30, :cond_3b

    if-nez v2, :cond_3b

    .line 3833
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 3835
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 3838
    :cond_3c
    if-eqz v26, :cond_62

    if-nez v4, :cond_62

    .line 3840
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 3841
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 3842
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 3843
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v33

    .line 3844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 3846
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 3847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget v3, Lcom/android/phone/CallNotifier;->mSimId:I

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    move/from16 v28, v2

    .line 3854
    :goto_14
    const/4 v5, 0x0

    .line 3855
    const/4 v4, 0x0

    .line 3858
    const/4 v3, 0x0

    .line 3860
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 3863
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 3864
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_7d

    .line 3865
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7c

    const/16 v2, 0xe

    :goto_15
    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    .line 3906
    :goto_16
    const-string v6, "common_volte_vt_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 3907
    sget-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mLowBatteryCheckForCallLog:Z

    if-eqz v6, :cond_3d

    .line 3908
    const/4 v5, 0x3

    .line 3909
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/phone/PhoneUtilsIms;->mLowBatteryCheckForCallLog:Z

    :cond_3d
    move/from16 v29, v3

    move v13, v4

    move v15, v2

    move v6, v5

    .line 3953
    :goto_17
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3954
    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3e

    .line 3955
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 3956
    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3973
    :cond_3e
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- callLogType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3975
    const/4 v12, 0x0

    .line 3977
    const-string v3, "ctc_call_time_duration"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3978
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_97

    .line 3979
    const-string v3, "call_out_duration"

    const-wide/16 v4, 0x3e8

    div-long v4, v9, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3995
    :goto_19
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    if-nez v3, :cond_99

    .line 3996
    const-string v3, "simnum"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4000
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    if-eqz v3, :cond_9a

    .line 4001
    const-string v3, "reject_flag"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4006
    :goto_1b
    const-string v3, "ctc_country_code_locator"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 4007
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->checkRoamingCondition(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 4008
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startCheckCurrentIddValue(I)Ljava/lang/String;

    move-result-object v3

    .line 4009
    const-string v4, "sdn_alpha_id"

    const-string v5, "True"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4010
    const-string v4, "real_phone_number"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    :cond_3f
    :goto_1c
    const/16 v17, 0x0

    .line 4020
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 4021
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v3

    if-nez v3, :cond_9c

    .line 4022
    const/16 v17, 0x1

    .line 4028
    :cond_40
    :goto_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 4029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v3}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v4

    .line 4031
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "usa_cdma_concept"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 4032
    :cond_41
    const-string v5, "P"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_b5

    .line 4033
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    .line 4036
    :goto_1e
    const-string v4, "- onDisconnect(): logNumber set to: xxxxxxx"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v3}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 4045
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_42

    .line 4046
    if-eqz v28, :cond_42

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v4, :cond_42

    .line 4048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v4, :cond_42

    .line 4049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$900(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 4054
    :cond_42
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v11, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 4055
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getCshInfo()Ljava/lang/String;

    move-result-object v12

    .line 4057
    if-eqz v12, :cond_43

    const-string v4, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 4058
    const-string v2, "content://logs/contents_shared"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4062
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    if-eqz v4, :cond_b4

    .line 4063
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 4064
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/phone/CallNotifier;->saveDuration:J

    .line 4065
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 4067
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mDisconnectSendUri:Landroid/net/Uri;

    move-object v11, v2

    .line 4075
    :goto_1f
    const-string v2, "emergency_calllog_disable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9d

    const/4 v2, 0x0

    .line 4081
    :goto_20
    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_45

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    :cond_45
    invoke-static/range {v31 .. v31}, Lcom/android/phone/OtaUtils;->isUsCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    :cond_46
    const/4 v4, 0x1

    .line 4086
    :goto_21
    if-eqz v28, :cond_47

    if-eqz v2, :cond_9f

    :cond_47
    if-nez v4, :cond_9f

    const/4 v2, 0x1

    .line 4090
    :goto_22
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4093
    const/16 v22, 0x0

    .line 4094
    const-string v14, "sec_product_feature_common_dsds_support"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 4095
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v22

    .line 4096
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->isOneSIMcardsInsertedInSlot2()Z

    move-result v14

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_48

    .line 4097
    const/16 v22, 0x1

    .line 4101
    :cond_48
    const/4 v14, 0x0

    .line 4102
    const-string v18, "feature_multisim"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_49

    .line 4103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v14

    .line 4104
    invoke-static {}, Lcom/android/phone/PhoneMultiSimUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_49

    .line 4105
    const/4 v14, 0x1

    .line 4109
    :cond_49
    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4a

    const-string v18, "feature_ktt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4c

    .line 4110
    :cond_4a
    sget v18, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v18

    if-eq v5, v0, :cond_4b

    sget v18, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_4c

    .line 4111
    :cond_4b
    if-eqz v3, :cond_4c

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 4114
    :cond_4c
    const-string v18, "feature_logs_kor"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a0

    .line 4120
    :goto_23
    sget-boolean v18, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhoneToOwner:Z

    if-eqz v18, :cond_4d

    .line 4121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 4135
    :cond_4d
    const-string v18, "feature_ktt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4e

    if-eqz v4, :cond_4e

    .line 4136
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 4137
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4142
    :cond_4e
    const-string v18, "ims_conference_call"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a1

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v18

    if-eqz v18, :cond_a1

    .line 4143
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 4144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V

    .line 4146
    :cond_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->onConferenceDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 4196
    :cond_50
    :goto_24
    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 4197
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v2

    .line 4198
    if-eqz v2, :cond_51

    .line 4199
    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_51

    .line 4200
    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 4205
    :cond_51
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    .line 4206
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/phone/CallNotifier;->saveDuration:J

    .line 4207
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 4208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    .line 4209
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsFirstSwitched:Z

    .line 4210
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    if-eqz v2, :cond_52

    .line 4211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    .line 4214
    :cond_52
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 4215
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 4216
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 4217
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhone:Z

    .line 4218
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhoneToOwner:Z

    .line 4220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 4223
    const/4 v2, 0x3

    if-eq v6, v2, :cond_53

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    const/16 v2, 0xe

    if-ne v6, v2, :cond_b0

    .line 4228
    :cond_53
    if-nez v29, :cond_55

    .line 4229
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 4230
    invoke-static {}, Lcom/android/phone/CallNotifier;->getEnableMagazineCard()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 4231
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7, v8}, Lcom/android/phone/CallNotifier;->showMagazineCardNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 4232
    :cond_54
    const-string v2, "sstream_voice_call_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 4233
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallSstream(Lcom/android/internal/telephony/Connection;J)V

    .line 4244
    :cond_55
    :goto_25
    if-eqz v30, :cond_56

    .line 4245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- starting post-disconnect tone ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4246
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v2, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 4258
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_59

    :cond_57
    if-nez v28, :cond_59

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_59

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_59

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_59

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_59

    .line 4265
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v2, :cond_b2

    .line 4266
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_b1

    .line 4269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 4270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4275
    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v33

    move-object/from16 v4, v31

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 4276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 4285
    :cond_59
    :goto_26
    const-string v2, "auto_redial_time_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 4286
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    .line 4287
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 4288
    if-eqz v2, :cond_5a

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5a

    .line 4289
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v3, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 4294
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4298
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v33

    move-object/from16 v4, v31

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 4304
    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5d

    .line 4305
    const-string v2, "- onDisconnect: mIsAutoRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 4308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "autorejection=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4309
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4311
    :cond_5d
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 4312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    .line 4313
    const-string v2, "- onDisconnect: mIsDormantRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "autorejection=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4315
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4319
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    .line 4320
    const-string v2, "- onDisconnect: mIsAccessControlRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 4322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "autorejection=on"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4323
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4326
    :cond_5f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->provisioned:Z

    if-nez v2, :cond_60

    .line 4327
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 4328
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 4331
    :cond_60
    const-string v2, "delay_hangup_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4332
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->resetStartCallTime()V

    .line 4338
    :cond_61
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_62

    .line 4339
    const-string v2, "cause is INCOMING_MISSED. updateWakeState()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 4345
    :cond_62
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4346
    const-string v2, "onDisconnect : LAST CALL"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4348
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 4349
    const/4 v3, 0x0

    const/16 v4, 0x16

    aput-byte v4, v2, v3

    .line 4350
    const/4 v3, 0x1

    const/16 v4, 0x40

    aput-byte v4, v2, v3

    .line 4351
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 4352
    const/4 v3, 0x3

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    .line 4355
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v3

    .line 4356
    if-eqz v3, :cond_b3

    .line 4357
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestRawToRIL([BLandroid/os/Message;)I

    .line 4358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect ITelephony service is available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_8

    .line 4362
    :catch_0
    move-exception v2

    .line 4363
    const-string v2, "onDisconnect ITelephony service remote exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3541
    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 3567
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_d

    .line 3577
    :cond_65
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3580
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3581
    const-string v2, "Start ring after the other network call was cleared cdma"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3582
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->isHungUpInAnswerCall:Z

    if-nez v2, :cond_2b

    .line 3583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    .line 3584
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v6, :cond_2b

    .line 3585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    if-eqz v2, :cond_66

    .line 3586
    const-string v2, "sendEmptyMessage to notifier"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 3589
    :cond_66
    const-string v2, "sendEmptyMessage to notifier2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier2:Lcom/android/phone/CallNotifier;

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 3597
    :cond_67
    const-string v2, "stopRing()... (onDisconnect)"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 3600
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3601
    const-string v2, "Start ring after the other network call was cleared gsm"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    .line 3603
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v6, :cond_2b

    .line 3604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    if-eqz v2, :cond_68

    .line 3605
    const-string v2, "sendEmptyMessage to notifier"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 3608
    :cond_68
    const-string v2, "sendEmptyMessage to notifier2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier2:Lcom/android/phone/CallNotifier;

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 3622
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 3623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto/16 :goto_f

    .line 3709
    :cond_6a
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 3722
    :cond_6b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_6c

    .line 3723
    const-string v2, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3724
    const/4 v2, 0x3

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3725
    :cond_6c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_6d

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_6e

    :cond_6d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 3728
    const-string v2, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3729
    const/16 v2, 0xb

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3730
    :cond_6e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_6f

    .line 3731
    const-string v2, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3732
    const/4 v2, 0x6

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3733
    :cond_6f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_70

    .line 3734
    const-string v2, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3735
    const/4 v2, 0x7

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3736
    :cond_70
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_71

    .line 3737
    const-string v2, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3738
    const/16 v2, 0x8

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3739
    :cond_71
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_72

    .line 3740
    const-string v2, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3741
    const/16 v2, 0x9

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3742
    :cond_72
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_73

    .line 3743
    const-string v2, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3744
    const/16 v2, 0xd

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3745
    :cond_73
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_74

    .line 3746
    const-string v2, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3747
    const/4 v2, 0x4

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3748
    :cond_74
    const-string v5, "waiting_call_end_tone"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 3749
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_b9

    .line 3750
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-eq v0, v5, :cond_75

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_b9

    .line 3752
    :cond_75
    const-string v2, "- need to play TONE_SECOND_CALL_END!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3753
    const/16 v2, 0x11

    move/from16 v30, v2

    goto/16 :goto_11

    .line 3785
    :cond_76
    invoke-static/range {v31 .. v31}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 3814
    :cond_77
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 3815
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_12

    .line 3805
    :cond_78
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 3806
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_12

    .line 3809
    :cond_79
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 3810
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_12

    .line 3825
    :cond_7a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    goto/16 :goto_13

    .line 3848
    :cond_7b
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 3849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v3

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_14

    .line 3865
    :cond_7c
    const/4 v2, 0x3

    goto/16 :goto_15

    .line 3867
    :cond_7d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_82

    .line 3868
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_7e

    .line 3869
    const/4 v2, 0x3

    .line 3870
    const/4 v4, 0x1

    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    goto/16 :goto_16

    .line 3871
    :cond_7e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7f

    .line 3872
    const/4 v2, 0x3

    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    goto/16 :goto_16

    .line 3874
    :cond_7f
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_80

    const/16 v2, 0xf

    :goto_27
    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    goto/16 :goto_16

    :cond_80
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v6, 0x1

    if-ne v2, v6, :cond_81

    const/4 v2, 0x6

    goto :goto_27

    :cond_81
    const/4 v2, 0x5

    goto :goto_27

    .line 3879
    :cond_82
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_83

    const/16 v2, 0xd

    :goto_28
    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    goto/16 :goto_16

    :cond_83
    const/4 v2, 0x1

    goto :goto_28

    .line 3883
    :cond_84
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_89

    .line 3884
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_85

    .line 3885
    const/4 v4, 0x3

    .line 3886
    const/4 v2, 0x1

    move/from16 v34, v3

    move v3, v2

    move/from16 v2, v34

    .line 3896
    :goto_29
    const-string v6, "feature_remind_me_later_support "

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 3897
    sget v6, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    if-lez v6, :cond_b7

    .line 3898
    const/4 v5, 0x1

    move/from16 v34, v2

    move v2, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v34

    goto/16 :goto_16

    .line 3887
    :cond_85
    const-string v2, "dcm_not_support_extra_calllog_type"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 3888
    const/4 v3, 0x3

    .line 3889
    const/4 v2, 0x1

    move/from16 v34, v4

    move v4, v3

    move/from16 v3, v34

    goto :goto_29

    .line 3890
    :cond_86
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    const/4 v6, 0x1

    if-ne v2, v6, :cond_87

    .line 3891
    const/4 v2, 0x3

    move/from16 v34, v3

    move v3, v4

    move v4, v2

    move/from16 v2, v34

    goto :goto_29

    .line 3893
    :cond_87
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v6, 0x1

    if-ne v2, v6, :cond_88

    const/4 v2, 0x6

    :goto_2a
    move/from16 v34, v3

    move v3, v4

    move v4, v2

    move/from16 v2, v34

    goto :goto_29

    :cond_88
    const/4 v2, 0x5

    goto :goto_2a

    .line 3902
    :cond_89
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_8a

    const/4 v2, 0x3

    :goto_2b
    move/from16 v34, v5

    move v5, v2

    move/from16 v2, v34

    goto/16 :goto_16

    :cond_8a
    const/4 v2, 0x1

    goto :goto_2b

    .line 3915
    :cond_8b
    const/4 v2, 0x2

    .line 3917
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8c

    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 3920
    :cond_8c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 3921
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v11, v0, v6}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v6

    .line 3922
    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->setSKTCallLogType(Ljava/lang/String;)V

    .line 3924
    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v6, :cond_8e

    .line 3925
    const/16 v2, 0x15

    :cond_8d
    :goto_2c
    move/from16 v29, v3

    move v13, v4

    move v15, v5

    move v6, v2

    .line 3933
    goto/16 :goto_17

    .line 3926
    :cond_8e
    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-eqz v6, :cond_8f

    .line 3927
    const/16 v2, 0x16

    goto :goto_2c

    .line 3928
    :cond_8f
    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhone:Z

    if-eqz v6, :cond_90

    .line 3929
    const/16 v2, 0x28

    goto :goto_2c

    .line 3930
    :cond_90
    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->mFindLostPhoneToOwner:Z

    if-eqz v6, :cond_8d

    .line 3931
    const/16 v2, 0x29

    goto :goto_2c

    .line 3933
    :cond_91
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 3934
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3937
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 3938
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3939
    const/16 v2, 0xb

    move/from16 v29, v3

    move v13, v4

    move v15, v5

    move v6, v2

    goto/16 :goto_17

    .line 3941
    :cond_92
    const/16 v2, 0xc

    move/from16 v29, v3

    move v13, v4

    move v15, v5

    move v6, v2

    goto/16 :goto_17

    .line 3944
    :cond_93
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isThrwayCall()Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 3945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v6, " - Outgoing Threeway Call : isThrwayCall() = true"

    invoke-static {v2, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const/16 v2, 0x32

    move/from16 v29, v3

    move v13, v4

    move v15, v5

    move v6, v2

    goto/16 :goto_17

    .line 3964
    :cond_94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_95

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isCallEndedAbnormally(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 3967
    :cond_95
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_18

    .line 3969
    :cond_96
    const-string v2, "content://logs/volte"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_18

    .line 3982
    :cond_97
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    add-long/2addr v3, v9

    .line 3983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDisconnect: mLineCtrlSavedDurationTime="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDisconnect: mLineCtrlCreateTime="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onDisconnect: duration="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3987
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    move-wide/from16 v16, v0

    cmp-long v5, v16, v7

    if-nez v5, :cond_98

    .line 3988
    const-string v5, "call_out_duration"

    const-wide/16 v16, 0x3e8

    div-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3989
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    goto/16 :goto_19

    .line 3992
    :cond_98
    const-string v3, "call_out_duration"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_19

    .line 3998
    :cond_99
    const-string v3, "simnum"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1a

    .line 4003
    :cond_9a
    const-string v3, "reject_flag"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1b

    .line 4012
    :cond_9b
    const-string v3, "sdn_alpha_id"

    const-string v4, "False"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4013
    const-string v3, "real_phone_number"

    const-string v4, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 4024
    :cond_9c
    const/16 v17, 0x2

    goto/16 :goto_1d

    .line 4075
    :cond_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto/16 :goto_20

    .line 4081
    :cond_9e
    const/4 v4, 0x0

    goto/16 :goto_21

    .line 4086
    :cond_9f
    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_a0
    move-object/from16 v4, v16

    .line 4117
    goto/16 :goto_23

    .line 4147
    :cond_a1
    const-string v18, "feature_lgt"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a3

    .line 4148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v2, 0x1

    .line 4150
    :goto_2d
    if-nez v2, :cond_50

    .line 4151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    move-object/from16 v4, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V

    .line 4152
    const-string v2, "EarlistConnection"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_24

    .line 4148
    :cond_a2
    const/4 v2, 0x0

    goto :goto_2d

    .line 4159
    :cond_a3
    if-eqz v2, :cond_50

    .line 4160
    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 4161
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 4162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move-object/from16 v23, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;ILandroid/net/Uri;)V

    goto/16 :goto_24

    .line 4164
    :cond_a4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move-object/from16 v22, v11

    invoke-virtual/range {v12 .. v22}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V

    goto/16 :goto_24

    .line 4165
    :cond_a5
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 4166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-object/from16 v22, v11

    invoke-virtual/range {v12 .. v22}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    goto/16 :goto_24

    .line 4167
    :cond_a6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v16, "CscFeature_IMS_EnableRCSe"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 4168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V

    .line 4169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->setCshInfo(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 4170
    :cond_a7
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a8

    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 4172
    :cond_a8
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 4173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move v12, v15

    move/from16 v14, v22

    invoke-virtual/range {v2 .. v14}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V

    .line 4181
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FEATURE_REMIND_ME_LATER_SUPPORT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4182
    sget v2, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    if-lez v2, :cond_a9

    if-lez v15, :cond_a9

    .line 4183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget v3, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-static {v2, v4, v3, v7, v8}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 4184
    :cond_a9
    const/4 v2, 0x0

    sput v2, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    goto/16 :goto_24

    .line 4174
    :cond_aa
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 4175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move v12, v15

    invoke-virtual/range {v2 .. v14}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V

    goto :goto_2e

    .line 4176
    :cond_ab
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

    if-ne v2, v12, :cond_ac

    .line 4177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/CallNotifier;->serviceType:I

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V

    goto :goto_2e

    .line 4179
    :cond_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move v12, v15

    invoke-virtual/range {v2 .. v13}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V

    goto :goto_2e

    .line 4187
    :cond_ad
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 4188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-object/from16 v23, v11

    invoke-virtual/range {v13 .. v23}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V

    goto/16 :goto_24

    .line 4189
    :cond_ae
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 4190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move/from16 v24, v14

    move-object/from16 v25, v11

    invoke-virtual/range {v15 .. v25}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V

    goto/16 :goto_24

    .line 4192
    :cond_af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v2 .. v11}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    goto/16 :goto_24

    .line 4236
    :cond_b0
    const-string v2, "auto_reject_notification"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x6

    if-ne v6, v2, :cond_55

    .line 4237
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v7, v8}, Lcom/android/phone/CallNotifier;->showAutoRejectedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    goto/16 :goto_25

    .line 4278
    :cond_b1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_26

    .line 4281
    :cond_b2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_26

    .line 4360
    :cond_b3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect ITelephony service is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 4364
    :catch_1
    move-exception v2

    .line 4365
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_b4
    move-object v11, v2

    goto/16 :goto_1f

    :cond_b5
    move-object/from16 v16, v4

    goto/16 :goto_1e

    :cond_b6
    move/from16 v29, v3

    move v13, v4

    move v15, v5

    move v6, v2

    goto/16 :goto_17

    :cond_b7
    move/from16 v34, v2

    move v2, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v34

    goto/16 :goto_16

    :cond_b8
    move/from16 v28, v2

    goto/16 :goto_14

    :cond_b9
    move/from16 v30, v2

    goto/16 :goto_11

    :cond_ba
    move/from16 v27, v2

    goto/16 :goto_b

    :cond_bb
    move-object/from16 v31, v2

    move-object/from16 v32, v5

    goto/16 :goto_a

    :cond_bc
    move v4, v2

    goto/16 :goto_6
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 5352
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 5354
    if-eqz v0, :cond_0

    .line 5355
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 5356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfo: displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5357
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5358
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5367
    :cond_0
    :goto_0
    return-void

    .line 5361
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 5364
    const/16 v0, 0x18

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private onLineCtrl(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter

    .prologue
    .line 7200
    const-string v0, "onLineCtrl begin"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7201
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 7202
    if-eqz v1, :cond_2

    .line 7203
    const/4 v0, 0x1

    .line 7204
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    .line 7205
    if-eqz v1, :cond_2

    .line 7206
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 7207
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 7208
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 7209
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 7210
    if-eqz v2, :cond_1

    .line 7211
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 7212
    if-eqz v2, :cond_1

    .line 7213
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    .line 7214
    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 7215
    const/4 v0, 0x0

    .line 7216
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    .line 7217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DurationTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CreateTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7221
    :cond_1
    if-eqz v0, :cond_2

    .line 7222
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallCard;->resetCallTime(Lcom/android/internal/telephony/Phone;)V

    .line 7223
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallCard;->startMinuteTone(Lcom/android/internal/telephony/Phone;)V

    .line 7227
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLineCtrl1 DurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlSavedDurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/phone/CallNotifier;->mLineCtrlCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7228
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 4671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4675
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getVisualVoicemailEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4681
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4697
    :goto_0
    return-void

    .line 4685
    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 4686
    const-string v0, "wake up screen"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4687
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 4690
    :cond_2
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4691
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/NotificationMgr;->updateMwi(ZI)V

    goto :goto_0

    .line 4692
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4693
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/NotificationMgr;->updateMwi(ZI)V

    goto :goto_0

    .line 4695
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1312
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1313
    const-string v1, "onNewRingingConnection(): "

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1314
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", conn = { "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " }"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1319
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1320
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1323
    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1328
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1330
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1687
    :cond_0
    :goto_1
    return-void

    .line 1317
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", conn = { "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " }"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1335
    :cond_2
    const-string v5, "ims_vt_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ims_volte"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1336
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v9, :cond_4

    .line 1338
    const-string v5, "Phone Type is not IMS, but it is VideoCall, so ending the call."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1339
    const-string v5, "feature_chn_duos"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1340
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1344
    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1345
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 1357
    :cond_4
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1358
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    .line 1359
    if-eqz v5, :cond_5

    .line 1360
    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v5

    .line 1361
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1362
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {v5}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1363
    const-string v5, "Reject the second call as phone is in Answer memo mode"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1370
    :cond_5
    const-string v5, "ctc_vip_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1371
    if-eqz v0, :cond_8

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->isVipModeReject(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1372
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1373
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1374
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 1375
    :cond_6
    const-string v0, "isVipModeReject true"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1342
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 1381
    :cond_8
    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1382
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CallNotifier: rejecting incoming call: auto reject call"

    invoke-static {v1, v3, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1386
    const-string v1, "change_hangup_ipc_in_auto_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1387
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 1395
    :goto_3
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1396
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1397
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto/16 :goto_1

    .line 1389
    :cond_9
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1390
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3

    .line 1392
    :cond_a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3

    .line 1401
    :cond_b
    const-string v5, "enable_dormant_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1402
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 1403
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isDormantOn()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1404
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->isBlockCallList(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1405
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 1406
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1407
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 1409
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 1418
    :cond_d
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewRingingConnection: useAccessControl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1423
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 1424
    if-lez v5, :cond_e

    .line 1425
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 1426
    const-string v0, "onNewRingingConnection: Auto reject by AccessControl"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_1

    .line 1431
    :cond_e
    const-string v5, "voip_interworking"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1432
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPRingOrDialing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1433
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CallNotifier: rejecting incoming call: VOIP call is ringing or dialing"

    invoke-static {v1, v3, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1434
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1435
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1439
    :goto_4
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 1440
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1441
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    goto/16 :goto_1

    .line 1437
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 1446
    :cond_10
    const-string v5, "ctc_voicecall_additional_setting"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1447
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    .line 1448
    if-eqz v5, :cond_11

    .line 1449
    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getCallBarringCheckPanel()Landroid/view/ViewGroup;

    move-result-object v6

    .line 1450
    if-eqz v6, :cond_11

    .line 1451
    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->hideCallBarringCheckPanelIMM()V

    .line 1452
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1453
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallController;->setBarringPopup(Z)V

    .line 1454
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v5}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 1459
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1460
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    .line 1468
    :cond_12
    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isIdleSecIms()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallNotifier.onNewRingingConnection(): Ims not Idle!"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    .line 1473
    :cond_13
    const-string v5, "delay_hangup_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1474
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setStartCallTime()V

    .line 1477
    :cond_14
    const-string v5, "service_mirrorcall"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1478
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_15

    .line 1479
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1480
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v11, v3}, Lcom/android/phone/InCallScreen;->broadcastUWAAppIntentCallState(IZ)V

    .line 1488
    :cond_15
    :goto_5
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v10, :cond_16

    .line 1489
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1492
    :cond_16
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1493
    :cond_17
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v5, "R_VT"

    invoke-static {v1, v5, v0}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    .line 1496
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1501
    const-string v1, "air_motion_wave"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1502
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isDuosRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1504
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->startAirMotion()V

    .line 1517
    :cond_19
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- connection is ringing!  state = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1546
    const-string v1, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1547
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1548
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v6, :cond_24

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1551
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Lcom/android/phone/PhoneGlobals$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1560
    :goto_7
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isDuosRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1565
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v5, "activity"

    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1566
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/phone/CallNotifier;->mPrevUserMode:I

    if-eqz v5, :cond_1a

    .line 1567
    const-string v5, "changed Onwer mode:"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 1570
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1571
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 1587
    :cond_1b
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1588
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v5, :cond_1c

    .line 1589
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneGlobals;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1590
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->checkAutoAnsweringMode(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)V

    .line 1596
    :cond_1c
    :goto_8
    const-string v1, "usa_spr_roaming_feature"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1597
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1598
    const-string v1, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1600
    if-nez v1, :cond_1d

    if-nez v0, :cond_1d

    .line 1602
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1603
    if-ne v0, v10, :cond_28

    .line 1604
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1605
    invoke-static {v2}, Lcom/android/phone/SprintPhoneExtension;->setShowCallRoamingGuardDialog(Z)V

    .line 1621
    :cond_1d
    :goto_9
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1622
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1623
    const-string v0, "voip is activated - starting call waiting tone..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_1e

    .line 1625
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1626
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1686
    :cond_1e
    :goto_a
    const-string v0, "- onNewRingingConnection() done."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1482
    :cond_1f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lcom/android/phone/InCallScreen;->broadcastUWAAppIntentCallState(IZ)V

    goto/16 :goto_5

    .line 1506
    :cond_20
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    .line 1507
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    .line 1508
    :goto_b
    if-nez v6, :cond_21

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1509
    :cond_21
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->startAirMotion()V

    goto/16 :goto_6

    :cond_22
    move v1, v3

    .line 1507
    goto :goto_b

    .line 1511
    :cond_23
    const-string v1, "do not startAirMotion - using proximity sensor"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1553
    :cond_24
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    goto/16 :goto_7

    .line 1556
    :cond_25
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    goto/16 :goto_7

    .line 1593
    :cond_26
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->checkAutoAnsweringMode(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_8

    .line 1607
    :cond_27
    invoke-static {v3}, Lcom/android/phone/SprintPhoneExtension;->setShowCallRoamingGuardDialog(Z)V

    goto/16 :goto_9

    .line 1608
    :cond_28
    if-eq v0, v2, :cond_29

    if-eq v0, v11, :cond_29

    if-ne v0, v9, :cond_2b

    .line 1611
    :cond_29
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1612
    invoke-static {v2}, Lcom/android/phone/SprintPhoneExtension;->setShowCallRoamingGuardDialog(Z)V

    goto/16 :goto_9

    .line 1614
    :cond_2a
    invoke-static {v3}, Lcom/android/phone/SprintPhoneExtension;->setShowCallRoamingGuardDialog(Z)V

    goto/16 :goto_9

    .line 1616
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1631
    :cond_2c
    const-string v0, "- starting call waiting tone..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1632
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1633
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->duosPlayWaitingTone()V

    .line 1662
    :cond_2d
    :goto_c
    const-string v0, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1664
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1665
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1666
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1670
    :goto_d
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    .line 1673
    :cond_2e
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_a

    .line 1634
    :cond_2f
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_31

    .line 1637
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_2d

    .line 1638
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 1639
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1640
    const/16 v0, 0x1d

    const-wide/16 v3, 0x3a98

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- play waiting tone for kt volte..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto :goto_c

    .line 1644
    :cond_31
    const-string v0, "disable_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "45005"

    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_32
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1648
    :cond_33
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_2d

    .line 1649
    const-string v0, "custom_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1650
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 1651
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1652
    const/16 v0, 0x1d

    const-wide/16 v3, 0x3a98

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- play waiting tone for skt..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1657
    :goto_e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto/16 :goto_c

    .line 1655
    :cond_34
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_e

    .line 1668
    :cond_35
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_d
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2130
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_0
    move v5, v2

    .line 2133
    :goto_0
    if-eqz v5, :cond_4e

    .line 2134
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v1, v0

    .line 2138
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPhoneStateChanged: state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2143
    if-eqz v5, :cond_50

    .line 2144
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v6, :cond_4f

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 2152
    :goto_3
    if-eqz v5, :cond_52

    .line 2153
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    .line 2157
    :goto_4
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_9

    .line 2158
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_4

    .line 2161
    :cond_1
    const-string v0, "IPC check: CallStatusOrig CDMA"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2162
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2163
    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    .line 2165
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v0, :cond_3

    .line 2166
    const/16 v0, 0xa

    .line 2167
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2170
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 2172
    :cond_4
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2173
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_7

    :cond_5
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_7

    .line 2175
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2176
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v6, "call_answer_vib"

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2178
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    .line 2180
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_8

    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2181
    invoke-direct {p0, v3, v2}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    .line 2183
    :cond_8
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 2186
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 2193
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    .line 2197
    if-eqz v5, :cond_53

    .line 2198
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 2203
    :goto_5
    const-string v0, "ims_conference_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2204
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_a

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2205
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    .line 2208
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_b

    .line 2209
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onConferenceStateChanged()V

    .line 2214
    :cond_b
    const-string v0, "clear_cover"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2217
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_c

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_c

    .line 2218
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->changeCoverLockUI(Z)V

    .line 2222
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2223
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2224
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_54

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_54

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2227
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->startPutDownListening(Landroid/content/Context;)V

    .line 2243
    :cond_d
    :goto_6
    const-string v0, "write_sleep_checking_file"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2244
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_e

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_f

    :cond_e
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_10

    .line 2247
    :cond_f
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v3}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    .line 2251
    :cond_10
    const-string v0, "write_hard_key_reset_file"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2252
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_11

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_12

    :cond_11
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_13

    .line 2254
    :cond_12
    new-instance v0, Lcom/android/phone/FileWriteThread;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    .line 2259
    :cond_13
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_15

    :cond_14
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_16

    .line 2261
    :cond_15
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v2}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    .line 2266
    :cond_16
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_57

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_57

    .line 2268
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.glove.CALL_ENABLE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2269
    const-string v7, "gloveEnable"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2270
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 2271
    const-string v0, "onPhoneStateChanged: glove mode  on for incoming"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2280
    :cond_17
    :goto_7
    const-string v0, "support_incomingcall_popup_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2281
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_18

    .line 2282
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->stopIncomingPopupService()V

    .line 2286
    :cond_18
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2287
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v7, :cond_19

    .line 2288
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->duosStopWaitingTone()V

    .line 2292
    :cond_19
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_22

    .line 2294
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_1a

    .line 2295
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2296
    iput-object v12, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2297
    const-string v0, "custom_waiting_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2298
    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    .line 2299
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2303
    :cond_1a
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2304
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v7, :cond_1b

    .line 2305
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->duosPlayWaitingTone()V

    .line 2309
    :cond_1b
    const-string v0, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2317
    const-string v0, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2319
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2320
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2322
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2325
    :cond_1c
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->isRingerStartedRinging:Z

    .line 2328
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2329
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v7, "audio"

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2331
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v10, :cond_1d

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2332
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    .line 2340
    :cond_1d
    :goto_8
    const-string v0, "no_receiver_in_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2341
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v7

    .line 2342
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v2

    .line 2343
    :goto_9
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    const-string v8, "feature_kor"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 2344
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothWatchSingleConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2346
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v7, "audio"

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2347
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2356
    :cond_1e
    :goto_a
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2357
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_1f

    .line 2358
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v7, "audio"

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2360
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v7, 0x4

    if-eq v0, v7, :cond_1f

    .line 2361
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 2366
    :cond_1f
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2367
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v0, :cond_20

    .line 2368
    const-string v0, "- answerCall: VE: HANDLE_MSG_STOP_PLAY"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2369
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2370
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x11ec

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2376
    :cond_20
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_21

    .line 2379
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v7, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 2395
    :cond_21
    const-string v0, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2397
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2400
    const/16 v0, 0x1b

    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2404
    :cond_22
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_26

    .line 2405
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 2407
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2408
    const-string v0, "gsm.current.simnum"

    const-string v8, "0"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2409
    const-string v8, "gsm.current.simnum"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :goto_b
    if-eqz v7, :cond_25

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2413
    const-string v7, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2414
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 2415
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v8, :cond_23

    .line 2416
    new-instance v8, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v8, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 2419
    :cond_23
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_24

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5b

    .line 2420
    :cond_24
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_tone"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 2423
    iget v7, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v7, :cond_25

    iget v7, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v7, :cond_25

    .line 2425
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v7, :cond_25

    .line 2426
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v7}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$800(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2440
    :cond_25
    :goto_c
    const-string v7, "feature_chn_duos_cdma_gsm"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2441
    const-string v7, "gsm.current.simnum"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    :cond_26
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v2, :cond_27

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_27

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_36

    .line 2449
    :cond_27
    if-eqz v5, :cond_5d

    .line 2450
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 2454
    :goto_d
    const-string v5, "audio_separate_ringback_gain"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2455
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_5e

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_5e

    .line 2456
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "ringbacktone=on"

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2463
    :cond_28
    :goto_e
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_2a

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_29

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_2a

    .line 2464
    :cond_29
    const-string v5, "PhoneStateChanged : Call.State.ALERTING"

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2466
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-ne v5, v2, :cond_60

    .line 2467
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v5, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move-result v5

    .line 2472
    :goto_f
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 2474
    if-nez v5, :cond_2a

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-ne v5, v2, :cond_2a

    .line 2475
    const-string v5, "PhoneStateChanged : start videocall ringbacktone"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2476
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 2477
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    .line 2481
    :cond_2a
    const-string v5, "turn_off_screen_folder_closed"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2482
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v5, :cond_2b

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v5, :cond_2c

    :cond_2b
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_2c

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_2d

    .line 2484
    :cond_2c
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v5

    if-nez v5, :cond_2d

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->makeGoToSleepWithNoLockSound()V

    .line 2488
    :cond_2d
    const-string v5, "visual_expression"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2489
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_61

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_61

    move v5, v2

    .line 2490
    :goto_10
    const-string v6, "alerting_occurs_twice"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2491
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_62

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_62

    move v5, v2

    .line 2492
    :cond_2e
    :goto_11
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 2493
    if-eqz v5, :cond_2f

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 2494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSKTVEUrl is valid..: 2nd : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2495
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v5, v6}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 2496
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 2497
    const-string v6, "- Alerting: VE: VE_ContentManager.init()"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2498
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    .line 2499
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getInstance()Lcom/android/phone/VE_ContentManager;

    move-result-object v7

    iget-object v8, v6, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v5}, Lcom/android/phone/VE_ContentManager;->init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2500
    invoke-static {}, Lcom/android/phone/VE_ContentManager;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x11ef

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2504
    :cond_2f
    const-string v5, "auto_call_test"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2505
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "skt_auto_test"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_30

    .line 2506
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_30

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_30

    .line 2507
    const-string v5, "send broadcast intent for auto call test"

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2508
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_CONNECTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2509
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v5}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 2514
    :cond_30
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_31

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_32

    :cond_31
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_32

    .line 2516
    const-string v5, "startCallVibration : Answer Vibraton"

    invoke-direct {p0, v5, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2517
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v6, "call_answer_vib"

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2520
    :cond_32
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_33

    .line 2523
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v5, :cond_33

    .line 2524
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2525
    iput-object v12, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2529
    :cond_33
    const-string v5, "sec_product_feature_common_dsds_support"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2530
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2531
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 2532
    if-eqz v5, :cond_34

    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->hasSameSimCardId(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2533
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->setCurrentSIMslot(Lcom/android/internal/telephony/Connection;)V

    .line 2539
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneStateChanged : mPreviousGsmCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2542
    const-string v5, "feature_ecn"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_36

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_35

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_36

    .line 2544
    :cond_35
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v0

    .line 2545
    const-string v5, "PhoneStateChanged : Call.State.ACTIVE"

    invoke-static {v5}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 2546
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    .line 2548
    if-eqz v0, :cond_36

    .line 2549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencyConnection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 2550
    if-eqz v5, :cond_36

    .line 2551
    invoke-virtual {v0}, Lcom/android/phone/ECNUtils;->sendECN()V

    .line 2556
    :cond_36
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_3e

    .line 2557
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 2559
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_39

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_37

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_39

    .line 2562
    :cond_37
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v0, :cond_38

    .line 2563
    const/16 v0, 0xa

    .line 2564
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2566
    :cond_38
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 2569
    :cond_39
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPhoneStateChanged: it is an emergency call. mPreviousCdmaCallState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2571
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_3a

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_3a

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhoneStateChanged : PhoneConstants.PHONE_TYPE_IMS state = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2576
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v2, :cond_63

    .line 2577
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move-result v0

    .line 2582
    :goto_12
    if-nez v0, :cond_3a

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-ne v0, v2, :cond_3a

    .line 2583
    const-string v0, "PhoneStateChanged : start videocall ringbacktone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2584
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 2585
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    .line 2590
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v6, :cond_3b

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v6, :cond_3c

    :cond_3b
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v0, :cond_3c

    .line 2592
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v6, "call_answer_vib"

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2596
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPhoneStateChanged : PhoneConstants.PHONE_TYPE_IMS dialing = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2597
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2600
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_3d

    .line 2601
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2602
    iput-object v12, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2606
    :cond_3d
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 2609
    :cond_3e
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v2, :cond_3f

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3f

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_45

    .line 2612
    :cond_3f
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_43

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_40

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_43

    .line 2616
    :cond_40
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2617
    const-string v0, "IPC check: CallStatusOrig GSM"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2618
    invoke-direct {p0, v2, v2}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    .line 2623
    :cond_41
    :goto_13
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    if-eqz v0, :cond_42

    .line 2625
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 2626
    iput v3, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 2628
    :cond_42
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2629
    const-string v0, "- onPhoneStateChanged : ACTIVE: VE: HANDLE_MSG_STOP_PLAY"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2630
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2631
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x11ec

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2636
    :cond_43
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2637
    const-string v0, "IPC check: GSM!!!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2638
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_44

    .line 2639
    invoke-direct {p0, v2, v2}, Lcom/android/phone/CallNotifier;->SetDualStandbyCallStatusOrig(IZ)V

    .line 2648
    :cond_44
    :goto_14
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 2651
    :cond_45
    const-string v0, "cdma_call_forwarding_indicator"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2652
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v10, :cond_47

    .line 2653
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_47

    .line 2654
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2655
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2656
    if-eqz v0, :cond_47

    .line 2657
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2658
    if-eqz v0, :cond_47

    .line 2659
    const-string v5, "*720"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_46

    const-string v5, "*730"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_67

    .line 2660
    :cond_46
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    .line 2671
    :cond_47
    :goto_15
    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2672
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    if-nez v0, :cond_48

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_48

    .line 2675
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 2676
    const/16 v0, 0x22

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2677
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mGoToSleepMode:Z

    .line 2681
    :cond_48
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    .line 2683
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_49

    .line 2684
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showHidedMmiDialog()V

    .line 2685
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideBargeInNotification()V

    .line 2687
    const-string v0, "air_motion_wave"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2688
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopAirMotion()V

    .line 2692
    :cond_49
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2693
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_4a

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_4b

    .line 2694
    :cond_4a
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getRemindNotificationData()Landroid/os/Bundle;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_4b

    .line 2696
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2697
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2698
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2699
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2700
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2701
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start CallReminderActivity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-static {}, Lcom/android/phone/CallReminderNotificationHelper;->getInstance()Lcom/android/phone/CallReminderNotificationHelper;

    move-result-object v0

    .line 2703
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderNotificationHelper;->cancel(Landroid/content/Context;)V

    .line 2708
    :cond_4b
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2710
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4c

    .line 2711
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2712
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_4c

    .line 2713
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->updateSimUI()V

    .line 2720
    :cond_4c
    :goto_16
    return-void

    :cond_4d
    move v5, v3

    .line 2130
    goto/16 :goto_0

    .line 2136
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_4f
    move v0, v3

    .line 2144
    goto/16 :goto_2

    .line 2147
    :cond_50
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_51

    move v0, v2

    :goto_17
    invoke-virtual {v4, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    goto/16 :goto_3

    :cond_51
    move v0, v3

    goto :goto_17

    .line 2155
    :cond_52
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_4

    .line 2200
    :cond_53
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto/16 :goto_5

    .line 2228
    :cond_54
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v7, :cond_d

    .line 2229
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 2232
    :cond_55
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_56

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_56

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2235
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->startPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 2236
    :cond_56
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v0, :cond_d

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_d

    .line 2237
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 2272
    :cond_57
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v0, :cond_17

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_17

    .line 2274
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.glove.CALL_ENABLE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2275
    const-string v7, "gloveEnable"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 2277
    const-string v0, "onPhoneStateChanged: glove mode  off for incoming"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 2335
    :cond_58
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_8

    :cond_59
    move v0, v3

    .line 2342
    goto/16 :goto_9

    .line 2349
    :cond_5a
    if-nez v7, :cond_1e

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2350
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_a

    .line 2429
    :cond_5b
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_25

    .line 2430
    iget v7, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v7, :cond_5c

    .line 2431
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v7, :cond_5c

    .line 2432
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v7}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$900(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2435
    :cond_5c
    const-string v7, "wifi_diable_during_emergency_call"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2436
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->disableWifiInEmergencyCall()V

    goto/16 :goto_c

    .line 2452
    :cond_5d
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto/16 :goto_d

    .line 2457
    :cond_5e
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_5f

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_5f

    .line 2458
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "ringbacktone=off"

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2459
    :cond_5f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_28

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v5, :cond_28

    .line 2460
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "ringbacktone=off"

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2470
    :cond_60
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v5, v3}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move v5, v2

    goto/16 :goto_f

    :cond_61
    move v5, v3

    .line 2489
    goto/16 :goto_10

    :cond_62
    move v5, v3

    .line 2491
    goto/16 :goto_11

    .line 2579
    :cond_63
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->playCallConnectTone(Landroid/content/Context;I)Z

    move v0, v2

    goto/16 :goto_12

    .line 2619
    :cond_64
    const-string v0, "write_call_state"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2621
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->writeCallState(Z)V

    goto/16 :goto_13

    .line 2640
    :cond_65
    const-string v0, "write_call_state"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2641
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_66

    .line 2642
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->writeCallState(Z)V

    goto/16 :goto_14

    .line 2643
    :cond_66
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v0, :cond_44

    .line 2644
    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->writeCallState(Z)V

    goto/16 :goto_14

    .line 2662
    :cond_67
    const-string v3, "*72"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2663
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    goto/16 :goto_15

    .line 2715
    :cond_68
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 2716
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateSimUI()V

    goto/16 :goto_16

    :cond_69
    move v0, v3

    goto/16 :goto_b
.end method

.method private onResendMute()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6303
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6304
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    .line 6305
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 6306
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 6313
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 6305
    goto :goto_0

    .line 6308
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v2

    .line 6309
    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 6310
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 6309
    goto :goto_2
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    .line 6263
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6265
    const-string v0, "nextwork_mute_on_ringbacktone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6266
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6267
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 6268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localringbacktone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute network ringbacktone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6273
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 6279
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6281
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    .line 6285
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_2

    .line 6287
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 6288
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 6296
    :cond_2
    :goto_1
    return-void

    .line 6283
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    goto :goto_0

    .line 6291
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_2

    .line 6292
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 6293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_1
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 5433
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 5434
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 5583
    :cond_0
    :goto_0
    return-void

    .line 5440
    :cond_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5441
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5442
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 5448
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5451
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 5452
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5454
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 5459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SMC Fix onSignalInfo: callState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5460
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 5463
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 5465
    if-eqz v0, :cond_2

    .line 5467
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 5468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalInfo: isPresent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5469
    if-eqz v1, :cond_2

    .line 5471
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 5472
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 5473
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 5474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalInfo: uSignalType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uAlertPitch="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", uSignal="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSignalInfoToneRequest ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5476
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-nez v0, :cond_2

    .line 5478
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 5567
    :cond_2
    :goto_2
    const-string v0, "no_alert_tone_signal"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5569
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 5570
    if-eqz v0, :cond_3

    .line 5571
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 5572
    if-nez v0, :cond_13

    .line 5573
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 5577
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5578
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v0, :cond_0

    .line 5579
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 5444
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5445
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 5487
    :cond_5
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 5489
    if-eqz v0, :cond_2

    .line 5490
    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 5491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalInfo: isPresent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5492
    if-eqz v3, :cond_2

    .line 5493
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 5494
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 5495
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 5497
    const-string v5, "feature_kdi"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5498
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 5499
    if-nez v0, :cond_9

    .line 5500
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 5507
    :cond_6
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalInfo: uSignalType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uAlertPitch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uSignal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5510
    invoke-static {v3, v4, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v5

    .line 5514
    const-string v6, "feature_kdi"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5515
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v8, :cond_a

    .line 5516
    if-ne v3, v8, :cond_7

    if-nez v4, :cond_7

    if-eq v0, v7, :cond_8

    .line 5517
    :cond_7
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 5547
    :cond_8
    :goto_5
    const-string v1, "no_alert_tone_signal"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5548
    if-nez v0, :cond_10

    .line 5549
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_2

    .line 5502
    :cond_9
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_4

    .line 5520
    :cond_a
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5521
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_5

    .line 5525
    :cond_b
    invoke-direct {p0, v3, v4, v0}, Lcom/android/phone/CallNotifier;->isCDMAStandardSignal(III)Z

    move-result v6

    if-nez v6, :cond_8

    .line 5526
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 5527
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5528
    const/16 v1, 0x36

    if-eq v5, v1, :cond_8

    .line 5529
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_5

    .line 5531
    :cond_c
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_5

    .line 5534
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v6, :cond_e

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v6, :cond_8

    .line 5535
    :cond_e
    if-ne v3, v8, :cond_f

    if-nez v4, :cond_f

    if-ne v0, v7, :cond_f

    .line 5536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalInfo: SignalInfoTonePlayer Ignore toneID ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 5538
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalInfo: SignalInfoTonePlayer start toneID ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5539
    new-instance v1, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_5

    .line 5552
    :cond_10
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_2

    .line 5554
    :cond_11
    const-string v1, "usa_cdma_smc_fac_req"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5555
    if-ne v3, v8, :cond_12

    if-nez v4, :cond_12

    if-nez v0, :cond_12

    .line 5556
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    .line 5561
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalInfo: mSignalInfoToneRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 5559
    :cond_12
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto :goto_6

    .line 5575
    :cond_13
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    goto/16 :goto_3
.end method

.method private onSrvccHandOverSuccess(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 7330
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 7331
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsAppStateSrvcc()Z

    move-result v1

    .line 7332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", imsAppState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7334
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_2

    .line 7335
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 7336
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 7337
    if-eqz v0, :cond_0

    .line 7338
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7339
    if-eqz v0, :cond_0

    .line 7340
    const-string v2, "reset user data of Connection"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7341
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 7342
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 7344
    const-string v3, "anonymous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7345
    const-string v2, "address : anonymous"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7346
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 7347
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 7348
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 7349
    iput-boolean v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 7350
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 7362
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7366
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    .line 7368
    :cond_2
    return-void

    .line 7351
    :cond_3
    const-string v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7352
    const-string v2, "address : unknown"

    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7353
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 7354
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 7355
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 7356
    iput-boolean v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 7357
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 7363
    :catch_0
    move-exception v0

    .line 7364
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSrvccHandOverSuccess] displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter

    .prologue
    .line 1990
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1995
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1997
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1998
    const-string v0, "ota_not_spport"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    const-string v0, "- showing incoming call (unknown connection appeared)..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2000
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 2008
    :cond_1
    return-void

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    goto :goto_0
.end method

.method private placeCall()V
    .locals 5

    .prologue
    .line 4543
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "placeCall entered!!!!!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 4545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4546
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4547
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4548
    const-string v1, "simnum"

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4552
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 4553
    return-void

    .line 4549
    :cond_1
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4550
    const-string v1, "simId"

    sget v2, Lcom/android/phone/CallNotifier;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2777
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_marvell_dsds"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2780
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2781
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2782
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2783
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0, v5, v2}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2784
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2785
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2786
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2787
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2788
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2789
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2790
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2791
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2792
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2793
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2794
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x19

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2812
    :cond_1
    :goto_0
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2813
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2814
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2816
    :cond_2
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2817
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSrvccHandOver(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2819
    :cond_3
    return-void

    .line 2797
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2798
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2799
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2800
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2801
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2802
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2803
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2804
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2805
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2806
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2807
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2808
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2809
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2810
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setGroupRingtoneURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 3143
    const-string v0, "setGroupRingtoneURI: "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3144
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3145
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 3146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 3149
    return-void

    .line 3146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setGroupVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 3152
    const-string v0, "setGroupVibrationURI: "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3153
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3154
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 3155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 3158
    return-void

    .line 3155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setPersonalVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "r"
    .parameter "ci"

    .prologue
    .line 3134
    const-string v0, "setPersonalVibrationURI:"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3135
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3136
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 3137
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3138
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, p2, p0}, Lcom/android/phone/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/phone/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 3140
    return-void

    .line 3137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showAutoRejectedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 3
    .parameter "c"
    .parameter "date"

    .prologue
    .line 6084
    new-instance v0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6085
    return-void
.end method

.method private showIncomingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2030
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2036
    :goto_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2037
    sget-boolean v0, Lcom/android/phone/CallNotifier;->isForRingtoneWhenEndCall:Z

    if-eqz v0, :cond_2

    .line 2038
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->isForRingtoneWhenEndCall:Z

    .line 2118
    :cond_0
    :goto_1
    return-void

    .line 2033
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2044
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2045
    const-string v0, "GATE"

    const-string v1, "<GATE-M>INCOMING_CALL</GATE-M>"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2050
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 2061
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isInCallScreenTopActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2064
    const-string v0, "Turn on screen by ourselves to show IncomingCall!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2065
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivityForce()V

    .line 2068
    :cond_4
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "kor_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2069
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2071
    :cond_6
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 2082
    :cond_7
    :goto_3
    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2083
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2084
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2085
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->setVTSimNumber(I)V

    .line 2090
    :cond_8
    :goto_4
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2091
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/internal/telephony/Phone;)V

    .line 2096
    :goto_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2098
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mOtherPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_9

    .line 2099
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2100
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->displayVTCallScreen()V

    .line 2106
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2107
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->ussdHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2114
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    goto/16 :goto_1

    .line 2074
    :cond_a
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    goto :goto_3

    .line 2087
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->setSimNumber(I)V

    goto :goto_4

    .line 2093
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    goto :goto_5

    .line 2102
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    goto :goto_6

    .line 2051
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method private showMagazineCardNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 3
    .parameter "c"
    .parameter "date"

    .prologue
    .line 5921
    new-instance v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier$MagazineCardRunnable;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5922
    return-void
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 3
    .parameter "c"
    .parameter "date"

    .prologue
    .line 5996
    new-instance v0, Lcom/android/phone/CallNotifier$MissedCallRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier$MissedCallRunnable;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5997
    return-void
.end method

.method private showMissedCallSstream(Lcom/android/internal/telephony/Connection;J)V
    .locals 3
    .parameter "c"
    .parameter "date"

    .prologue
    .line 7438
    new-instance v0, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier$MissedCallSstreamRunnable;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7439
    return-void
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1805
    .line 1806
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1807
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_c

    .line 1808
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v1

    .line 1811
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    if-eqz v0, :cond_a

    .line 1814
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    sget-object v0, Lcom/android/phone/PhoneGlobals;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    if-eqz v0, :cond_0

    .line 1816
    sget-object v0, Lcom/android/phone/PhoneGlobals;->mCallReminderActivity:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderActivity;->pauseRemindSound()V

    .line 1819
    :cond_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1820
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 1821
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1848
    :goto_1
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_vibration_pattern"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIncomingCallQuery: patternUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1854
    if-eqz v0, :cond_1

    .line 1855
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 1860
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1865
    iget-boolean v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v3, :cond_9

    .line 1866
    const-string v3, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v3, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1867
    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v2, p0, v0}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1895
    :goto_2
    return-void

    .line 1811
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1823
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 1824
    :cond_3
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1826
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1829
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1830
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto :goto_1

    .line 1832
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1833
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 1835
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 1838
    :cond_6
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1839
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 1840
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 1842
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 1845
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1869
    :cond_9
    const-string v0, "- Starting query, posting timeout message."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1873
    const/16 v0, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 1883
    :cond_a
    const v0, 0x112a1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1886
    const-string v0, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1887
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v1, :cond_b

    .line 1888
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 1892
    :cond_b
    const-string v0, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1893
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_0
.end method

.method private startMinuteMinderAlarm()V
    .locals 9

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7080
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startMinuteMinderAlarm "

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7083
    const-string v0, "min_minder"

    .line 7084
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "min_minder"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7087
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMinuteMinderAlarm: minuteMinderTone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7089
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 7092
    if-ne v0, v7, :cond_0

    if-eqz v1, :cond_0

    .line 7094
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "startMinuteMinderAlarm:.."

    invoke-static {v0, v2, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7096
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    .line 7097
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMinuteMinderAlarm:.. first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " base "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7099
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 7112
    :cond_0
    :goto_0
    return-void

    .line 7102
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 7103
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/phone/CallNotifier;->sAlarmManager:Landroid/app/AlarmManager;

    .line 7105
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.phone.MINUTE_MINDER_ALARM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7106
    const/high16 v4, 0x1000

    invoke-static {v1, v8, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallNotifier;->sPendingIntent:Landroid/app/PendingIntent;

    .line 7109
    sget-object v0, Lcom/android/phone/CallNotifier;->sAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    sget-object v4, Lcom/android/phone/CallNotifier;->sPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private toastText_CallNoti(II)V
    .locals 2
    .parameter "stringId"
    .parameter "length"

    .prologue
    .line 7190
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 7191
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7192
    return-void
.end method

.method private writeCallState(Z)V
    .locals 5
    .parameter

    .prologue
    .line 7260
    const-string v0, "/sys/class/power_supply/battery/device/call_status"

    .line 7262
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "1"

    .line 7264
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCallState:: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7265
    const/4 v2, 0x0

    .line 7267
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sys/class/power_supply/battery/device/call_status"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7268
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 7269
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 7274
    if-eqz v1, :cond_0

    .line 7275
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7281
    :cond_0
    :goto_1
    return-void

    .line 7262
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 7277
    :catch_0
    move-exception v0

    .line 7278
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCallState:: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7270
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 7271
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCallState:: Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7274
    if-eqz v1, :cond_0

    .line 7275
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 7277
    :catch_2
    move-exception v0

    .line 7278
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCallState:: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7273
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 7274
    :goto_3
    if-eqz v1, :cond_2

    .line 7275
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7279
    :cond_2
    :goto_4
    throw v0

    .line 7277
    :catch_3
    move-exception v1

    .line 7278
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCallState:: Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7273
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 7270
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V
    .locals 45
    .parameter
    .parameter

    .prologue
    .line 6390
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 6392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueDisconnectionAfterVTStackCleanup()...  phone state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object/from16 v39, v2

    .line 6397
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v2

    check-cast v38, Lcom/android/internal/telephony/Connection;

    .line 6398
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7034
    :cond_0
    :goto_1
    return-void

    .line 6394
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 6395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueDisconnectionAfterVTStackCleanup()...  phone state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object/from16 v39, v2

    goto :goto_0

    .line 6402
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 6403
    const-string v3, "autoredial_mode"

    .line 6404
    const/4 v2, 0x0

    .line 6405
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 6406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "call_auto_retry"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 6409
    :cond_3
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_71

    .line 6410
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 6411
    invoke-static/range {v39 .. v39}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_70

    .line 6412
    const-string v2, "autoredial_mode_sim2"

    .line 6415
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move/from16 v40, v2

    .line 6418
    :goto_3
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 6420
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 6423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 6426
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 6427
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 6430
    :cond_4
    if-eqz v38, :cond_5

    .line 6431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onDisconnect: cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", incoming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6450
    :cond_5
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6461
    if-eqz v38, :cond_8

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 6462
    :cond_6
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_19

    .line 6465
    const-string v2, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 6472
    :goto_4
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6473
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 6474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRing()... (onDisconnect) : mInCallRingbackTonePlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_7

    .line 6476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 6477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 6480
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 6531
    :cond_8
    :goto_5
    const/4 v2, 0x0

    .line 6534
    if-eqz v38, :cond_9

    .line 6535
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 6536
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_24

    .line 6537
    const-string v2, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6538
    const/4 v2, 0x2

    .line 6565
    :cond_9
    :goto_6
    const/4 v3, 0x0

    .line 6574
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 6575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    move-object/from16 v44, v4

    .line 6580
    :goto_7
    if-nez v2, :cond_b

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v44

    if-ne v0, v4, :cond_b

    if-eqz v38, :cond_b

    .line 6583
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    .line 6584
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v5, :cond_a

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v4, v5, :cond_b

    .line 6586
    :cond_a
    const-string v3, "- need to play CALL_ENDED tone!"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6590
    const-string v3, "in video call, set normal -> play end tone -> send broadcast"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z

    move-result v3

    .line 6597
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 6598
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 6599
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 6605
    :cond_b
    const-string v4, "ims_vt_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 6606
    if-eqz v38, :cond_2d

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2d

    .line 6608
    const-string v2, "- DisconnectCause : set ton to play :0"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6609
    const/4 v2, 0x0

    move/from16 v41, v2

    .line 6617
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isShowingInVTCallScreen()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->getIsAutoRejectedCall()Z

    move-result v2

    if-nez v2, :cond_c

    .line 6618
    const-string v2, "wake up screen"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 6622
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v4, :cond_d

    .line 6625
    if-nez v41, :cond_d

    if-nez v3, :cond_d

    .line 6626
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 6641
    :cond_d
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6643
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->duosStopWaitingTone()V

    .line 6647
    :cond_e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6648
    const-string v3, ""

    .line 6649
    const-wide/16 v8, 0x0

    .line 6650
    const-wide/16 v10, 0x0

    .line 6651
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 6653
    if-eqz v38, :cond_6f

    .line 6654
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 6655
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 6656
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 6657
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    .line 6665
    :goto_9
    if-eqz v38, :cond_35

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 6666
    if-eqz p2, :cond_2f

    .line 6667
    const-string v2, "continueDisconnectionAfterVTStackCleanup()...  Call rejected due to low batter and treted as Missed call"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6668
    const/4 v2, 0x3

    move v6, v2

    .line 6702
    :goto_a
    if-eqz v38, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- callLogType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UserData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6704
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 6705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v27

    .line 6707
    const/4 v2, 0x0

    .line 6708
    const-string v4, "ims_conference_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 6709
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_6e

    if-eqz v27, :cond_6e

    .line 6710
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getPhoneNumbers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Is IMS Video Call : mLogNumbers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object/from16 v22, v2

    .line 6720
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v5

    .line 6722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onDisconnect(): logNumber set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6724
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    .line 6725
    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v2, :cond_10

    .line 6727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v2, :cond_10

    .line 6728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v2}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$900(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 6738
    :cond_10
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 6742
    :goto_c
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "*22899"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "*228"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_12
    const/4 v2, 0x1

    move/from16 v24, v2

    .line 6745
    :goto_d
    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 6746
    const-string v4, "sec_product_feature_common_dsds_support"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 6747
    sget v2, Lcom/android/phone/CallNotifier;->mSimId:I

    move-object/from16 v0, v43

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v2

    move/from16 v25, v2

    .line 6752
    :goto_e
    const/4 v7, 0x0

    .line 6754
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6756
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    .line 6757
    if-nez v2, :cond_3c

    .line 6758
    const/4 v7, 0x1

    .line 6764
    :cond_13
    :goto_f
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    .line 6766
    invoke-static {}, Lcom/android/phone/PhoneMultiSimUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 6771
    :cond_14
    const/4 v4, 0x0

    .line 6772
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 6773
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 6774
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 6775
    if-eqz v22, :cond_40

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v12, 0x1

    if-le v2, v12, :cond_40

    .line 6776
    const/4 v2, 0x0

    move/from16 v26, v2

    move v2, v4

    :goto_10
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_3f

    .line 6777
    aget-object v2, v22, v26

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6778
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v5, v2, :cond_15

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v5, v2, :cond_16

    .line 6779
    :cond_15
    if-eqz v3, :cond_16

    .line 6780
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 6783
    :cond_16
    const-string v2, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 6784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- imsCallLogNumber: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6786
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    .line 6787
    :goto_11
    if-nez v2, :cond_18

    .line 6788
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 6789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v12, "content://logs/video_call"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    .line 6790
    const-string v2, "- addCall: "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6796
    :cond_18
    :goto_12
    const/4 v4, 0x1

    .line 6776
    add-int/lit8 v2, v26, 0x1

    move/from16 v26, v2

    move v2, v4

    goto :goto_10

    .line 6468
    :cond_19
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 6482
    :cond_1a
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 6483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1b

    .line 6486
    const-string v2, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 6493
    :cond_1b
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_5

    .line 6497
    :cond_1c
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6499
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 6500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    .line 6501
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    .line 6502
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x1

    .line 6508
    :goto_15
    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-nez v2, :cond_23

    .line 6509
    const/4 v2, 0x0

    .line 6510
    if-eqz v38, :cond_1d

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 6511
    :cond_1d
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_8

    .line 6516
    const-string v2, "Start ring after the first call was cleared and accept the waiting call"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6518
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_5

    .line 6500
    :cond_1e
    const/4 v2, 0x0

    goto :goto_13

    .line 6501
    :cond_1f
    const/4 v3, 0x0

    goto :goto_14

    .line 6502
    :cond_20
    const/4 v4, 0x0

    goto :goto_15

    .line 6504
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 6506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    goto :goto_15

    .line 6521
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_5

    .line 6525
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_5

    .line 6539
    :cond_24
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_25

    .line 6540
    const-string v2, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6541
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 6542
    :cond_25
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v4, :cond_26

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 6545
    const-string v2, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6546
    const/16 v2, 0xb

    goto/16 :goto_6

    .line 6547
    :cond_27
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_28

    .line 6548
    const-string v2, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6549
    const/4 v2, 0x6

    goto/16 :goto_6

    .line 6550
    :cond_28
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_29

    .line 6551
    const-string v2, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6552
    const/4 v2, 0x7

    goto/16 :goto_6

    .line 6553
    :cond_29
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_2a

    .line 6554
    const-string v2, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6555
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 6556
    :cond_2a
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_2b

    .line 6557
    const-string v2, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6558
    const/16 v2, 0x9

    goto/16 :goto_6

    .line 6559
    :cond_2b
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_9

    .line 6560
    const-string v2, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6561
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 6577
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    move-object/from16 v44, v4

    goto/16 :goto_7

    .line 6612
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- DisconnectCause : set ton to play, toneToPlay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_2e
    move/from16 v41, v2

    goto/16 :goto_8

    .line 6670
    :cond_2f
    const-string v2, "continueDisconnectionAfterVTStackCleanup()...  normal condition for Call log not disconnected due to low battery"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6671
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-ne v0, v2, :cond_33

    .line 6672
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_30

    .line 6673
    const/4 v2, 0x3

    move v6, v2

    goto/16 :goto_a

    .line 6674
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 6675
    const/4 v2, 0x3

    move v6, v2

    goto/16 :goto_a

    .line 6677
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    const/4 v2, 0x6

    :goto_16
    move v6, v2

    goto/16 :goto_a

    :cond_32
    const/4 v2, 0x5

    goto :goto_16

    .line 6681
    :cond_33
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-ne v0, v2, :cond_34

    const/4 v2, 0x3

    :goto_17
    move v6, v2

    goto/16 :goto_a

    :cond_34
    const/4 v2, 0x1

    goto :goto_17

    .line 6686
    :cond_35
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 6689
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 6690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0, v2}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 6691
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setSKTCallLogType(Ljava/lang/String;)V

    .line 6693
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v2, :cond_37

    .line 6694
    const/16 v2, 0x15

    :goto_18
    move v6, v2

    .line 6698
    goto/16 :goto_a

    .line 6696
    :cond_37
    const/4 v2, 0x2

    goto :goto_18

    .line 6699
    :cond_38
    const/4 v2, 0x2

    move v6, v2

    goto/16 :goto_a

    .line 6738
    :cond_39
    const/4 v2, 0x0

    move/from16 v23, v2

    goto/16 :goto_c

    .line 6742
    :cond_3a
    const/4 v2, 0x0

    move/from16 v24, v2

    goto/16 :goto_d

    .line 6748
    :cond_3b
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 6749
    invoke-static/range {v43 .. v43}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    move/from16 v25, v2

    goto/16 :goto_e

    .line 6760
    :cond_3c
    const/4 v7, 0x2

    goto/16 :goto_f

    .line 6786
    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 6792
    :cond_3e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-virtual/range {v12 .. v21}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 6793
    const-string v2, "- addCall: "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_3f
    move v4, v2

    .line 6803
    :cond_40
    if-nez v4, :cond_43

    .line 6804
    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6807
    const-string v2, "feature_logs_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 6813
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v37

    .line 6814
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->isOneSIMcardsInsertedInSlot2()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_41

    .line 6815
    const/16 v37, 0x1

    .line 6819
    :cond_41
    if-nez v24, :cond_43

    if-eqz v25, :cond_42

    if-nez v23, :cond_43

    .line 6820
    :cond_42
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 6821
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    .line 6822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v13, v3

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-virtual/range {v12 .. v21}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 6852
    :cond_43
    :goto_1a
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 6853
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 6854
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 6856
    const/4 v2, 0x3

    if-ne v6, v2, :cond_45

    .line 6857
    const-string v2, "- onDisconnect(): show miss call notification"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6861
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 6862
    invoke-static {}, Lcom/android/phone/CallNotifier;->getEnableMagazineCard()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 6863
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMagazineCardNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 6865
    :cond_44
    const-string v2, "sstream_voice_call_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 6866
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallSstream(Lcom/android/internal/telephony/Connection;J)V

    .line 6874
    :cond_45
    if-eqz v41, :cond_4a

    .line 6875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- starting post-disconnect tone ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6876
    const/4 v2, 0x2

    move/from16 v0, v41

    if-eq v0, v2, :cond_46

    const/4 v2, 0x3

    move/from16 v0, v41

    if-ne v0, v2, :cond_49

    :cond_46
    if-eqz v38, :cond_49

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 6878
    const-string v2, "VT busy call - set audio mode ( normal ), true"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    .line 6880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 6884
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_48

    .line 6885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 6887
    :cond_48
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 6889
    :cond_49
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v2, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 6901
    :cond_4a
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v44

    if-ne v0, v2, :cond_63

    .line 6907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isShowingInVTCallScreen()Z

    move-result v2

    if-nez v2, :cond_62

    .line 6908
    const-string v2, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v3, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 6919
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4c

    :cond_4b
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-static/range {v43 .. v43}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    :goto_1c
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_4c

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_4c

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_4c

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_4c

    .line 6926
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v2, :cond_65

    .line 6941
    :cond_4c
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_67

    :cond_4d
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static/range {v43 .. v43}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    :cond_4e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v42

    if-eq v0, v2, :cond_67

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->isVTFallBackCondtion(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v2

    if-nez v2, :cond_67

    if-eqz v38, :cond_67

    .line 6952
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_69

    .line 6953
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_68

    .line 6954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRedialState : redialCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6955
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 6956
    const-string v2, "auto_redial_time_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 6957
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    .line 6958
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->AutoRedial(I)V

    .line 6974
    :cond_4f
    :goto_1e
    const-string v2, "auto_redial_time_delay"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 6975
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    .line 6976
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 6977
    if-eqz v2, :cond_50

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_50

    .line 6978
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v3, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 6981
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 6982
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6984
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6990
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 6991
    const-string v2, "- continueDisconnectionAfterVTStackCleanup: mIsAutoRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6992
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    .line 6993
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 6995
    :cond_52
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 6996
    const-string v2, "- continueDisconnectionAfterVTStackCleanup: mIsDormantRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 6997
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 6998
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 7000
    :cond_53
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    .line 7001
    const-string v2, "- continueDisconnectionAfterVTStackCleanup: mIsAccessControlRejectedCall"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7002
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    .line 7003
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 7006
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->provisioned:Z

    if-nez v2, :cond_55

    .line 7007
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->provisioned:Z

    .line 7008
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 7010
    :cond_55
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7011
    if-eqz v38, :cond_56

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_57

    :cond_56
    sget-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7012
    :cond_57
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getImsPhoneIndex()I

    move-result v3

    .line 7013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CallManager State\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v44

    if-ne v0, v2, :cond_6a

    const/4 v2, 0x1

    :goto_1f
    invoke-virtual {v4, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 7015
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6b

    .line 7016
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->resetImsPhone()V

    .line 7017
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 7018
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 7019
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    goto/16 :goto_1

    :cond_58
    move-object/from16 v14, v27

    .line 6810
    goto/16 :goto_19

    .line 6823
    :cond_59
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 6825
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_REMIND_ME_LATER_SUPPORT : video"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6826
    const/16 v23, 0x0

    .line 6827
    const/16 v24, 0x0

    .line 6828
    sget v2, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    if-lez v2, :cond_5b

    .line 6829
    const/16 v23, 0x1

    .line 6830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget v4, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-static {v2, v14, v4, v8, v9}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 6832
    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v2, :cond_5c

    .line 6833
    const/16 v24, 0x1

    .line 6834
    :cond_5c
    const/4 v2, 0x0

    sput v2, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    .line 6835
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 6836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object v13, v3

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-virtual/range {v12 .. v24}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;II)V

    goto/16 :goto_1a

    .line 6837
    :cond_5d
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 6838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v25, v0

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v26, v3

    move-object/from16 v27, v14

    move/from16 v28, v5

    move/from16 v29, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move/from16 v35, v23

    move/from16 v36, v24

    invoke-virtual/range {v25 .. v37}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V

    goto/16 :goto_1a

    .line 6840
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    move-object/from16 v25, v0

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v26, v3

    move-object/from16 v27, v14

    move/from16 v28, v5

    move/from16 v29, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move/from16 v35, v23

    move/from16 v36, v24

    invoke-virtual/range {v25 .. v36}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V

    goto/16 :goto_1a

    .line 6842
    :cond_5f
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 6843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v4, "content://logs/video_call"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object v4, v14

    invoke-virtual/range {v2 .. v12}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V

    goto/16 :goto_1a

    .line 6844
    :cond_60
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 6845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object v13, v3

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move/from16 v21, v37

    invoke-virtual/range {v12 .. v22}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V

    goto/16 :goto_1a

    .line 6847
    :cond_61
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const-string v2, "content://logs/video_call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v13, v3

    move v15, v5

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-virtual/range {v12 .. v21}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    goto/16 :goto_1a

    .line 6913
    :cond_62
    const-string v2, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 6916
    :cond_63
    const-string v2, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 6919
    :cond_64
    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto/16 :goto_1c

    .line 6937
    :cond_65
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_1d

    .line 6941
    :cond_66
    invoke-static/range {v43 .. v43}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 6970
    :cond_67
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 6971
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_1e

    .line 6962
    :cond_68
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 6963
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_1e

    .line 6966
    :cond_69
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 6967
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_1e

    .line 7014
    :cond_6a
    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 7021
    :cond_6b
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v44

    if-ne v0, v2, :cond_6c

    .line 7022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "It should not be here ideally !!!!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 7023
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->resetImsPhone()V

    .line 7024
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 7025
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->setImsPhoneIndex(I)V

    .line 7026
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 7027
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mImsCall:Lcom/android/internal/telephony/Call;

    goto/16 :goto_1

    .line 7029
    :cond_6c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->decImsPhoneIndex()V

    goto/16 :goto_1

    :cond_6d
    move/from16 v25, v2

    goto/16 :goto_e

    :cond_6e
    move-object/from16 v22, v2

    goto/16 :goto_b

    :cond_6f
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    goto/16 :goto_9

    :cond_70
    move-object v2, v3

    goto/16 :goto_2

    :cond_71
    move/from16 v40, v2

    goto/16 :goto_3
.end method

.method public deleteStoryItem()V
    .locals 4

    .prologue
    .line 7526
    const-string v0, "dcm_jcontacts_package_name"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7527
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.jcontacts"

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    invoke-virtual {v2}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    invoke-virtual {v3}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lsstream/lib/SStreamContentManager;->deleteStoryItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7532
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    .line 7533
    return-void

    .line 7529
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    invoke-virtual {v2}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->storyItem:Lsstream/lib/objs/StoryItem;

    invoke-virtual {v3}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lsstream/lib/SStreamContentManager;->deleteStoryItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method duosPlayWaitingTone()V
    .locals 3

    .prologue
    .line 4783
    const-string v1, "duosPlayWaitingTone"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4784
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4785
    .local v0, currentphone:Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duosPlayWaitingTone: play waitingtone with phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4786
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->playWaitingTone()V

    .line 4787
    return-void
.end method

.method duosStopWaitingTone()V
    .locals 2

    .prologue
    .line 4800
    const-string v0, "duosStopWaitingTone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4801
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopWaitingTone()V

    .line 4802
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getNotifier(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->stopWaitingTone()V

    .line 4803
    return-void
.end method

.method public formatNumberForVideoConf(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 6324
    .line 6325
    const-string v1, ""

    .line 6326
    if-eqz p1, :cond_1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 6327
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialVideoCall: dialStrings.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6330
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 6331
    aget-object v2, v3, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 6334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6336
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 6342
    :cond_2
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatNumberForVideoConf: newDialString.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 6346
    :cond_3
    return-object v0
.end method

.method getIsAutoRejectedCall()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsAccessControlRejectedCall:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 5903
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getIsGsmRedialCall()Z
    .locals 1

    .prologue
    .line 5910
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 5889
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 7133
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getSstreamCallerPhotoInfo(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 7538
    .line 7543
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7545
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7546
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "photo_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 7547
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7548
    const-string v0, "photo_uri"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;

    .line 7549
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " In mPhotoUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7557
    :goto_0
    if-eqz v1, :cond_0

    .line 7558
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7564
    :cond_0
    :goto_1
    return-void

    .line 7551
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhotoUri:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 7553
    :catch_0
    move-exception v0

    .line 7554
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getCallerName() : Exception !!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7557
    if-eqz v1, :cond_0

    .line 7558
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 7557
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    .line 7558
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7562
    :cond_2
    throw v0

    .line 7557
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 7553
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 5896
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage  CallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCallType(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->englog(Ljava/lang/String;)V

    .line 703
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessageForSRVCC(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    const-string v0, "handleMessage : return for srvcc"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 900
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 712
    :sswitch_1
    const-string v0, "RINGING... (new)"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 713
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 718
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    .line 719
    iget v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    if-ne v1, v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 720
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 721
    const v1, 0x7f09049c

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->toastText_CallNoti(II)V

    .line 722
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 723
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCall:Z

    goto :goto_0

    .line 730
    :cond_2
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    const-string v0, "feature_marvell_dsds"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 733
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->setCurrentSIMslot(Landroid/os/AsyncResult;)V

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget v1, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setActivePhone(I)V

    .line 744
    :cond_4
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_a

    .line 746
    const-string v0, "gsm.current.simnum"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_5
    :goto_1
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->setCurrentSIMslot(Landroid/os/AsyncResult;)V

    .line 756
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_7

    .line 757
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 760
    :cond_7
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 761
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setActivePhone(I)V

    .line 763
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 764
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 765
    const-string v0, "vt_cmcc_operator_fallback"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 768
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 772
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 774
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_e

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 775
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 777
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptByVoiceCallNumber:Ljava/lang/String;

    .line 781
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getAutomaticAcceptAlertDialogInstance()Lcom/android/phone/AutomaticAcceptAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptAlertDialogInit()V

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RingingCallnumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  AcceptByVoiceCallNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 785
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 786
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_accept"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoaccept voice call : automatic_accept :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 790
    if-ne v0, v4, :cond_0

    .line 791
    const-string v0, "Autoaccept voice call..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 793
    new-instance v0, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    .line 806
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    .line 807
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->myTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 736
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->hasSameSimCardId(Landroid/os/AsyncResult;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 737
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->setCurrentSIMslot(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 748
    :cond_a
    const-string v0, "gsm.current.simnum"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 770
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_2

    .line 810
    :cond_c
    const-string v0, "Autoaccept voice call: RingingCallnumber != AcceptByVoiceCallNumber!!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    :cond_d
    const-string v0, "Autoaccept voice call: getAutomaticAcceptAlertDialogInstance() == null !! "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoaccept voice call: isVideocall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 826
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 828
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneRequest:Z

    if-ne v0, v4, :cond_11

    .line 831
    const-string v0, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 838
    :cond_f
    :goto_3
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    .line 840
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 841
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 842
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 843
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 844
    iput v5, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    .line 846
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 834
    :cond_11
    const-string v0, "RING before NEW_RING, skipping"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 857
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getAudioControlState()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 860
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 863
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_13

    .line 864
    :cond_12
    const-string v0, "RING before NEW_RING, skipping"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 871
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    const-string v0, "Ring Sreen On"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto/16 :goto_0

    .line 866
    :cond_13
    const-string v0, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 867
    sput-boolean v4, Lcom/android/phone/CallNotifier;->isForRingtoneWhenEndCall:Z

    .line 868
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_4

    .line 875
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getAudioControlState()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 878
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 881
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_16

    .line 882
    :cond_15
    const-string v0, "RING before NEW_RING, skipping"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 889
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const-string v0, "Ring Sreen On"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->forceWakeUpScreen()V

    goto/16 :goto_0

    .line 884
    :cond_16
    const-string v0, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 885
    sput-boolean v4, Lcom/android/phone/CallNotifier;->isForRingtoneWhenEndCall:Z

    .line 886
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_5

    .line 894
    :cond_17
    const-string v0, "RING before NEW_RING, skipping"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    :sswitch_4
    const-string v0, "DISCONNECT"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 905
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    if-eqz v0, :cond_18

    .line 906
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 908
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 913
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 917
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    :sswitch_7
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 922
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 924
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 929
    :sswitch_8
    const-string v0, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 930
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 931
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 932
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 933
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1b

    .line 934
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 935
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 936
    const-string v2, "enable_dormant_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 937
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isDormantOn()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->isBlockCallList(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 938
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->changePhone(Lcom/android/internal/telephony/Phone;)V

    .line 946
    :cond_1b
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 949
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    .line 950
    iget v1, p0, Lcom/android/phone/CallNotifier;->nIncoming:I

    if-ne v1, v3, :cond_1d

    .line 951
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 952
    const v1, 0x7f09049c

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->toastText_CallNoti(II)V

    .line 953
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 954
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    goto/16 :goto_0

    .line 941
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->changePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_6

    .line 958
    :cond_1d
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 959
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 960
    if-eqz v0, :cond_1e

    .line 961
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallBarringCheckPanel()Landroid/view/ViewGroup;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_1e

    .line 963
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->hideCallBarringCheckPanelIMM()V

    .line 964
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 965
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallController;->setBarringPopup(Z)V

    .line 966
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 972
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 976
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 977
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 981
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 983
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 987
    :sswitch_b
    const-string v0, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v4}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 994
    :sswitch_c
    const-string v0, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 995
    const-string v0, "display_info_diable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1001
    :sswitch_d
    const-string v0, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    .line 1005
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    :cond_1f
    const/16 v0, 0x21

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1012
    :sswitch_e
    const-string v0, "Received Display Info notification done event ..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1013
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 1017
    :sswitch_f
    const-string v0, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1022
    :sswitch_10
    const-string v0, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1023
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1026
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1028
    const-string v0, "- updating notification for VP state..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 1034
    :sswitch_11
    const-string v0, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1035
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v0, :cond_0

    .line 1037
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1038
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1040
    const-string v0, "- updating notification for VP state..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 1046
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1050
    :sswitch_13
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 1054
    :sswitch_14
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1062
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_20

    .line 1064
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 1066
    :cond_20
    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTurnOnSpeaker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->mTurnOnSpeaker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1068
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mTurnOnSpeaker:Z

    if-ne v0, v4, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1070
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 1071
    :cond_21
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1072
    sput-boolean v5, Lcom/android/phone/PhoneUtils;->mTurnOnSpeaker:Z

    goto/16 :goto_0

    .line 1079
    :sswitch_15
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    if-lez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1081
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1082
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1083
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1084
    const/16 v0, 0x1d

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- play waiting tone for skt..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingToneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1093
    :sswitch_16
    const-string v0, "PHONE_STATE_LINECTRL event"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1094
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1096
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v1, "call_answer_vib"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1098
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onLineCtrl(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1104
    :sswitch_17
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_22

    .line 1105
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1106
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    .line 1108
    :cond_22
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mLastCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1109
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->placeCall()V

    goto/16 :goto_0

    .line 1111
    :cond_23
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsGsmRedialCall:Z

    .line 1112
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 1114
    iput v5, p0, Lcom/android/phone/CallNotifier;->mRedialCallCount:I

    goto/16 :goto_0

    .line 1120
    :sswitch_18
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    const-string v0, "RINGING... (new IMS)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1127
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_24

    .line 1128
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1130
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1135
    :cond_24
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->setIMSPhone()V

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 1137
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1140
    new-instance v0, Lcom/android/phone/FileWriteThread;

    invoke-direct {v0, v4}, Lcom/android/phone/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/FileWriteThread;->start()V

    goto/16 :goto_0

    .line 1147
    :sswitch_19
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    const-string v0, "mApplication.isFactoryTest()"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 1152
    const/16 v0, 0x22

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1158
    :sswitch_1a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 1159
    const-string v0, "PHONE_SCREEN_OFF"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->makeGoToSleep()V

    goto/16 :goto_0

    .line 710
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0x14 -> :sswitch_18
        0x15 -> :sswitch_7
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_e
        0x19 -> :sswitch_f
        0x1a -> :sswitch_9
        0x1b -> :sswitch_14
        0x1d -> :sswitch_15
        0x1f -> :sswitch_17
        0x20 -> :sswitch_16
        0x21 -> :sswitch_19
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method

.method hasSameSimCardId(Landroid/os/AsyncResult;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 1295
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1296
    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasSameSimCardId(Lcom/android/internal/telephony/Connection;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initCallNotifierRegistrationsForIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 2823
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateCallNotifierRegistrationsForIMS..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2828
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2829
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2830
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2831
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2832
    const/16 v0, 0x14

    invoke-interface {p1, p0, v0, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2833
    return-void
.end method

.method isDormantOn()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2916
    .line 2919
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 2924
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2926
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_disable_incoming_calls"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2929
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    .line 2930
    :cond_0
    const-string v2, "dormant disable "

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2956
    :cond_1
    :goto_0
    return v0

    .line 2934
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_always"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 2935
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2936
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 2937
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_start_hour"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_start_min"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 2939
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_end_hour"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "dormant_end_min"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v5

    .line 2941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2945
    if-ne v4, v2, :cond_4

    .line 2946
    const-string v0, "Dormant Time set as Always"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    :cond_3
    move v0, v1

    .line 2956
    goto/16 :goto_0

    .line 2948
    :cond_4
    if-ge v4, v2, :cond_5

    .line 2949
    if-lt v3, v4, :cond_1

    if-lt v3, v2, :cond_3

    goto/16 :goto_0

    .line 2952
    :cond_5
    if-lt v3, v2, :cond_3

    if-ge v3, v4, :cond_3

    goto/16 :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method isSilenceRequested()Z
    .locals 1

    .prologue
    .line 4753
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    return v0
.end method

.method public onCdmaCallWaitingReject()V
    .locals 13

    .prologue
    .line 5745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5746
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 5747
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v11, v0

    .line 5753
    :goto_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_d

    .line 5755
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5757
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    .line 5758
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    .line 5767
    :goto_1
    if-eqz v12, :cond_c

    .line 5768
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5769
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 5770
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 5771
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 5772
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    move v4, v0

    .line 5776
    :goto_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 5778
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_11

    .line 5779
    :cond_1
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 5786
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5788
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "second logNumber = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5790
    const-string v0, "P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5791
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5796
    :cond_2
    if-eqz v1, :cond_12

    iget v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 5797
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newPresentation value is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5800
    const/4 v9, 0x0

    .line 5801
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5802
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v9

    .line 5803
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->isOneSIMcardsInsertedInSlot2()Z

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    .line 5804
    const/4 v9, 0x1

    .line 5809
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5810
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    .line 5811
    invoke-static {}, Lcom/android/phone/PhoneMultiSimUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 5816
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5817
    if-eqz v1, :cond_5

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v3, v0, :cond_6

    :cond_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v3, v0, :cond_7

    .line 5818
    :cond_6
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5822
    :cond_7
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    if-eqz v0, :cond_13

    .line 5823
    const/4 v4, 0x6

    .line 5827
    :cond_8
    :goto_5
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "reject_call_cnap_display"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5829
    :cond_9
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 5830
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v0 .. v9}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 5862
    :goto_6
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1c

    .line 5864
    invoke-direct {p0, v12, v5, v6}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 5865
    invoke-static {}, Lcom/android/phone/CallNotifier;->getEnableMagazineCard()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5866
    invoke-direct {p0, v12, v5, v6}, Lcom/android/phone/CallNotifier;->showMagazineCardNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 5867
    :cond_a
    const-string v0, "sstream_voice_call_enable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5868
    invoke-direct {p0, v12, v5, v6}, Lcom/android/phone/CallNotifier;->showMissedCallSstream(Lcom/android/internal/telephony/Connection;J)V

    .line 5875
    :cond_b
    :goto_7
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 5879
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 5880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingAutoRejectedCall:Z

    .line 5881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    .line 5883
    :cond_d
    return-void

    .line 5760
    :cond_e
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_1

    .line 5764
    :cond_f
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_1

    .line 5772
    :cond_10
    const/4 v0, 0x5

    move v4, v0

    goto/16 :goto_2

    .line 5781
    :cond_11
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_3

    :cond_12
    move v0, v3

    .line 5796
    goto/16 :goto_4

    .line 5824
    :cond_13
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    if-eqz v0, :cond_8

    .line 5825
    const/4 v4, 0x3

    goto :goto_5

    .line 5831
    :cond_14
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5832
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 5833
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 5834
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5835
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v11, 0x2

    if-ne v0, v11, :cond_15

    .line 5836
    const-string v0, "simnum"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5840
    :goto_8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v0 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V

    goto :goto_6

    .line 5838
    :cond_15
    const-string v0, "simnum"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8

    .line 5841
    :cond_16
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "enable_dormant_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5843
    :cond_17
    const/4 v9, 0x0

    .line 5844
    const/4 v10, 0x0

    .line 5845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FEATURE_REMIND_ME_LATER_SUPPORT : CDMA"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v11, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5846
    sget v0, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    if-lez v0, :cond_18

    .line 5847
    const/4 v9, 0x1

    .line 5848
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget v11, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    invoke-static {v0, v2, v11, v5, v6}, Lcom/android/phone/CallReminderAlarm;->addAlarm(Landroid/content/Context;Ljava/lang/String;IJ)J

    .line 5850
    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCDMACallWaitingDormantRejectedCall:Z

    if-eqz v0, :cond_19

    .line 5851
    const/4 v10, 0x1

    .line 5853
    :cond_19
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PhoneGlobals;->remindCallTime:I

    .line 5854
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v0 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    goto/16 :goto_6

    .line 5856
    :cond_1a
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5857
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v0 .. v9}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    goto/16 :goto_6

    .line 5859
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    goto/16 :goto_6

    .line 5871
    :cond_1c
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto/16 :goto_7

    :cond_1d
    move-object v11, v0

    goto/16 :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 2968
    const-string v1, "auto_reject_notification"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z

    if-eqz v1, :cond_1

    .line 2969
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z

    .line 3072
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 2973
    const-string v1, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSstreamRun : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2975
    const-string v1, "enable_dormant_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    if-eqz v1, :cond_2

    .line 2976
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsDormantRejectedCall:Z

    .line 2977
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;JZ)V

    .line 2980
    const-string v0, "Dormant on query"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2982
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    if-nez v1, :cond_3

    .line 2983
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 2986
    const-string v0, "Dormant off query"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2989
    :cond_3
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSstreamRun:Z

    .line 2990
    const-string v0, "Dormant off query and Sstreamrun"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2993
    :cond_4
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 2994
    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 2998
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2999
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v2, v8, :cond_5

    .line 3000
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    move v0, v8

    .line 3003
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3005
    if-eqz v0, :cond_0

    .line 3008
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_7

    .line 3009
    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3010
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3011
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 3003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3013
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 3018
    :cond_7
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v1, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 3020
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_f

    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3021
    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0, v8}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3023
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3024
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    .line 3034
    :cond_8
    :goto_1
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3035
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v8, :cond_9

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3036
    invoke-direct {p0, v1, p3}, Lcom/android/phone/CallNotifier;->setPersonalVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    .line 3041
    :cond_9
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3042
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3043
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "number_plus_digits"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdnipNumber and settedCdnipNumber are same : setted cdnipNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "number_plus_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3047
    const/4 v0, 0x0

    .line 3048
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3049
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3051
    :cond_a
    if-eqz v0, :cond_b

    .line 3052
    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 3053
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3054
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 3055
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3061
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3062
    :try_start_3
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_c

    .line 3064
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3067
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    .line 3069
    :cond_c
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 3025
    :cond_d
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3026
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 3028
    :cond_e
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 3030
    :cond_f
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v8, :cond_8

    .line 3031
    invoke-direct {p0, v1, p3}, Lcom/android/phone/CallNotifier;->setGroupRingtoneURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_1

    .line 3055
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 3161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3163
    sparse-switch p1, :sswitch_data_0

    .line 3240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3241
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " token : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3243
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 3244
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 3245
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v0, :cond_1

    .line 3246
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3247
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    .line 3250
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3251
    return-void

    .line 3165
    :sswitch_0
    if-eqz p3, :cond_0

    .line 3166
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3169
    const-string v0, "group_ringtone"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3170
    if-eq v0, v3, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3171
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 3173
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/phone/Ringer;->isValidRingtoneURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3174
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3175
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/phone/CallNotifier;->nSimNumber:I

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;I)V

    .line 3180
    :cond_2
    :goto_1
    const-string v0, "onRingingCallAdditionalQueryComplete: group ringtone URI : "

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 3181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3184
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3177
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 3189
    :sswitch_1
    if-eqz p3, :cond_0

    .line 3190
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3192
    const-string v0, "group_vibration"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3193
    if-eq v0, v3, :cond_5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3194
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3195
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 3196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRingingCallAdditionalQueryComplete: sec_group_vibration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3200
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3205
    :sswitch_2
    const/4 v0, 0x0

    .line 3207
    if-eqz p3, :cond_9

    .line 3209
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 3213
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3216
    const-string v2, "sec_custom_vibration"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3217
    if-eq v2, v3, :cond_8

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3218
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3219
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3, v2}, Lcom/android/phone/Ringer;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 3220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingingCallAdditionalQueryComplete: sec_custom_vibration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3226
    :cond_7
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 3231
    :goto_3
    if-ne v0, v1, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-direct {p0, v0, p2}, Lcom/android/phone/CallNotifier;->setGroupVibrationURI(Lcom/android/phone/Ringer;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 3223
    goto :goto_2

    :cond_9
    move v0, v1

    .line 3228
    goto :goto_3

    .line 3250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3163
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method playMinuteMinder()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7115
    const-string v4, "playMinuteMinder"

    invoke-direct {p0, v4, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7116
    const-string v0, "min_minder"

    .line 7117
    .local v0, MINUTE_MINDER:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "min_minder"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 7118
    .local v1, minuteMinderTone:I
    if-ge v1, v3, :cond_0

    .line 7126
    :goto_0
    return v2

    .line 7123
    :cond_0
    const-string v2, "playMinuteMinder start!"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 7124
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startMinuteMinderAlarm()V

    .line 7125
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v4, 0xe

    invoke-direct {v2, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    move v2, v3

    .line 7126
    goto :goto_0
.end method

.method playUpgradeRequestTone()V
    .locals 1

    .prologue
    .line 5229
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    if-eqz v0, :cond_0

    .line 5230
    const-string v0, "Play call upgrade  tone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5231
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->startTone()V

    .line 5233
    :cond_0
    return-void
.end method

.method playUpgradeTimeoutTone()V
    .locals 1

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    if-eqz v0, :cond_0

    .line 5244
    const-string v0, "Play upgrade time out tone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5245
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->playTimeoutTone()V

    .line 5247
    :cond_0
    return-void
.end method

.method playWaitingTone()V
    .locals 2

    .prologue
    .line 4790
    const-string v0, "playWaitingTone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4791
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_0

    .line 4792
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 4794
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 4795
    const-string v0, "playWaitingTone:start completed..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4797
    :cond_0
    return-void
.end method

.method public resetAudioStateAfterDisconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4580
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4582
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 4583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioStateAfterDisconnect(): Current phone state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", So return and not continued resetAudio process."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4668
    :cond_0
    :goto_0
    return-void

    .line 4588
    :cond_1
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4589
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isIdleSecIms()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4590
    const-string v0, "resetAudioStateAfterDisconnect(): ims call is not idle, return"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4613
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 4614
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 4618
    :cond_3
    const-string v0, "not_reset_spk_during_ps_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudioStateAfterDisconnect(): Current audioMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", So continue spk state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4629
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4631
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last noise reduction : set= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  set result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4638
    :cond_4
    const-string v0, "extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4640
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4642
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsExtraVolEnabled:Z

    .line 4643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last extra volume : set= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4647
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 4650
    invoke-static {v2, v2}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 4652
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionInitiated:Z

    .line 4653
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsAudioSolutionAboutRoutingInitiated:Z

    .line 4655
    const-string v0, "audio_separate_ringback_gain"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4656
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ringbacktone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4659
    :cond_6
    const-string v0, "feature_cpvolte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4660
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/phone/PhoneGlobals;->wbamrIntentReceived:Z

    .line 4663
    :cond_7
    const-string v0, "notify_audio_reset"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4664
    const-string v0, "send broadcast intent after call disconnected for audio state"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.COMPLETE_AUDIO_RESET_AFTER_CALL_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4666
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4625
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_1
.end method

.method resetCallNotifierRegistrationsFromIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 2836
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetCallNotifierRegistrationsFromVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2841
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2842
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2843
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2844
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2846
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getIMSPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2849
    :cond_0
    return-void
.end method

.method restartRinger()V
    .locals 3

    .prologue
    .line 4764
    const-string v0, "restartRinger()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4765
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4780
    :cond_0
    :goto_0
    return-void

    .line 4768
    :cond_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4769
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4776
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4777
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 4771
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public saveBaseLogForConf(Lcom/android/internal/telephony/Connection;)V
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 7679
    if-nez p1, :cond_0

    .line 7680
    const-string v0, "[saveBaseLogForConf] conn == null "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 7732
    :goto_0
    return-void

    .line 7684
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    if-eqz v0, :cond_1

    .line 7685
    const-string v0, "[saveBaseLogForConf] already saved previous log "

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7689
    :cond_1
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    .line 7690
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->isDirectConfCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7691
    const-string v0, "[saveBaseLogForConf] direct conference call"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7695
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7696
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 7697
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    goto :goto_0

    .line 7701
    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->savedBaseLogForConf:Z

    .line 7703
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 7704
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 7705
    :cond_4
    const-string v0, "[saveBaseLogForConf] Log is not updated because number is not valid"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7709
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 7710
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 7711
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v3

    .line 7714
    const-string v0, "content://logs/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 7715
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7716
    const-string v0, "content://logs/video_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 7720
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    if-eqz v0, :cond_7

    .line 7721
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    .line 7722
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 7723
    iget v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I

    iput v0, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 7724
    iput-boolean v12, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    .line 7725
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    .line 7730
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v4, 0x2

    iget v10, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V

    .line 7731
    iput v12, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    goto :goto_0

    .line 7727
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    goto :goto_1
.end method

.method public saveParticipantLog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;JJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7666
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveParticipantLog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7667
    const-string v0, ""

    .line 7668
    const-string v0, "content://logs/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 7669
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7670
    const-string v0, "content://logs/video_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 7673
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7674
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    const/4 v1, 0x0

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v4, 0x2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 7675
    return-void
.end method

.method saveSwitchedLog()V
    .locals 13

    .prologue
    .line 7372
    const-string v0, "common_volte_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7435
    :cond_0
    :goto_0
    return-void

    .line 7376
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsSwitchedLog:Z

    .line 7378
    const/4 v0, 0x0

    .line 7380
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->getCallType(Lcom/android/internal/telephony/Call;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7385
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 7386
    if-eqz v4, :cond_0

    .line 7390
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 7391
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 7395
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 7396
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    sub-long/2addr v7, v9

    .line 7397
    iget-wide v9, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/phone/CallNotifier;->beforeCallDuration:J

    .line 7398
    iget-wide v9, p0, Lcom/android/phone/CallNotifier;->saveDuration:J

    const-wide/16 v11, 0x3e8

    rem-long v11, v7, v11

    sub-long v11, v7, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/phone/CallNotifier;->saveDuration:J

    .line 7400
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v1, v4}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 7401
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v3, v4, v1}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v3

    .line 7404
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7405
    const/4 v4, 0x1

    .line 7410
    :goto_2
    const-string v9, "content://logs/call"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 7411
    packed-switch v0, :pswitch_data_0

    .line 7421
    :goto_3
    :pswitch_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7422
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v3, v0, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v3, v0, :cond_4

    .line 7423
    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 7426
    :cond_4
    iget v0, p0, Lcom/android/phone/CallNotifier;->SWITCHED_CALL_SERVICE_TYPE:I

    iput v0, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    .line 7428
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsFirstSwitched:Z

    if-eqz v0, :cond_5

    .line 7429
    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mDisconnectSendUri:Landroid/net/Uri;

    .line 7430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsFirstSwitched:Z

    .line 7433
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    iget v10, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V

    .line 7434
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->serviceType:I

    goto/16 :goto_0

    .line 7381
    :catch_0
    move-exception v1

    .line 7382
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7407
    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    .line 7413
    :pswitch_1
    const-string v0, "content://logs/volte"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    .line 7416
    :pswitch_2
    const-string v0, "content://logs/video_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    .line 7411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 5734
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 5735
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 4704
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4705
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4706
    return-void
.end method

.method sendPlayRingBackTone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7137
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 7138
    .local v1, r:Landroid/os/AsyncResult;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 7139
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7140
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 7141
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7143
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 7144
    return-void
.end method

.method setCshInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 6357
    sput-object p1, Lcom/android/phone/CallNotifier;->mSharedContentsPath:Ljava/lang/String;

    .line 6358
    return-void
.end method

.method setCurrentSIMslot(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1200
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1202
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1203
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simActive1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simActive2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1210
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1214
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This slot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not working!!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This slot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not working!!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :cond_3
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1224
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_0

    .line 1227
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v2

    .line 1228
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v0

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incomingnSimId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1230
    if-eq v0, v2, :cond_4

    .line 1231
    const-string v3, "current network is not same with network slot!!!!"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1233
    sput v2, Lcom/android/phone/CallNotifier;->prevSIMslot:I

    .line 1234
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/CallNotifier;->isChangeSimSlot:Z

    .line 1235
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ITelephony threw RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    :cond_4
    :try_start_1
    const-string v0, "using same line.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1245
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 1246
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incomingnSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1250
    if-eq v0, v1, :cond_6

    .line 1251
    const-string v2, "current network is not same with network slot!!!!"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1252
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mNeedRestorePreviousSimID:Z

    .line 1253
    iput v1, p0, Lcom/android/phone/CallNotifier;->mPreviousSimID:I

    .line 1254
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    goto/16 :goto_0

    .line 1256
    :cond_6
    const-string v0, "using same line.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setCurrentSIMslot(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1261
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1262
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simActive1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simActive2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1266
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 1270
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->getSubscription(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incomingnSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1274
    if-eq v1, v0, :cond_2

    .line 1275
    const-string v0, "current network is not same with network slot!!!!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1277
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    goto :goto_0

    .line 1279
    :cond_2
    const-string v0, "using same line.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method silenceRinger()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v1, "S_RI"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 4747
    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V

    .line 4748
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 4749
    return-void
.end method

.method public startAirMotion()V
    .locals 3

    .prologue
    .line 7161
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 7163
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopAirMotion()V

    .line 7165
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isAirMotionOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7166
    new-instance v1, Lcom/android/phone/CallAirMotion;

    invoke-direct {v1, v0}, Lcom/android/phone/CallAirMotion;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 7167
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallAirMotionListener:Lcom/android/phone/CallAirMotionListener;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallAirMotion;->setCallAirMotionListener(Lcom/android/phone/CallAirMotionListener;)V

    .line 7169
    :cond_0
    return-void
.end method

.method public stopAirMotion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    if-eqz v0, :cond_0

    .line 7173
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->stopMotionCatch()V

    .line 7174
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallAirMotion;->setCallAirMotionListener(Lcom/android/phone/CallAirMotionListener;)V

    .line 7175
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 7177
    :cond_0
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 5592
    const-string v0, "stop_signal_info_tone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5593
    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5594
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 5604
    :cond_0
    :goto_0
    return-void

    .line 5595
    :cond_1
    const-string v0, "signal_info_tone_generator_stop"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5596
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 5597
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 5599
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsSignalInfoToneGenerator:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5600
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 5601
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method stopUpgradeRequestTone()V
    .locals 1

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    if-eqz v0, :cond_0

    .line 5237
    const-string v0, "Stop call upgrade tone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 5238
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mUpgradeTonePlayer:Lcom/android/phone/CallNotifier$UpgradeTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$UpgradeTonePlayer;->stopTone()V

    .line 5240
    :cond_0
    return-void
.end method

.method stopWaitingTone()V
    .locals 1

    .prologue
    .line 4806
    const-string v0, "stopWaitingTone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4807
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 4808
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 4809
    const-string v0, "stopWaitingTone:stop complete!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 4811
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 4812
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2723
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2726
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 2727
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2728
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2729
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 2730
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 2731
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2732
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2733
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2734
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2735
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2736
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2751
    :goto_0
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2754
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2760
    :cond_0
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2763
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2764
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2765
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2766
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 2773
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 2774
    return-void

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 2739
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2740
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2741
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 2742
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 2743
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2744
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2745
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2746
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2747
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2748
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    goto :goto_0

    .line 2768
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2769
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    goto :goto_1
.end method

.method public updateRingbackToneVolume()V
    .locals 4

    .prologue
    .line 6247
    const-string v0, "use_situation_gain_for_ringbacktones"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6248
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_1

    .line 6250
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=12"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 6251
    const-string v1, "add_situation_gain_for_ringbacktones"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6252
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f333333

    add-float/2addr v0, v1

    .line 6254
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6260
    :cond_1
    :goto_0
    return-void

    .line 6255
    :catch_0
    move-exception v0

    .line 6256
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USE_SITUATION_GAIN_FOR_RINGBACKTONES: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method
