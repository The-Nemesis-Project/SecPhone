.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;,
        Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;
    }
.end annotation


# static fields
.field static DS_EXTRA_SIM_ID:Ljava/lang/String;

.field static EXTRA_SIM_ID:Ljava/lang/String;

.field private static final SAFE_DEBUG:Z

.field private static assisDialing:Ljava/lang/reflect/Method;


# instance fields
.field private callIntentForPreferredSim:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIsMultiWindow:Z

.field private final mLock:Ljava/lang/Object;

.field mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mSyncAudio:Landroid/os/Handler;

.field private mSyncAudioResult:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWaitingSpinner:Landroid/widget/ProgressBar;

.field private newIntent:Landroid/content/Intent;

.field private numberForPreferredSim:Ljava/lang/String;

.field private roamingIntent:Landroid/content/Intent;

.field private roamingNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->SAFE_DEBUG:Z

    .line 275
    const-string v0, "simSlot"

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    .line 276
    const-string v0, "simId"

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 153
    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;

    .line 191
    iput-boolean v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z

    .line 193
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SyncAudio"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    .line 197
    iput-boolean v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mIsMultiWindow:Z

    .line 236
    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    .line 278
    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;

    .line 279
    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;

    .line 288
    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/OutgoingCallBroadcaster;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/OutgoingCallBroadcaster;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->syncPhoneAudio(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/phone/PhoneGlobals;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->canAddCall(Lcom/android/phone/PhoneGlobals;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p6}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3022
    :try_start_0
    sget-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3028
    :goto_0
    return-object v0

    .line 3023
    :catch_0
    move-exception v0

    .line 3024
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "InvocationTargetException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3025
    goto :goto_0

    .line 3026
    :catch_1
    move-exception v0

    .line 3027
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "IllegalAccessException"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3028
    goto :goto_0
.end method

.method public static assistedDialing_fromContact(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3012
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromContactList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    .line 3013
    invoke-static {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3016
    :goto_0
    return-object v0

    .line 3014
    :catch_0
    move-exception v0

    .line 3015
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "NoSuchMethodException"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assistedDialing_fromDialer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3002
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromDialPad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/phone/OutgoingCallBroadcaster;->assisDialing:Ljava/lang/reflect/Method;

    .line 3003
    invoke-static {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3006
    :goto_0
    return-object v0

    .line 3004
    :catch_0
    move-exception v0

    .line 3005
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "NoSuchMethodException"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canAddCall(Lcom/android/phone/PhoneGlobals;)Z
    .locals 3
    .parameter "phoneApp"

    .prologue
    .line 2942
    const/4 v0, 0x1

    .line 2943
    .local v0, canAddCall:Z
    const-string v1, "usa_cdma_concept"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2944
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2945
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 2946
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2948
    const/4 v0, 0x0

    .line 2956
    :cond_0
    :goto_0
    return v0

    .line 2949
    :cond_1
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2951
    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    goto :goto_0
.end method

.method private emergencyPlayTone(I)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 2926
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2927
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 2928
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    monitor-exit v1

    .line 2939
    :goto_0
    return-void

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2935
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2936
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2937
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2938
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 628
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/OutgoingCallBroadcaster;->isLargerThan32Chars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 631
    .end local p1
    :cond_0
    return-object p1
.end method

.method private formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 2511
    .line 2512
    const-string v1, ""

    .line 2513
    if-eqz p1, :cond_1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2514
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2515
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatNumberForVideoConference: dialStrings.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 2517
    aget-object v2, v3, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2518
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 2527
    :cond_2
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2528
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatNumberForVideoConference: newDialString.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_3
    return-object v0
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 2570
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonVoiceCapable: handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on non-voice-capable device..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2573
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2574
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2589
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2590
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2591
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- relaunching as a DIAL intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2593
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2602
    :goto_0
    return-void

    .line 2599
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private hasActiveSecImsCall()Z
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isIdleSecIms()Z

    move-result v0

    .line 640
    .local v0, isIdleSecIms:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isImsRegisteredForVoLTE()Z
    .locals 3

    .prologue
    .line 1163
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "VoLTE:VT"

    const-string v1, "persist.sys.ims.regtag"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLargerThan32Chars(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 635
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemail(Landroid/content/Intent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2987
    const-string v0, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2988
    if-nez v0, :cond_0

    .line 2989
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2996
    :goto_0
    return v2

    .line 2993
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2994
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2995
    :goto_1
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoicemail - scheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    if-eqz v0, :cond_2

    const-string v3, "voicemail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 2994
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2996
    goto :goto_2
.end method

.method private phoneIsCdma()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3036
    .line 3038
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3039
    if-eqz v0, :cond_2

    .line 3040
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 3046
    :goto_0
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3047
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CURRENT_NETWORK"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v2

    .line 3050
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 3040
    goto :goto_0

    .line 3042
    :catch_0
    move-exception v0

    .line 3043
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone.getActivePhoneType() failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 26
    .parameter

    .prologue
    .line 1293
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "Non primary user request the call. Ignore it and show the dialog"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1300
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 2508
    :goto_0
    return-void

    .line 1304
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v17

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1309
    const/4 v5, 0x0

    .line 1310
    const/4 v4, 0x0

    .line 1312
    const/4 v7, 0x0

    .line 1313
    const/4 v2, 0x0

    .line 1317
    const/4 v6, 0x0

    .line 1318
    const/4 v3, 0x0

    .line 1320
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNoSim()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1322
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 1323
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1325
    if-eqz v3, :cond_1

    .line 1327
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1333
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    .line 1334
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v6, :cond_4

    const/4 v3, 0x1

    .line 1335
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->checkDualSim()Z

    move-result v6

    .line 1337
    sget-object v8, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v3, :cond_2

    if-eqz v6, :cond_2

    const-string v8, "feature_multisim_ver2"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1338
    const-string v4, "videocall"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1339
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "prefered_video_call"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1344
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 1359
    const/4 v4, 0x2

    .line 1364
    :cond_2
    :goto_4
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preferredSimCondition "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!intent.hasExtra simSlot_Ext: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " intent.getIntExtra simSlot_Ext  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "simSlot_Ext"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   intent.hasExtra EXTRA_SIM_ID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   intent.getExtra  SIM ID :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  currentSimId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v2, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1367
    if-eqz v4, :cond_3

    const/4 v2, 0x1

    if-ne v4, v2, :cond_d5

    .line 1369
    :cond_3
    const-string v2, "simSlot_Ext"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 1370
    const/4 v5, 0x1

    move v9, v5

    move v5, v3

    move v3, v6

    move-object v6, v7

    move v7, v4

    .line 1403
    :goto_5
    const-string v2, "support_dongle_function"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1405
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v2, :cond_d

    .line 1406
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "This device is detected as non-voice-capable device."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1407
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1328
    :catch_0
    move-exception v3

    .line 1329
    const-string v6, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ITelephony threw RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1334
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1341
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "prefered_voice_call"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_3

    .line 1347
    :pswitch_0
    const/4 v4, 0x2

    .line 1348
    goto/16 :goto_4

    .line 1350
    :pswitch_1
    const/4 v4, 0x3

    .line 1351
    goto/16 :goto_4

    .line 1353
    :pswitch_2
    const/4 v4, 0x0

    .line 1354
    goto/16 :goto_4

    .line 1356
    :pswitch_3
    const/4 v4, 0x1

    .line 1357
    goto/16 :goto_4

    .line 1372
    :cond_6
    const/4 v5, 0x0

    move v9, v5

    move v5, v3

    move v3, v6

    move-object v6, v7

    move v7, v4

    goto :goto_5

    .line 1375
    :cond_7
    const-string v2, "feature_preferred_sim_card_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_d4

    .line 1377
    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v8, :cond_8

    .line 1378
    const-string v2, "videocall"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1379
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "prefered_video_call"

    const/4 v8, 0x0

    invoke-static {v2, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1386
    :cond_8
    :goto_6
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferredSimCondition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!intent.hasExtra simSlot_Ext: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " intent.getIntExtra simSlot_Ext  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "simSlot_Ext"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   intent.hasExtra DS_EXTRA_SIM_ID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   intent.getExtra  SIM ID :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v2, 0x3

    if-ne v4, v2, :cond_a

    .line 1389
    const/4 v2, 0x1

    .line 1398
    :goto_7
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bIsNeedSimSelectPopUp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    move v9, v2

    move-object v6, v7

    move v7, v4

    goto/16 :goto_5

    .line 1381
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "prefered_voice_call"

    const/4 v8, 0x0

    invoke-static {v2, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_6

    .line 1390
    :cond_a
    const-string v2, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 1391
    if-eqz v4, :cond_b

    const/4 v2, 0x1

    if-ne v4, v2, :cond_d3

    .line 1392
    :cond_b
    const-string v2, "simSlot_Ext"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_c

    .line 1393
    const/4 v2, 0x1

    goto :goto_7

    .line 1395
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 1415
    :cond_d
    const-string v2, "restricted_call_for_qc_issue"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1416
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1417
    const-string v2, "OutgoingCallBroadcaster"

    const-string v4, "BOOT: sPreventCallForQC is true - restricted call"

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1418
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneGlobals;->hasRestrictedCallMessageForQC()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1419
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneGlobals;->sRestrictedCallForQC:Z

    .line 1424
    :cond_e
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1426
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTRAD(Landroid/content/Intent;)V

    .line 1427
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallSKTWZone(Landroid/content/Intent;)V

    .line 1430
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 1431
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    const-string v4, "origin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1433
    const-string v4, "callmessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1434
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER_FROM_WHERE : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1437
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1440
    :cond_10
    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1441
    const/4 v4, 0x0

    .line 1442
    const-string v11, "global_network_cdma_gsm_enable"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1443
    const/4 v4, 0x1

    .line 1444
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_dialing"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_12

    .line 1445
    const-string v4, "from_contact"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_fromContact(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1447
    :goto_8
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- got number from assisted dialing: \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_12
    if-eqz v2, :cond_d2

    .line 1454
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1455
    const-string v4, "911"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1456
    const-string v2, "tel"

    const-string v4, "119"

    const/4 v8, 0x0

    invoke-static {v2, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1457
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1458
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    :cond_13
    :goto_9
    const-string v4, "international_call_service"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "int_call_svc_enabled"

    const/4 v11, 0x1

    invoke-static {v4, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1469
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "int_call_svc_value"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1470
    const-string v11, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "serviceValue = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : internationalServiceNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    if-nez v4, :cond_14

    .line 1472
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1474
    const-string v2, "tel"

    const/4 v8, 0x0

    invoke-static {v2, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1475
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1476
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1480
    :goto_a
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " : confirm changedNumber = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object v4, v2

    .line 1485
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1486
    const-string v2, "android.intent.extra.VTCallDialer"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1487
    const-string v2, "videocall"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1488
    const-string v2, "CALL_END"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCallEnd(Z)V

    .line 1489
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1490
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v12, 0xd

    if-ne v2, v12, :cond_19

    const/4 v2, 0x1

    .line 1491
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v12

    .line 1492
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isEvdoOnly()Z

    move-result v13

    if-eqz v13, :cond_1a

    if-nez v8, :cond_1a

    if-nez v11, :cond_1a

    .line 1493
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v8

    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    invoke-static {v12}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1494
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string v3, "Cannot make a call in data only mode(evdo,lte)."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1495
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1446
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->assistedDialing_fromDialer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 1460
    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    .line 1478
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 1490
    :cond_19
    const/4 v2, 0x0

    goto :goto_b

    .line 1500
    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1501
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    :cond_1b
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1506
    const/4 v2, 0x1

    .line 1507
    const-string v8, "ims_conference_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 1508
    const-string v8, "IS_CONF_CALL"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1509
    if-eqz v8, :cond_d1

    .line 1510
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1511
    const/4 v2, 0x0

    move/from16 v25, v2

    move-object v2, v4

    move/from16 v4, v25

    .line 1515
    :goto_c
    if-eqz v4, :cond_1e

    .line 1516
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "cnap_text_for_smc_test"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1517
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1518
    const/16 v8, 0x61

    if-gt v8, v4, :cond_1c

    const/16 v8, 0x7a

    if-le v4, v8, :cond_20

    :cond_1c
    const/16 v8, 0x41

    if-gt v8, v4, :cond_1d

    const/16 v8, 0x5a

    if-le v4, v8, :cond_20

    .line 1519
    :cond_1d
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1520
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1e
    :goto_d
    move-object v4, v2

    .line 1539
    :goto_e
    const-string v2, "android.intent.extra.VTCallDialer"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 1540
    if-eqz v4, :cond_23

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1541
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1543
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 1544
    if-eqz v2, :cond_1f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1f
    const-string v2, "sip"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1546
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f09001f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1523
    :cond_20
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f09055d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1530
    :cond_21
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1531
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 1535
    :cond_22
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "The number obtained from Intent is null."

    const/4 v11, 0x1

    invoke-static {v2, v8, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_e

    .line 1554
    :cond_23
    const-string v2, "videocall"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 1555
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value of callType from invoked application"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value of VTCallDialer from invoked application "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v13, 0x0

    .line 1559
    const/4 v8, 0x0

    .line 1560
    const/4 v11, 0x0

    .line 1561
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1562
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v2

    .line 1563
    const-string v11, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "defSimCardId:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const-string v11, "simSlot"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1565
    const-string v11, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simCardId:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNoSim()Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "voicemail"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_24

    sget-object v11, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    if-nez v5, :cond_24

    if-eqz v3, :cond_24

    const-string v11, "feature_multisim_ver2"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    const-string v11, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 1567
    if-nez v7, :cond_26

    .line 1568
    const/4 v2, 0x0

    .line 1574
    :cond_24
    :goto_f
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNoSim()Z

    move-result v11

    if-nez v11, :cond_25

    const-string v11, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/4 v11, 0x3

    if-eq v7, v11, :cond_25

    .line 1575
    const-string v2, "simSlot_Ext"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1576
    const-string v11, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simSlotID from simSlot_Ext: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move/from16 v16, v2

    move v15, v8

    .line 1642
    :goto_10
    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    .line 1645
    :goto_11
    const-string v8, "sec_product_feature_common_dsds_support"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 1646
    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    invoke-static {v4, v0, v13}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    :goto_12
    move v12, v2

    .line 1653
    :goto_13
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emergencyNumber"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v8, 0x0

    .line 1657
    const-string v2, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1659
    if-eqz v2, :cond_cd

    .line 1660
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 1661
    :goto_14
    const-string v8, "OutgoingCallBroadcaster"

    const-string v11, "phoneRestrictionPolicy != null"

    invoke-static {v8, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v8, 0x1

    .line 1664
    if-eqz v2, :cond_cc

    if-nez v12, :cond_cc

    .line 1665
    invoke-virtual {v2, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v2

    .line 1667
    :goto_15
    if-nez v12, :cond_3b

    .line 1669
    if-nez v2, :cond_3b

    .line 1670
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104015e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 1672
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "!canMakeCall - finish"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1569
    :cond_26
    const/4 v11, 0x1

    if-ne v7, v11, :cond_24

    .line 1570
    const/4 v2, 0x1

    goto/16 :goto_f

    .line 1578
    :cond_27
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1579
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v8

    .line 1580
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "defSimCardId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getInsertedSimCount()I

    move-result v2

    .line 1583
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InsertedSimCount:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v12, "feature_marvell_dsds"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 1586
    const-string v12, "simId"

    if-nez v8, :cond_30

    const/4 v2, 0x0

    :goto_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1587
    const-string v12, "feature_preferred_sim_card_dsds"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2b

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 1589
    if-eqz v12, :cond_31

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 1590
    :goto_17
    if-eqz v12, :cond_28

    const-string v13, "voicemail"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    :cond_28
    invoke-static {v4, v8}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_32

    :cond_29
    const/4 v8, 0x1

    .line 1591
    :goto_18
    if-nez v8, :cond_2a

    sget-object v8, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v12, :cond_2a

    const-string v8, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2a

    .line 1593
    const/4 v2, 0x1

    if-ne v7, v2, :cond_33

    const/4 v2, 0x1

    .line 1596
    :cond_2a
    :goto_19
    const-string v8, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2b

    .line 1597
    const-string v2, "simSlot_Ext"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1598
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "id  from simSlot_Ext: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_2b
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->isDualSIM()Z

    move-result v8

    if-eqz v8, :cond_2e

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v8, 0x1

    if-ne v8, v2, :cond_2e

    .line 1603
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x0

    aget-object v8, v8, v12

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 1604
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 1605
    const-string v13, "gsm.sim.state_1"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1607
    const-string v15, "OutgoingCallBroadcaster"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "serviceStateSim1 : "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const-string v15, "OutgoingCallBroadcaster"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "serviceStateSim2 : "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const-string v15, "OutgoingCallBroadcaster"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "simStateSim2 : "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    if-eqz v8, :cond_2c

    const/4 v15, 0x2

    if-ne v8, v15, :cond_2e

    :cond_2c
    const/4 v8, 0x1

    if-ne v12, v8, :cond_2e

    const-string v8, "PIN_REQUIRED"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    const-string v8, "PUK_REQUIRED"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1614
    :cond_2d
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "Set call slot as SIM1"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v2, 0x0

    .line 1616
    const-string v8, "simId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1617
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    .line 1631
    :cond_2e
    :goto_1a
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    if-nez v2, :cond_36

    const/4 v8, 0x0

    .line 1633
    :goto_1b
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simId:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v12, "feature_marvell_dsds"

    invoke-static {v12}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2f

    if-nez v9, :cond_2f

    .line 1636
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/OutgoingCallBroadcaster;->syncPhoneAudio(I)V

    .line 1637
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    :cond_2f
    move/from16 v16, v11

    move v15, v2

    move v13, v8

    goto/16 :goto_10

    .line 1586
    :cond_30
    const/4 v2, 0x1

    goto/16 :goto_16

    .line 1589
    :cond_31
    const/4 v12, 0x0

    goto/16 :goto_17

    .line 1590
    :cond_32
    const/4 v8, 0x0

    goto/16 :goto_18

    .line 1593
    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 1621
    :cond_34
    const/4 v12, 0x1

    if-ne v2, v12, :cond_cf

    const/4 v2, 0x1

    if-ne v8, v2, :cond_cf

    .line 1622
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v12, 0x0

    aget-object v2, v2, v12

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1623
    const-string v12, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sim1state:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    if-nez v2, :cond_cf

    .line 1625
    const/4 v2, 0x0

    .line 1626
    const-string v8, "OutgoingCallBroadcaster"

    const-string v12, "Changed forcingly to sim1"

    invoke-static {v8, v12}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :goto_1c
    const-string v8, "simId"

    if-nez v2, :cond_35

    const/4 v2, 0x0

    :goto_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_1a

    :cond_35
    const/4 v2, 0x1

    goto :goto_1d

    .line 1632
    :cond_36
    const/4 v8, 0x1

    goto/16 :goto_1b

    .line 1642
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 1646
    :cond_38
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1648
    :cond_39
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 1649
    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v4, v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    :goto_1e
    move v12, v2

    goto/16 :goto_13

    :cond_3a
    const/4 v2, 0x0

    goto :goto_1e

    .line 1678
    :cond_3b
    const-string v2, "voip_interworking"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1679
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPRingOrOffhook()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->canUseHoldInVoIP()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1680
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f090519

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1683
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1689
    :cond_3c
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1691
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate mVTCallDialer - "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    if-nez v19, :cond_3d

    if-eqz v18, :cond_3e

    .line 1694
    :cond_3d
    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1695
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1696
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3e

    const-string v8, "WIFI"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1698
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 1706
    :cond_3e
    const-string v2, "android.phone.extra.speakeron"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1707
    const-string v2, "android.phone.extra.speakeron"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3f

    .line 1708
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    .line 1712
    :goto_1f
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1718
    :goto_20
    const-string v2, "appops"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1722
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v8, v11}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v11

    .line 1724
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1730
    :goto_21
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v2, v0, v11, v8}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_41

    .line 1732
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting call from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1710
    :cond_3f
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    goto :goto_1f

    .line 1714
    :cond_40
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    .line 1715
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    goto :goto_20

    .line 1726
    :catch_1
    move-exception v8

    .line 1727
    const/4 v11, -0x1

    .line 1728
    const/4 v8, 0x0

    goto :goto_21

    .line 1744
    :cond_41
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 1746
    if-eqz v12, :cond_cb

    .line 1748
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 1749
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x1

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1750
    const/4 v2, 0x0

    .line 1752
    const-string v20, "OutgoingCallBroadcaster"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "simId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " simState1 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " simState2 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    if-nez v13, :cond_4e

    if-eqz v8, :cond_42

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_4e

    .line 1755
    :cond_42
    const/4 v13, 0x0

    move v8, v2

    move v2, v13

    .line 1766
    :goto_22
    if-eqz v8, :cond_43

    .line 1767
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsDsds;->setDefaultSimForVoiceCalls(I)I

    .line 1768
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Change simId - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_43
    :goto_23
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 1774
    if-eqz v12, :cond_5a

    .line 1776
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x0

    aget-object v8, v8, v11

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1777
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x1

    aget-object v8, v8, v13

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    .line 1778
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v20

    .line 1779
    const/4 v8, 0x1

    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v21

    .line 1782
    const/4 v8, 0x0

    .line 1784
    const-string v22, "OutgoingCallBroadcaster"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "simId : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " simState1 : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " simState2 : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    if-nez v2, :cond_54

    if-eqz v11, :cond_44

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v22

    if-nez v22, :cond_44

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_54

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_54

    .line 1788
    :cond_44
    const/4 v2, 0x0

    move/from16 v25, v8

    move v8, v2

    move/from16 v2, v25

    .line 1802
    :goto_24
    const/4 v11, 0x5

    move/from16 v0, v20

    if-eq v0, v11, :cond_c8

    const/4 v11, 0x5

    move/from16 v0, v21

    if-eq v0, v11, :cond_c8

    .line 1804
    const/4 v8, 0x0

    .line 1805
    const/4 v2, 0x1

    move/from16 v25, v2

    move v2, v8

    move/from16 v8, v25

    .line 1808
    :goto_25
    if-eqz v8, :cond_5a

    .line 1810
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1812
    if-eqz v8, :cond_45

    .line 1813
    :try_start_2
    invoke-interface {v8, v2}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    .line 1814
    :cond_45
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Change simId - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v2

    .line 1822
    :goto_26
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1826
    const-string v2, "android.intent.action.CALL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1827
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const-string v2, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1843
    :cond_46
    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v8, 0x1

    .line 1845
    :goto_27
    if-eqz v4, :cond_5c

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    .line 1847
    :goto_28
    const-string v13, "sec_product_feature_common_dsds_support"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 1848
    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    invoke-static {v4, v0, v11}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v8, 0x1

    .line 1850
    :goto_29
    if-eqz v4, :cond_5e

    move-object/from16 v0, p0

    invoke-static {v4, v0, v11}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, 0x1

    .line 1859
    :cond_47
    :goto_2a
    const-string v13, "OutgoingCallBroadcaster"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - Checking restrictions for number \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\':"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const-string v13, "OutgoingCallBroadcaster"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "     isExactEmergencyNumber     = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     isPotentialEmergencyNumber = "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 1872
    if-nez v19, :cond_49

    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    if-nez v18, :cond_49

    :cond_48
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    if-eqz v18, :cond_64

    .line 1875
    :cond_49
    const-string v8, "OutgoingCallBroadcaster"

    const-string v13, "For VIDEO CALL"

    invoke-static {v8, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const-string v8, "service_callmessage"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1879
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pLetteringText: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setLettering(Ljava/lang/String;)V

    .line 1883
    :cond_4a
    const-string v13, "com.android.phone.videocall"

    .line 1884
    const/4 v8, 0x0

    .line 1885
    const-string v14, "ims_volte"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4b

    const-string v14, "common_volte_vt_kor"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4c

    :cond_4b
    const-string v14, "feature_kor"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 1887
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_62

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v8

    if-eqz v8, :cond_62

    const-string v8, "119"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    const/4 v8, 0x1

    .line 1889
    :cond_4c
    :goto_2b
    const-string v14, "emergency_vtcall"

    invoke-static {v14}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4d

    if-nez v8, :cond_c6

    .line 1890
    :cond_4d
    if-eqz v2, :cond_63

    const-string v8, "android.intent.action.CALL_EMERGENCY"

    .line 1892
    :goto_2c
    const-string v13, "OutgoingCallBroadcaster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "- updating action from CALL_PRIVILEGED to "

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    :goto_2d
    invoke-static {}, Lcom/android/phone/ECNUtils;->getInstance()Lcom/android/phone/ECNUtils;

    move-result-object v13

    .line 1927
    const-string v14, "android.intent.action.CALL"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6d

    .line 1928
    if-eqz v2, :cond_6a

    .line 1929
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot call potential emergency number \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "Launching default dialer instead..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1940
    const-string v3, "dcm_jcontacts_package_name"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1941
    const-string v3, "com.android.jcontacts"

    const-string v4, "com.android.jcontacts.DialtactsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1947
    :goto_2e
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1950
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1953
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1756
    :cond_4e
    if-nez v13, :cond_50

    if-eqz v11, :cond_4f

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_50

    .line 1757
    :cond_4f
    const/4 v13, 0x1

    .line 1758
    const/4 v2, 0x1

    move v8, v2

    move v2, v13

    goto/16 :goto_22

    .line 1759
    :cond_50
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_52

    if-eqz v11, :cond_51

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_52

    .line 1760
    :cond_51
    const/4 v13, 0x1

    move v8, v2

    move v2, v13

    goto/16 :goto_22

    .line 1761
    :cond_52
    const/4 v11, 0x1

    if-ne v13, v11, :cond_ca

    if-eqz v8, :cond_53

    const/4 v11, 0x2

    if-ne v8, v11, :cond_ca

    .line 1762
    :cond_53
    const/4 v13, 0x0

    .line 1763
    const/4 v2, 0x1

    move v8, v2

    move v2, v13

    goto/16 :goto_22

    .line 1789
    :cond_54
    if-nez v2, :cond_56

    if-eqz v13, :cond_55

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v22

    if-nez v22, :cond_55

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_56

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_56

    .line 1791
    :cond_55
    const/4 v8, 0x1

    .line 1792
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 1793
    :cond_56
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_58

    if-eqz v13, :cond_57

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v22

    if-nez v22, :cond_57

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_58

    const/4 v13, 0x5

    move/from16 v0, v21

    if-ne v0, v13, :cond_58

    .line 1795
    :cond_57
    const/4 v2, 0x1

    move/from16 v25, v8

    move v8, v2

    move/from16 v2, v25

    goto/16 :goto_24

    .line 1796
    :cond_58
    const/4 v13, 0x1

    if-ne v2, v13, :cond_c9

    if-eqz v11, :cond_59

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/16 v22, 0x0

    aget-object v13, v13, v22

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v13

    if-nez v13, :cond_59

    const/4 v13, 0x1

    if-ne v11, v13, :cond_c9

    const/4 v11, 0x5

    move/from16 v0, v20

    if-ne v0, v11, :cond_c9

    .line 1798
    :cond_59
    const/4 v8, 0x0

    .line 1799
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 1815
    :catch_2
    move-exception v8

    .line 1816
    const-string v11, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    move v11, v2

    goto/16 :goto_26

    .line 1843
    :cond_5b
    const/4 v8, 0x0

    goto/16 :goto_27

    .line 1845
    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_28

    .line 1848
    :cond_5d
    const/4 v8, 0x0

    goto/16 :goto_29

    .line 1850
    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 1852
    :cond_5f
    const-string v13, "feature_multisim"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 1853
    if-eqz v4, :cond_60

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v4, v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v8, 0x1

    .line 1855
    :goto_2f
    if-eqz v4, :cond_61

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v4, v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    goto/16 :goto_2a

    .line 1853
    :cond_60
    const/4 v8, 0x0

    goto :goto_2f

    .line 1855
    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 1887
    :cond_62
    const/4 v8, 0x0

    goto/16 :goto_2b

    .line 1890
    :cond_63
    const-string v8, "com.android.phone.videocall"

    goto/16 :goto_2c

    .line 1895
    :cond_64
    const-string v8, "OutgoingCallBroadcaster"

    const-string v13, "For VOICE CALL"

    invoke-static {v8, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_66

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1897
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 1898
    const-string v8, "*77#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_65

    const-string v8, "*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_66

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_66

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1900
    :cond_65
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "can not DualNumber call in roaming area"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f090727

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1902
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1909
    :cond_66
    const-string v8, "service_callmessage"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 1910
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pLetteringText: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setLettering(Ljava/lang/String;)V

    .line 1914
    :cond_67
    if-eqz v2, :cond_68

    .line 1915
    const-string v8, "OutgoingCallBroadcaster"

    const-string v13, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Use ACTION_CALL_EMERGENCY as an action instead."

    invoke-static {v8, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string v8, "android.intent.action.CALL_EMERGENCY"

    .line 1921
    :goto_30
    const-string v13, "OutgoingCallBroadcaster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " - updating action from CALL_PRIVILEGED to "

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2d

    .line 1919
    :cond_68
    const-string v8, "android.intent.action.CALL"

    goto :goto_30

    .line 1944
    :cond_69
    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2e

    .line 1956
    :cond_6a
    const-string v2, "support_dongle_function"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1957
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "Modem only device USSD command"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1960
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v2, v11

    .line 1965
    :goto_31
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1966
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1962
    :cond_6b
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_31

    .line 1971
    :cond_6c
    const/4 v2, 0x0

    .line 1973
    if-eqz v19, :cond_c5

    .line 1974
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "ACTION_CALL For B2B APP VIDEO CALL"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string v8, "com.android.phone.videocall"

    .line 1976
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const/4 v2, 0x0

    move-object v13, v8

    .line 2030
    :goto_32
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v14, 0x2

    if-ne v8, v14, :cond_79

    .line 2031
    const-string v8, "com.android.phone.extra.FLASH_DTMF"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2032
    const-string v14, "OutgoingCallBroadcaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DTMFflag = "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_78

    if-nez v19, :cond_78

    .line 2034
    if-eqz v8, :cond_75

    .line 2035
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 2036
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 2037
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 2038
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setEmptyFlash(Z)V

    .line 2039
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1979
    :cond_6d
    const-string v14, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_71

    .line 1987
    if-nez v2, :cond_6e

    .line 1988
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot call non-potential-emergency number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with EMERGENCY_CALL Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Finish the Activity immediately."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1995
    :cond_6e
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1996
    const-string v2, "simId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1997
    const-string v2, "simId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1998
    const-string v13, "simId"

    const/4 v14, 0x1

    if-ne v2, v14, :cond_70

    const/4 v2, 0x1

    :goto_33
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    :cond_6f
    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    const/4 v2, 0x1

    move-object v13, v8

    goto/16 :goto_32

    .line 1998
    :cond_70
    const/4 v2, 0x0

    goto :goto_33

    .line 2005
    :cond_71
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2006
    const-string v2, "OutgoingCallBroadcaster"

    const-string v13, "Inside VIDEO CALL INTENT ACTION from Dialer for U1"

    invoke-static {v2, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/4 v2, 0x0

    move-object v13, v8

    goto/16 :goto_32

    .line 2009
    :cond_72
    if-eqz v13, :cond_74

    const-string v2, "com.android.phone.emergency_call_notification_intent"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2011
    const-class v2, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ecn_ussd - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ECNUtils;->log(Ljava/lang/String;)V

    .line 2014
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2015
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v2, v11

    .line 2019
    :goto_34
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2017
    :cond_73
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_34

    .line 2024
    :cond_74
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Finish the Activity immediately."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2046
    :cond_75
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v14, v15, :cond_76

    .line 2047
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_76

    .line 2048
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f09055b

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2051
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "Not Surport 3rd Call in roaming area!!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2057
    :cond_76
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->fgConnectionsIsIncoming()Z

    move-result v14

    if-nez v14, :cond_77

    .line 2058
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isThrWayCallAvailable(Ljava/lang/String;)Z

    move-result v14

    .line 2059
    if-nez v14, :cond_78

    .line 2060
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "No Service 3rd Call!!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f09055c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2064
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2068
    :cond_77
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v14

    if-eqz v14, :cond_78

    .line 2070
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 2071
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 2072
    sget-object v14, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsExt;->setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V

    .line 2078
    :cond_78
    if-eqz v8, :cond_79

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v14, :cond_79

    .line 2079
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "phone state is idle.. cannot flash with dtmf"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2085
    :cond_79
    const-string v8, "restrict_international_call"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 2087
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->OutgoingCallAbroad(Ljava/lang/String;)Z

    move-result v8

    .line 2088
    if-nez v12, :cond_7a

    if-nez v8, :cond_7a

    .line 2089
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f090512

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2097
    :cond_7a
    const-string v8, "disable_call_in_external_screen"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 2098
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v14, "answering_call_in_external_screen"

    const/4 v15, 0x1

    invoke-static {v8, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_7c

    const/4 v8, 0x1

    .line 2100
    :goto_35
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    .line 2101
    invoke-virtual {v15}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v14

    if-nez v14, :cond_7b

    invoke-virtual {v15}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v14

    if-eqz v14, :cond_7d

    :cond_7b
    const/4 v14, 0x1

    .line 2102
    :goto_36
    if-nez v8, :cond_7e

    invoke-virtual {v15}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v8

    if-nez v8, :cond_7e

    if-nez v14, :cond_7e

    .line 2103
    const v2, 0x7f090300

    const/4 v3, 0x1

    invoke-static {v15, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2104
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2098
    :cond_7c
    const/4 v8, 0x0

    goto :goto_35

    .line 2101
    :cond_7d
    const/4 v14, 0x0

    goto :goto_36

    .line 2109
    :cond_7e
    const-string v8, "support_nsri_secure"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2110
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2111
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f0901a7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2114
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2119
    :cond_7f
    const/4 v14, 0x1

    .line 2121
    const-string v8, "support_one_touch_report"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_80

    const-string v8, "support_emergency_report_helper_app"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 2123
    :cond_80
    const-string v8, "112"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 2124
    const-string v8, "startFlag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2125
    sget-boolean v8, Lcom/android/phone/OutgoingCallBroadcaster;->SAFE_DEBUG:Z

    if-eqz v8, :cond_c4

    .line 2126
    const-string v8, "002"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    const-string v8, "114"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    const/4 v8, 0x1

    :goto_37
    or-int/2addr v8, v15

    .line 2128
    :goto_38
    if-eqz v8, :cond_c3

    .line 2129
    if-nez v20, :cond_81

    const-string v8, "startFlag"

    const-string v15, "001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2130
    :cond_81
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsExt;->isOneTouchReportEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 2131
    const-string v8, "002"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c3

    const/4 v8, 0x0

    .line 2145
    :goto_39
    if-eqz v8, :cond_82

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 2150
    :cond_82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 2151
    const-string v2, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2152
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 2154
    invoke-static {v11}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 2158
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2126
    :cond_83
    const/4 v8, 0x0

    goto :goto_37

    .line 2156
    :cond_84
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    goto :goto_3a

    .line 2161
    :cond_85
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v2, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2163
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "change action video to voice call"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    const-string v2, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2166
    const-string v2, "simId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2169
    :cond_86
    const/4 v2, 0x1

    move v14, v2

    .line 2173
    :goto_3b
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "kor_cs_vt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 2174
    :cond_87
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    if-nez v14, :cond_8d

    .line 2175
    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    .line 2187
    :cond_88
    :goto_3c
    if-eqz v14, :cond_98

    .line 2192
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate(): callNow case! Calling placeCall(): "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x1

    invoke-static {v2, v8, v15}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2195
    const-string v2, "disable_usb30_on_e911"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 2196
    const-string v2, "usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 2197
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isUsb30Enabled(): "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2199
    const-string v8, "OutgoingCallBroadcaster"

    const-string v15, "disable usb 3.0"

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v8, v15, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2200
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 2209
    :cond_89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2212
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "getIMSPhone..."

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 2215
    const/4 v2, 0x0

    .line 2216
    const-string v15, "common_volte_vt_kor"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8a

    const-string v15, "isDirect1xCall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8a

    .line 2217
    const-string v2, "isDirect1xCall"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2219
    :cond_8a
    const-string v15, "feature_kor"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8b

    const-string v15, "feature_kor"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8c

    const-string v15, "single_lte"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 2221
    :cond_8b
    if-nez v2, :cond_8c

    if-eqz v8, :cond_8c

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_8c

    .line 2223
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "IMS is enabled , place IMS emergency call"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->convertCallToIMS(Landroid/content/Intent;I)V

    .line 2231
    :cond_8c
    const-string v2, "ecbm_emergency_calls_only_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string v2, "ril.cdma.inecmmode"

    const-string v8, "false"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    if-nez v12, :cond_8e

    .line 2234
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2177
    :cond_8d
    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V

    goto/16 :goto_3c

    .line 2236
    :cond_8e
    const-string v2, "usa_spr_roaming_feature"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    if-nez v12, :cond_91

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8f

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v2

    if-nez v2, :cond_90

    :cond_8f
    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_91

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2242
    :cond_90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2244
    :cond_91
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9c

    const-string v2, "usa_cdma_emergency_concept"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    if-eqz v12, :cond_9c

    .line 2247
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2248
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 2249
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v15, "emergency_tone"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v8, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2250
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 2252
    const-string v15, "emergency_tone_alert_always"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_92

    const/4 v15, 0x1

    if-ne v8, v15, :cond_95

    const/4 v8, 0x1

    if-eq v2, v8, :cond_95

    if-eqz v2, :cond_95

    const-string v2, "emergency_tone_alert_master_vol"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2256
    :cond_92
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2257
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_94

    .line 2259
    :try_start_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_93

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2261
    :cond_93
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v15, 0x0

    const/16 v20, 0x50

    move/from16 v0, v20

    invoke-direct {v2, v15, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2270
    :cond_94
    :goto_3d
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2271
    const/16 v2, 0x5d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->emergencyPlayTone(I)V

    .line 2273
    :cond_95
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2274
    :try_start_6
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2275
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_96

    .line 2276
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->hideOtaSpeakerButton()V

    .line 2277
    :cond_96
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    .line 2278
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneGlobals;->clearInCallScreenMode()V

    .line 2280
    :cond_97
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 2281
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2296
    :cond_98
    :goto_3e
    const-string v2, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2297
    if-eqz v2, :cond_9d

    .line 2298
    const-string v8, "OutgoingCallBroadcaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " - Call origin is passed ("

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2315
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 2316
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2317
    if-nez v14, :cond_99

    const-string v15, "sip"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    :cond_99
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2319
    :cond_9a
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 2320
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f090448

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2323
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2263
    :cond_9b
    :try_start_7
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v15, 0x4

    const/16 v20, 0x5a

    move/from16 v0, v20

    invoke-direct {v2, v15, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3d

    .line 2265
    :catch_3
    move-exception v2

    .line 2266
    :try_start_8
    const-string v15, "OutgoingCallBroadcaster"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3d

    .line 2270
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 2281
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    .line 2283
    :cond_9c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto/16 :goto_3e

    .line 2301
    :cond_9d
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, " - Call origin is not passed. Reset current one."

    const/4 v15, 0x1

    invoke-static {v2, v8, v15}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2302
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->resetLatestActiveCallOrigin()V

    goto/16 :goto_3f

    .line 2326
    :cond_9e
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "The requested number was detected as SIP call."

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2327
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    .line 2328
    invoke-direct/range {v5 .. v11}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2334
    :goto_40
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2329
    :cond_9f
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    move/from16 v11, v16

    .line 2330
    invoke-direct/range {v5 .. v11}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_40

    :cond_a0
    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    .line 2332
    invoke-direct/range {v5 .. v10}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 2342
    :cond_a1
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2347
    const-string v2, "ims_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 2348
    const-string v2, "android.phone.calltype"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2349
    const-string v15, "android.phone.calltype"

    invoke-virtual {v10, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2351
    const-string v15, "isDirect1xCall"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 2352
    const-string v20, "isDirect1xCall"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2354
    const-string v15, "OutgoingCallBroadcaster"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnCreate --isCallTypeSelected >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    const-string v2, "auto_test"

    const-string v15, "auto_test"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2357
    const-string v2, "emergency_contact_item"

    const-string v15, "emergency_contact_item"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2358
    const-string v2, "callmessage"

    const-string v15, "callmessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    :cond_a2
    if-eqz v4, :cond_a3

    .line 2362
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2365
    :cond_a3
    const-string v2, "ims_conference_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    const-string v2, "IS_CONF_CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2366
    const-string v2, "IS_CONF_CALL"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2367
    const-string v15, "IS_CONF_CALL"

    invoke-virtual {v10, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2368
    const-string v15, "service_mirrorcall"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 2369
    const-string v15, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v10, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2373
    :cond_a4
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2374
    :cond_a5
    if-nez v18, :cond_a6

    if-eqz v19, :cond_a7

    .line 2375
    :cond_a6
    const-string v2, "android.intent.extra.VTCallDialer"

    const/4 v15, 0x1

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2377
    :cond_a7
    const-string v2, "auto_test"

    const-string v15, "auto_test"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2378
    const-string v2, "emergency_contact_item"

    const-string v15, "emergency_contact_item"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2381
    :cond_a8
    const-string v2, "isDirect1xCall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 2382
    const-string v2, "isDirect1xCall"

    const-string v15, "isDirect1xCall"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2385
    :cond_a9
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2386
    const-string v2, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v10, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2387
    const-string v2, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2389
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 2390
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v8, "android.phone.extra.CALL_DIRECTCALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2392
    :cond_aa
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2393
    const-string v2, "simId"

    invoke-virtual {v10, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2395
    :cond_ab
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 2396
    const-string v2, "simSlot"

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2399
    :cond_ac
    const-string v2, "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 2401
    const-string v2, "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2402
    const-string v8, "left"

    if-ne v8, v2, :cond_b4

    .line 2403
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "hearing_direction"

    const/4 v11, 0x0

    invoke-static {v2, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2404
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "set Left for My sound"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_ad
    :goto_41
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 2415
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "Inside VIDEO CALL INTENT ACTION from Dialer only for U1"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const-string v2, "android.phone.extra.calltype"

    const/4 v8, 0x2

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2423
    :goto_42
    const-string v2, "ipcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    if-nez v9, :cond_af

    .line 2424
    if-eqz v4, :cond_af

    .line 2425
    const/4 v2, 0x0

    .line 2426
    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 2427
    const-string v8, "simnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 2428
    const-string v2, "simnum"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2431
    :cond_ae
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2432
    const-string v2, "ctc_voicecall_additional_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 2433
    const-string v2, "ipcall"

    const/4 v8, 0x1

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2438
    :cond_af
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2439
    const-string v2, "simnum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2440
    const-string v2, "simnum"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2441
    const-string v8, "simnum"

    invoke-virtual {v10, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2445
    :cond_b0
    const-string v2, "us_cdma_call_fowarding"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2446
    const-string v2, "origin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2447
    const-string v8, "us_cdma_call_fowarding_setting"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 2448
    const-string v8, "origin"

    invoke-virtual {v10, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2452
    :cond_b1
    const-string v2, "ctc_roamingcall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 2453
    const-string v2, "ctc_roamingcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2454
    const-string v2, "ctc_roamingcall"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2455
    const-string v8, "ctc_roamingcall"

    invoke-virtual {v10, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2457
    :cond_b2
    const-string v2, "ctc_133callbackcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 2458
    const-string v2, "ctc_133callbackcall"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2459
    const-string v8, "ctc_133callbackcall"

    invoke-virtual {v10, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2463
    :cond_b3
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "onCreate: Broadcasting: "

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const/high16 v2, 0x1000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2467
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - Broadcasting intent: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v13, 0x7d0

    invoke-virtual {v2, v8, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2476
    const-string v2, "ecbm_emergency_calls_only_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    const-string v2, "ril.cdma.inecmmode"

    const-string v8, "false"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    if-nez v12, :cond_b7

    .line 2479
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2405
    :cond_b4
    const-string v8, "right"

    if-ne v8, v2, :cond_b5

    .line 2406
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "hearing_direction"

    const/4 v11, 0x1

    invoke-static {v2, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2407
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "set Right for My sound"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 2409
    :cond_b5
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "Not valid direction value"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 2419
    :cond_b6
    const-string v2, "OutgoingCallBroadcaster"

    const-string v8, "Inside VOICE CALL INTENT ACTION from Dialer for U1"

    invoke-static {v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const-string v2, "android.phone.extra.calltype"

    const/4 v8, 0x1

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_42

    .line 2480
    :cond_b7
    const-string v2, "north_american_dialing_plan_for_voicemail"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/phone/OutgoingCallBroadcaster;->isVoicemail(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isNorthAmericanDialingPlanCountry()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 2483
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2484
    :cond_b8
    const-string v2, "usa_spr_roaming_feature"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    if-nez v12, :cond_bb

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_b9

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v2

    if-nez v2, :cond_ba

    :cond_b9
    const-string v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_bb

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 2490
    :cond_ba
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2492
    :cond_bb
    const-string v2, "feature_preferred_sim_card_dsds"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bc

    if-nez v9, :cond_bd

    :cond_bc
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNoSim()Z

    move-result v2

    if-nez v2, :cond_bf

    const/4 v2, 0x3

    if-ne v7, v2, :cond_bf

    sget-object v2, Lcom/android/phone/OutgoingCallBroadcaster;->DS_EXTRA_SIM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bf

    if-nez v5, :cond_bf

    if-eqz v3, :cond_bf

    const-string v2, "feature_multisim_ver2"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf

    const-string v2, "voicemail"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 2496
    :cond_bd
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "Show Sim select popup"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;

    .line 2498
    const-string v2, "ipcall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;

    const-string v3, "ipcall"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2500
    :cond_be
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;

    .line 2501
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 2492
    :cond_bf
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isNoSim()Z

    move-result v2

    if-nez v2, :cond_c0

    if-eqz v9, :cond_c0

    const-string v2, "simSlot_Ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    if-eqz v3, :cond_c0

    if-nez v5, :cond_c0

    const-string v2, "feature_multisim_ver2"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_bd

    .line 2503
    :cond_c0
    const-string v2, "ims_auto_call_test"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 2504
    const-string v2, "auto_test"

    const-string v3, "auto_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2506
    :cond_c1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c2
    move v14, v2

    goto/16 :goto_3b

    :cond_c3
    move v8, v14

    goto/16 :goto_39

    :cond_c4
    move v8, v15

    goto/16 :goto_38

    :cond_c5
    move-object v13, v8

    goto/16 :goto_32

    :cond_c6
    move-object v8, v13

    goto/16 :goto_2c

    :cond_c7
    move-object v8, v14

    goto/16 :goto_2d

    :cond_c8
    move/from16 v25, v2

    move v2, v8

    move/from16 v8, v25

    goto/16 :goto_25

    :cond_c9
    move/from16 v25, v8

    move v8, v2

    move/from16 v2, v25

    goto/16 :goto_24

    :cond_ca
    move v8, v2

    move v2, v13

    goto/16 :goto_22

    :cond_cb
    move v2, v13

    goto/16 :goto_23

    :cond_cc
    move v2, v8

    goto/16 :goto_15

    :cond_cd
    move-object v2, v8

    goto/16 :goto_14

    :cond_ce
    move v12, v2

    goto/16 :goto_13

    :cond_cf
    move v2, v8

    goto/16 :goto_1c

    :cond_d0
    move/from16 v16, v11

    move v15, v8

    goto/16 :goto_10

    :cond_d1
    move/from16 v25, v2

    move-object v2, v4

    move/from16 v4, v25

    goto/16 :goto_c

    :cond_d2
    move-object v4, v2

    goto/16 :goto_e

    :cond_d3
    move v2, v5

    goto/16 :goto_7

    :cond_d4
    move v9, v5

    move v5, v6

    move-object v6, v7

    move v7, v4

    goto/16 :goto_5

    :cond_d5
    move v9, v5

    move v5, v3

    move v3, v6

    move-object v6, v7

    move v7, v4

    goto/16 :goto_5

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showCallRoamingGuard(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2960
    const-string v0, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2961
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2962
    if-ne v0, v2, :cond_1

    .line 2963
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2964
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 2965
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 2966
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 2984
    :cond_0
    :goto_0
    return-void

    .line 2968
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2971
    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2972
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 2973
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 2974
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2977
    :cond_3
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

    .line 2979
    :cond_4
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 2981
    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 2982
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2918
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v4, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    invoke-direct {v4, p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/ContextWrapper;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2923
    return-void
.end method

.method private startSipCallForCommon(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f090448

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 861
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    .line 862
    const-string v0, "android.phone.extra.calltype"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 865
    const/4 v5, 0x2

    if-ne v0, v5, :cond_12

    .line 866
    const-string v0, "OutgoingCallBroadcaster"

    const-string v5, "Inside Video call type"

    invoke-static {v0, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v0, "common_volte_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 872
    :goto_0
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "common_volte_vt"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 875
    :cond_0
    if-eqz v0, :cond_1c

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 876
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 879
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_e

    :cond_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 882
    const-string v0, "video_call_disable"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "kor_cs_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 883
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 886
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1022
    :goto_2
    return v1

    :cond_2
    move v0, v2

    .line 869
    goto :goto_0

    .line 890
    :cond_3
    const-string v0, "feature_sglte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 891
    const-string v0, "persist.radio.voice.modem.index"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 892
    const-string v0, "gsm.operator.numeric"

    const-string v5, "true"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 895
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1b

    .line 896
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 899
    :goto_3
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modem.index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " operatorNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MCC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v4, v1, :cond_4

    .line 902
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v3, 0x7f0908e0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 905
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-class v3, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 911
    const-string v0, "ims_vt_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 912
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "auto_test"

    const-string v4, "auto_test"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    :cond_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    const-string v0, "simnum"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 917
    const-string v0, "simnum"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 921
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->setVTSimNumber(I)V

    .line 922
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "make Video call by SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_6
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "Videocalltype"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 928
    const-string v0, "support_vtincomingcall_penwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "support_kk_vt_tablet_multiwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 929
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 930
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    .line 931
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    move v8, v0

    move v0, v3

    move v3, v8

    .line 933
    :goto_5
    if-eqz v0, :cond_8

    if-nez v3, :cond_9

    .line 935
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCameraAppRunning()Z

    move-result v3

    if-nez v3, :cond_9

    .line 936
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v5, 0x2830800

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 944
    :cond_9
    :goto_6
    const-string v3, "support_kk_vt_tablet_multiwindow"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 947
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 948
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 949
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 950
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 951
    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v3, v6

    add-int/2addr v4, v5

    invoke-direct {v7, v6, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 953
    if-nez v0, :cond_a

    .line 954
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    .line 959
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getVTPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_15

    .line 962
    :cond_c
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 919
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCurrentNetworkPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 969
    :cond_e
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_18

    move v0, v1

    .line 973
    :goto_7
    const-string v3, "common_volte_vt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v0, :cond_10

    .line 975
    :cond_f
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "Inside Video call type : This model or BS not support VoLte VT"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 979
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 983
    :cond_10
    const-string v0, "common_volte_vt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 984
    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v3, :cond_11

    move v0, v1

    .line 985
    :goto_8
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneIsUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    if-eqz v0, :cond_15

    .line 987
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f09052a

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 988
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :cond_11
    move v0, v2

    .line 984
    goto :goto_8

    .line 994
    :cond_12
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "Inside Voice call type"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v0, "1521044"

    .line 997
    const-string v0, "0000"

    .line 998
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p4, :cond_13

    const-string v0, "1521044"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    if-eqz p4, :cond_17

    const-string v0, "0000"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1001
    :cond_14
    if-eqz p4, :cond_16

    const-string v0, "1521044"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1002
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "FIND_LOST_PHONE - making cs call"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "isDirect1xCall"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_15
    :goto_9
    move v1, v2

    .line 1022
    goto/16 :goto_2

    .line 1004
    :cond_16
    if-eqz p4, :cond_15

    const-string v0, "0000"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1005
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "FIND_LOST_PHONE_TO_OWNER - making cs call"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "isDirect1xCall"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 1008
    :cond_17
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p4, :cond_15

    const-string v0, "118"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1009
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "making 1x call because 118 number is only 1x call (SKT spec)"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "isDirect1xCall"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    :cond_18
    move v0, v2

    goto/16 :goto_7

    :cond_19
    move v3, v2

    move v0, v2

    goto/16 :goto_5

    :cond_1a
    move v0, v2

    goto/16 :goto_6

    :cond_1b
    move-object v0, v3

    goto/16 :goto_3

    :cond_1c
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private startSipCallForImsVoLTE(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1029
    const-string v1, "android.phone.extra.calltype"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1032
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 1033
    :goto_0
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneInUse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1036
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    .line 1037
    :goto_1
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTEConnected - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v3, "android.phone.calltype"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1040
    const-string v4, "isDirect1xCall"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1041
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHOSEN_CALLTYPE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "....FOR_AUTO_DIVERT_TO_VOICE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v5, 0x1

    if-ne v2, v5, :cond_11

    .line 1046
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v2

    .line 1047
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v5

    .line 1048
    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->isImsRegisteredForVoLTE()Z

    move-result v6

    .line 1049
    const-string v7, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside Voice call type - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const-string v7, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isImsRegistered - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v7, "OutgoingCallBroadcaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isImsRegisteredForVoLTE - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v7, "emergency_contact_item"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1054
    if-eqz v7, :cond_3

    .line 1157
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1159
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 1032
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 1036
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1056
    :cond_3
    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    if-eqz v0, :cond_e

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v4, :cond_e

    .line 1057
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "ims is registered and call type is volte"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v0, "persist.sys.ims.volte_supported"

    const-string v2, "-1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1062
    const-string v0, "1521044"

    .line 1063
    const-string v0, "0000"

    .line 1064
    const-string v0, "hd_voice_network_prefer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hd_voice_network_pref"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 1066
    :goto_4
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3G HD Voice preferred = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1067
    if-nez v0, :cond_0

    .line 1070
    :cond_4
    const/4 v0, -0x1

    if-eq v0, v2, :cond_6

    const/4 v0, 0x1

    if-ne v0, v2, :cond_6

    .line 1071
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making 1x call because of unsupported volte header"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1065
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1075
    :cond_6
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_7

    const-string v0, "118"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1076
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making 1x call because 118 number is only 1x call (SKT spec)"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1080
    :cond_7
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p4, :cond_8

    const-string v0, "1521044"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    if-eqz p4, :cond_b

    const-string v0, "0000"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1083
    :cond_9
    if-eqz p4, :cond_a

    const-string v0, "1521044"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1084
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "FIND_LOST_PHONE - making cs call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1086
    :cond_a
    if-eqz p4, :cond_0

    const-string v0, "0000"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "FIND_LOST_PHONE_TO_OWNER - making cs call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1091
    :cond_b
    if-nez v1, :cond_d

    .line 1092
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "auto_test"

    const-string v2, "auto_test"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "android.phone.extra.speakeron"

    sget-boolean v2, Lcom/android/phone/PhoneUtils;->mSpeakerOnByExtra:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "android.phone.extra.drivingmode"

    sget-boolean v2, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "callmessage"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making VOLTE call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1098
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSecImsCallStateSrvcc(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.sec.imsphone"

    const-string v2, "com.sec.imsphone.ImsCallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    :goto_5
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.MAKE_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1101
    :cond_c
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.sec.imsphone"

    const-string v2, "com.sec.imsphone.InCallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 1108
    :cond_d
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making VOLTE call - else"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1112
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1115
    :cond_e
    if-eqz v5, :cond_f

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->isCSCall(I)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    .line 1117
    :cond_f
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making 1x call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1122
    :cond_10
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "call type is choose while calling"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1126
    :cond_11
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 1127
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "Inside Video call type"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-nez v1, :cond_14

    .line 1129
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p4, :cond_12

    const-string v0, "118"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1130
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "making 1x call because 118 number is only 1x call (SKT spec)"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "android.phone.extra.CALL_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1132
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 1133
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1135
    :cond_12
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "auto_test"

    const-string v2, "auto_test"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "emergency_contact_item"

    const-string v2, "emergency_contact_item"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1137
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "callmessage"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const-string v0, "feature_srvcc_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1140
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setSecImsCallStateSrvcc(Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.sec.imsphone"

    const-string v2, "com.sec.imsphone.ImsCallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    :goto_6
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "Videocalltype"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.MAKE_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1149
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1143
    :cond_13
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "com.sec.imsphone"

    const-string v2, "com.sec.imsphone.InCallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 1151
    :cond_14
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Inside Video call type - else"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09052a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1154
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "uri"
    .parameter "number"
    .parameter "pLetteringText"

    .prologue
    .line 676
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 677
    return-void
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 682
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "startSipCallOptionHandler..."

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 692
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v3, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    .line 693
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 696
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "simId"

    invoke-virtual {v3, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    :cond_0
    :goto_0
    const-string v3, "ims_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 702
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    :cond_1
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-static {p2, v3}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 706
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-static {p2, v3}, Lcom/android/phone/PhoneUtils;->copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 708
    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 711
    if-ne v3, v1, :cond_e

    .line 712
    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v5, "android.phone.extra.CALL_TYPE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    :goto_1
    const-string v4, "android.phone.extra.CALL_DIRECTCALL"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v5, "android.phone.extra.CALL_DIRECTCALL"

    const-string v6, "android.phone.extra.CALL_DIRECTCALL"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    :cond_2
    const-string v4, "roaming_auto_dial"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 724
    const-string v4, "ims_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    if-ne v3, v7, :cond_4

    .line 726
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 727
    const-string v4, "OutgoingCallBroadcaster"

    const-string v5, "startSipCallOptionHandler, IMS_VOLTE : true "

    invoke-static {v4, v5, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 729
    :cond_4
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p4}, Lcom/android/internal/telephony/Phone;->isMMICode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 731
    const-string v0, "OutgoingCallBroadcaster"

    const-string v4, "startSipCallOptionHandler, isMMICode : true "

    invoke-static {v0, v4, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 733
    :cond_6
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTSIM()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 735
    :cond_8
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 736
    const-string v0, "OutgoingCallBroadcaster"

    const-string v4, "startSipCallOptionHandler, Not skt usim : true "

    invoke-static {v0, v4, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 738
    :cond_9
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 739
    :cond_a
    const-string v0, "ril.currentsystem"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    if-ne v3, v7, :cond_b

    .line 741
    const-string v4, "2G"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 742
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 743
    const-string v0, "OutgoingCallBroadcaster"

    const-string v4, "startSipCallOptionHandler, network_regist_videocall : true "

    invoke-static {v0, v4, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 747
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    if-nez v0, :cond_f

    .line 748
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "Inside Roaming Auto Dial type"

    invoke-static {v0, v2, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 749
    invoke-static {p3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallUri(Landroid/net/Uri;)V

    .line 750
    invoke-static {p4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/phone/RoamingAutoDialOption;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 753
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v1, "android.phone.extra.calltype"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 856
    :cond_c
    :goto_2
    return-void

    .line 697
    :cond_d
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 698
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "simSlot"

    invoke-virtual {v3, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 714
    :cond_e
    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v5, "android.phone.extra.CALL_TYPE"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 760
    :cond_f
    const-string v0, "try_to_regi_ims"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 761
    if-ne v3, v1, :cond_1c

    .line 762
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 763
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1a

    move v0, v1

    .line 764
    :goto_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->isVoLTECall(I)Z

    move-result v4

    .line 765
    const-string v3, "hd_voice_network_prefer"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 766
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hd_voice_network_pref"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1b

    move v3, v1

    .line 767
    :goto_4
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3G HD Voice preferred = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 768
    if-eqz v3, :cond_1e

    move v3, v2

    .line 770
    :goto_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v4

    .line 771
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLteConnected - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isVolteMode - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isImsRegistered - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    if-nez v4, :cond_10

    .line 773
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "LTE on, Volte Mode, but IMS is not registered"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.TRY_TO_REGI_IMS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 788
    :cond_10
    :goto_6
    const-string v0, "ims_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 791
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallForImsVoLTE(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 802
    :cond_11
    const-string v0, "ims_auto_call_test"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 803
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "auto_test"

    const-string v4, "auto_test"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    :cond_12
    const-string v0, "ims_conference_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "IS_CONF_CALL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 807
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "IS_CONF_CALL"

    const-string v4, "IS_CONF_CALL"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 810
    :cond_13
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "isDirect1xCall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 811
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "isDirect1xCall"

    const-string v4, "isDirect1xCall"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    :cond_14
    const-string v0, "ctc_roamingcall"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 815
    const-string v0, "ctc_roamingcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 816
    const-string v0, "ctc_roamingcall"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 817
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "ctc_roamingcall"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    :cond_15
    const-string v0, "ctc_133callbackcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 820
    const-string v0, "ctc_133callbackcall"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 821
    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v4, "ctc_133callbackcall"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    :cond_16
    const-string v0, "ctc_voicecall_additional_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 826
    const-string v0, "ipcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 827
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v3, "ipcall"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    :cond_17
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 832
    const-string v0, "simnum"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 833
    const-string v0, "simnum"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 834
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    const-string v2, "simnum"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 839
    const-class v1, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 840
    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->newIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 841
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 843
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v1, "us_cdma_call_fowarding"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 847
    const-string v1, "origin"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    const-string v2, "us_cdma_call_fowarding_setting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 849
    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    :cond_19
    const-string v1, "OutgoingCallBroadcaster"

    const-string v2, "startSipCallOptionHandler(): calling startActivity"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1a
    move v0, v2

    .line 763
    goto/16 :goto_3

    :cond_1b
    move v3, v2

    .line 766
    goto/16 :goto_4

    .line 777
    :cond_1c
    if-ne v3, v7, :cond_10

    .line 778
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v0

    .line 779
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to place video call, isImsRegistered - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    if-nez v0, :cond_10

    .line 781
    const-string v0, "OutgoingCallBroadcaster"

    const-string v3, "IMS is not registered. Send broadcast intent for regi ims"

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 782
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.TRY_TO_REGI_IMS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 797
    :cond_1d
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallForCommon(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_2

    :cond_1e
    move v3, v4

    goto/16 :goto_5
.end method

.method private syncPhoneAudio(I)V
    .locals 4
    .parameter

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3056
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3057
    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudio:Landroid/os/Handler;

    .line 3058
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncAudio simid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3061
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z

    .line 3062
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudio:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3063
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "phone.syncAudio"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtilsDsds;->syncAudio(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3067
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3071
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3073
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3075
    iget-boolean v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z

    if-nez v0, :cond_0

    .line 3076
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Can not sync audio before making call!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3080
    :cond_0
    return-void

    .line 3068
    :catch_0
    move-exception v0

    .line 3069
    :try_start_3
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "Time out, can not sync audio before making call!"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3071
    :try_start_4
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 3073
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3071
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2850
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeIpCallNum() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const-string v0, "feature_chn_duos_gsm_gsm"

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

    if-eqz v0, :cond_7

    .line 2857
    :cond_0
    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2858
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2864
    :goto_0
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentNetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    if-ne v0, v4, :cond_5

    .line 2867
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2872
    :goto_1
    if-nez v0, :cond_1

    .line 2873
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2874
    const-string v0, "17951"

    .line 2906
    :cond_1
    :goto_2
    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2907
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2908
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2912
    :cond_2
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2913
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIpCallNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " numberIpCall = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    return-object v1

    .line 2859
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2860
    const-string v0, "persist.radio.calldefault.simid"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 2862
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v0

    goto/16 :goto_0

    .line 2869
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2876
    :cond_6
    const-string v0, "17911"

    goto :goto_2

    .line 2879
    :cond_7
    const-string v0, "ctc_dual_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2880
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->phoneIsCdma()Z

    move-result v0

    if-nez v0, :cond_9

    if-ne p2, v4, :cond_a

    :cond_9
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 2881
    :cond_a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    if-nez v0, :cond_b

    .line 2883
    const-string v0, "17911"

    .line 2885
    :cond_b
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gsmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2888
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER_CDMA"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2889
    if-nez v0, :cond_d

    .line 2890
    const-string v0, "17901"

    .line 2892
    :cond_d
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2895
    :cond_e
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IP_CALL_NUMBER"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2896
    if-nez v0, :cond_1

    .line 2897
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2898
    const-string v0, "17951"

    goto/16 :goto_2

    .line 2900
    :cond_f
    const-string v0, "17911"

    goto/16 :goto_2

    .line 2909
    :cond_10
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2910
    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2829
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2830
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2821
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2822
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 2845
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2846
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 1177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1181
    const-string v0, "support_kk_vt_tablet_multiwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 1183
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 1190
    :cond_0
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 1191
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    .line 1193
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1195
    const-string v1, "OutgoingCallBroadcaster"

    const-string v2, "onCreate..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1198
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icicle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - configuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1215
    invoke-direct {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->hasActiveSecImsCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "CANNOT make 2nd IMS call!!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f0901a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1256
    :goto_0
    return-void

    .line 1223
    :cond_2
    if-eqz p1, :cond_3

    .line 1236
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    .line 1255
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At the end of onCreate(). isFinishing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f100062

    const/4 v0, 0x0

    const v5, 0x1010355

    const/4 v4, 0x1

    const v3, 0x104000a

    .line 2607
    packed-switch p1, :pswitch_data_0

    .line 2809
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v0, 0x0

    .line 2813
    :goto_0
    return-object v0

    .line 2609
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2615
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2619
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2625
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2629
    :pswitch_2
    const/4 v0, 0x0

    .line 2630
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2631
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2632
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2633
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2634
    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2635
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2644
    :cond_1
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$3;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$3;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$2;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2667
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2636
    :cond_2
    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 2639
    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2640
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0904ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2642
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2671
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$4;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$4;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2682
    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$5;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$5;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2691
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090738

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2698
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2702
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090537

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$6;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$6;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2712
    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$7;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$7;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2718
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 2722
    :pswitch_6
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2724
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2725
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2726
    const-string v3, "feature_multisim_ver2"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2727
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2729
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/PhoneMultiSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 2727
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 2738
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030128

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0907d5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/phone/OutgoingCallBroadcaster$8;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster$8;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/internal/telephony/ITelephony;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2800
    new-instance v1, Lcom/android/phone/OutgoingCallBroadcaster$9;

    invoke-direct {v1, p0}, Lcom/android/phone/OutgoingCallBroadcaster$9;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 2733
    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2734
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtilsDsds;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 2735
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtilsDsds;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    :cond_7
    move-object v0, v1

    goto :goto_3

    .line 2607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2835
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2836
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 0
    .parameter "isMultiWindowMode"

    .prologue
    .line 3088
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 3092
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2546
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2547
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2548
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2549
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2550
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2551
    const-string v0, "feature_preferred_sim_card_dsds"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim_ver2"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2552
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2555
    :cond_1
    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;

    .line 2556
    iput-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;

    .line 2558
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2559
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .parameter "zone"

    .prologue
    .line 3096
    return-void
.end method
