.class public Lcom/android/phone/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothPhoneService$4;,
        Lcom/android/phone/BluetoothPhoneService$CallNumber;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field public static mLastIndex:I


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field mNumActive:I

.field mNumHeld:I

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mRoam:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVoipService:Lcom/android/phone/BluetoothVoIPService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    .line 63
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    .line 103
    sput v2, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 63
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 78
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    .line 91
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 187
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$1;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 529
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$2;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 809
    new-instance v0, Lcom/android/phone/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothPhoneService$3;-><init>(Lcom/android/phone/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothPhoneService;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothPhoneService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    return-void
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .parameter "callState"

    .prologue
    const/4 v0, 0x6

    .line 1114
    sget-object v1, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1132
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :goto_0
    :pswitch_0
    return v0

    .line 1120
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1122
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1124
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1126
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1128
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1130
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I
    .locals 1
    .parameter "ringingState"
    .parameter "foregroundState"

    .prologue
    .line 1102
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_1

    .line 1104
    :cond_0
    const/4 v0, 0x4

    .line 1110
    :goto_0
    return v0

    .line 1105
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 1106
    const/4 v0, 0x2

    goto :goto_0

    .line 1107
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_3

    .line 1108
    const/4 v0, 0x3

    goto :goto_0

    .line 1110
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .locals 4
    .parameter "connection"
    .parameter "call"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, number:Ljava/lang/String;
    const/16 v1, 0x80

    .line 490
    .local v1, type:I
    if-nez p1, :cond_0

    .line 491
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 492
    if-nez p1, :cond_0

    .line 493
    const-string v2, "BluetoothPhoneService"

    const-string v3, "Could not get a handle on Connection object for the call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    .line 499
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 502
    :cond_1
    if-nez v0, :cond_2

    .line 503
    const-string v0, ""

    .line 505
    :cond_2
    new-instance v2, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    return-object v2
.end method

.method private getNumHeldCdma()I
    .locals 7

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, numHeld:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 457
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_0

    .line 458
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 460
    .local v1, curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 463
    .local v3, prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 465
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v4, :cond_2

    .line 466
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_1

    .line 467
    const/4 v2, 0x0

    .line 468
    const-string v4, "BluetoothPhoneService"

    const-string v5, "CONF 0 no call held"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v1           #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v3           #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    const-string v4, "BluetoothPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numHeld : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v2

    .line 470
    .restart local v1       #curr3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v3       #prev3WayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    const/4 v2, 0x1

    .line 472
    const-string v4, "BluetoothPhoneService"

    const-string v5, "CONF 1 call held"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_2
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v4, :cond_3

    .line 475
    const/4 v2, 0x1

    .line 477
    const-string v4, "BluetoothPhoneService"

    const-string v5, "3WAY"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumHeldUmts()I
    .locals 6

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, countHeld:I
    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v2

    .line 446
    .local v2, heldCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 447
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    return v1
.end method

.method private handleCdmaSetSecondCallState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 801
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 802
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 804
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_1

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 807
    :cond_1
    return-void
.end method

.method private handleCdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 795
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cdmaSwapSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    .line 797
    iput-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 798
    return-void

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleListCurrentCalls()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 416
    const-string v0, "BluetoothPhoneService"

    const-string v2, "handleListCurrentCalls for CS Call"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 418
    .local v8, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    .line 421
    .local v9, phoneType:I
    sput v1, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    .line 422
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsCdma()V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v6, ""

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 432
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/android/phone/BluetoothPhoneService;->listCurrentCallsGsm()V

    goto :goto_0

    .line 427
    :cond_1
    const-string v0, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    .locals 22
    .parameter "connection"

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    const-string v3, "feature_srvcc_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSecImsCallStateSrvcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const-string v3, "BluetoothPhoneService"

    const-string v4, "handlePreciseCallStateChange : return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    :try_start_1
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePreciseCallStateChange: CdmaCallsSwapped = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move/from16 v16, v0

    .line 261
    .local v16, oldNumActive:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v17, v0

    .line 262
    .local v17, oldNumHeld:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    .line 263
    .local v19, oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 264
    .local v15, oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v18, v0

    .line 266
    .local v18, oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .line 268
    .local v13, foregroundCall:Lcom/android/internal/telephony/Call;
    sget-boolean v3, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v3, :cond_2

    .line 269
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handlePreciseCallStateChange   foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    .line 277
    .local v21, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothPhoneService;->getCallNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call;)Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 279
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    .line 281
    .local v9, app:Lcom/android/phone/PhoneGlobals;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 282
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumHeldCdma prev : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldCdma()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 284
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumHeldCdma curr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_6

    .line 286
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 288
    .local v12, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v20

    .line 291
    .local v20, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v12, :cond_5

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way call state change. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IsThreeWayCallOrigStateDialing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 303
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_3

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$900(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$900(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 322
    :cond_3
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_4

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_4

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA 3way conf call. mNumActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumHeld: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$900(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 334
    :cond_4
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v3, :cond_5

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    if-nez v3, :cond_5

    .line 337
    const-string v3, "BluetoothPhoneService"

    const-string v4, "call handleCdmaSetSecondCallState false && (mNumActive + mNumHeld) == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    .line 341
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 347
    .end local v12           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v20           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    :goto_2
    const/4 v11, 0x0

    .line 348
    .local v11, callsSwitched:Z
    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_7

    .line 349
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swap; CONF -> THRWAY ; when 2nd call is incomming; app.cdmaPhoneCallState.IsThreeWayCallOrigStateDialing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v14

    .line 353
    .local v14, isGeneric:Z
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swap; CONF -> THRWAY ; isGeneric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_b

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_b

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v14, :cond_b

    .line 358
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 359
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swap; CONF -> THRWAY ; when 2nd call is incomming : callsSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isGeneric"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_3
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callsSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move/from16 v0, v16

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    move-object/from16 v0, v18

    #calls: Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    invoke-static {v3, v0}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$1000(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v11, :cond_0

    .line 373
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 375
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foregroundVoIPCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", backgroundVoIPCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v5, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_d

    .line 379
    const-string v3, "BluetoothPhoneService"

    const-string v4, "VoIP Call is ACTIVE. Send +CIEV 7,2, +CIEV:2,1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 252
    .end local v9           #app:Lcom/android/phone/PhoneGlobals;
    .end local v11           #callsSwitched:Z
    .end local v13           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v14           #isGeneric:Z
    .end local v15           #oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v16           #oldNumActive:I
    .end local v17           #oldNumHeld:I
    .end local v18           #oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .end local v19           #oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    .end local v21           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 274
    .restart local v13       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v15       #oldForegroundCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v16       #oldNumActive:I
    .restart local v17       #oldNumHeld:I
    .restart local v18       #oldRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .restart local v19       #oldRingingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 344
    .restart local v9       #app:Lcom/android/phone/PhoneGlobals;
    .restart local v21       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_a
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothPhoneService;->getNumHeldUmts()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    goto/16 :goto_2

    .line 361
    .restart local v11       #callsSwitched:Z
    .restart local v14       #isGeneric:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 362
    .local v10, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    const/4 v11, 0x1

    .line 365
    :goto_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBgndEarliestConnectionTime:J

    goto/16 :goto_3

    .line 362
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 382
    .end local v10           #backgroundCall:Lcom/android/internal/telephony/Call;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_e

    .line 383
    const-string v3, "BluetoothPhoneService"

    const-string v4, "VoIP Call is HOLDING. +CIEV:7,1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 386
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_12

    .line 389
    :cond_11
    const-string v3, "BluetoothPhoneService"

    const-string v4, "Resuming VoIP Call. Do not Send CIEV 1,0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_13

    .line 393
    const-string v3, "BluetoothPhoneService"

    const-string v4, "Reject incomming CS Call. Send CIEV 2,0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 396
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 401
    :cond_14
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v15, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 404
    :cond_15
    const-string v3, "BluetoothPhoneService"

    const-string v4, "Send +CIEV"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v6, v7}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$900(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 408
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/BluetoothPhoneService;->mCdmaCallsSwapped:Z

    .line 409
    const-string v3, "BluetoothPhoneService"

    const-string v4, "for CDMA : after phoneStateChanged : mCdmaCallsSwapped = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private handleQueryPhoneState()V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    iget v2, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, v4}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    #getter for: Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I
    invoke-static {v5}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->access$900(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 440
    :cond_0
    return-void
.end method

.method private declared-synchronized listCurrentCallsCdma()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 643
    monitor-enter p0

    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Lcom/android/internal/telephony/Connection;

    .line 644
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 645
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 647
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 650
    .local v5, ringingCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v3

    .line 651
    .local v3, isGeneric:Z
    const-string v6, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clcc : isGeneric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    .line 656
    sget-boolean v6, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 657
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 686
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_9

    .line 688
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    .line 696
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_a

    aget-object v6, v0, v2

    if-eqz v6, :cond_a

    .line 697
    aget-object v6, v0, v2

    invoke-direct {p0, v2, v6}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 658
    .end local v2           #i:I
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 661
    sget-boolean v6, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v6, :cond_4

    const-string v6, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 662
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 663
    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 643
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v1           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v3           #isGeneric:Z
    .end local v4           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 665
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v1       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #isGeneric:Z
    .restart local v4       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v9, :cond_7

    .line 667
    sget-boolean v6, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v6, :cond_6

    .line 668
    const-string v6, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 670
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 674
    :cond_7
    sget-boolean v6, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v6, :cond_8

    .line 675
    const-string v6, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v6}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 677
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    .line 678
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    aput-object v7, v0, v6

    goto :goto_0

    .line 689
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v7, :cond_2

    if-nez v3, :cond_2

    .line 691
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V

    .line 692
    const-string v6, "BluetoothPhoneService"

    const-string v7, "clcc : 3way call from 2nd out going call, 1st will be hold, 2nd will be active."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 699
    .restart local v2       #i:I
    :cond_a
    monitor-exit p0

    return-void
.end method

.method private listCurrentCallsGsm()V
    .locals 21

    .prologue
    .line 542
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 543
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 544
    .local v15, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 546
    .local v6, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 547
    .local v10, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 548
    .local v2, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 550
    .local v16, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 551
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 553
    :cond_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 554
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 556
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 561
    :cond_2
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v5, v0, [Z

    .line 562
    .local v5, clccUsed:[Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    aput-boolean v19, v5, v12

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-boolean v20, v19, v12

    .line 562
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 566
    :cond_3
    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 567
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 568
    .local v11, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 569
    .local v17, timestamp:J
    const/4 v12, 0x0

    :goto_2
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 570
    aget-boolean v19, v5, v12

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v12

    cmp-long v19, v17, v19

    if-nez v19, :cond_6

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 572
    const/4 v11, 0x1

    .line 573
    aput-object v3, v4, v12

    .line 577
    :cond_5
    if-nez v11, :cond_4

    .line 578
    invoke-virtual {v15, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 603
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v11           #found:Z
    .end local v17           #timestamp:J
    .local v7, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v8, earliestTimestamp:J
    .local v14, j:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aput-wide v8, v19, v12

    .line 605
    aput-object v7, v4, v12

    .line 606
    invoke-virtual {v15, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 583
    .end local v7           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v8           #earliestTimestamp:J
    .end local v14           #j:I
    :cond_8
    invoke-virtual {v15}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    .line 585
    const/4 v12, 0x0

    .line 586
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_9

    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 587
    :cond_9
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v12, v0, :cond_c

    .line 610
    :cond_a
    const/4 v12, 0x0

    :goto_4
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_e

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_b

    .line 612
    aget-object v19, v4, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/phone/BluetoothPhoneService;->sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V

    .line 610
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 592
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 593
    .restart local v8       #earliestTimestamp:J
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 594
    .restart local v7       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_5
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_7

    .line 595
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 596
    .restart local v17       #timestamp:J
    cmp-long v19, v17, v8

    if-gez v19, :cond_d

    .line 597
    move-wide/from16 v8, v17

    .line 598
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 594
    .restart local v7       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 615
    .end local v7           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v8           #earliestTimestamp:J
    .end local v14           #j:I
    .end local v17           #timestamp:J
    :cond_e
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1138
    const-string v0, "BluetoothPhoneService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void
.end method

.method private sendClccResponseCdma(ILcom/android/internal/telephony/Connection;)V
    .locals 13
    .parameter "index"
    .parameter "connection"

    .prologue
    .line 704
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    .line 705
    .local v8, app:Lcom/android/phone/PhoneGlobals;
    iget-object v0, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 707
    .local v10, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v0, v8, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    .line 709
    .local v11, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    .line 711
    .local v12, ringingCallState:Lcom/android/internal/telephony/Call$State;
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLCC : currCdmaCallState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", prevCdmaCallState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", ringingCallState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v0, :cond_2

    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v0, :cond_2

    .line 718
    const/4 v3, 0x0

    .line 719
    .local v3, state:I
    const-string v0, "BluetoothPhoneService"

    const-string v1, "CLCC : conf call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v0, :cond_0

    .line 760
    const/4 v3, 0x5

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 766
    const/4 v5, 0x0

    .line 767
    .local v5, mpty:Z
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v0, :cond_1

    .line 768
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v0, :cond_1

    .line 771
    const/4 v5, 0x1

    .line 780
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 782
    .local v2, direction:I
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 784
    .local v7, type:I
    if-eqz v6, :cond_7

    .line 785
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 790
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 791
    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    .line 792
    .end local v2           #direction:I
    .end local v3           #state:I
    .end local v5           #mpty:Z
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :goto_3
    return-void

    .line 721
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 722
    .local v9, callState:Lcom/android/internal/telephony/Call$State;
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLCC : callState : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mCdmaIsSecondCallActive : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v0, Lcom/android/phone/BluetoothPhoneService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 754
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad call state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 731
    :pswitch_0
    if-nez p1, :cond_4

    .line 732
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .restart local v3       #state:I
    :goto_4
    goto/16 :goto_0

    .end local v3           #state:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 734
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    .line 736
    .restart local v3       #state:I
    :goto_5
    goto/16 :goto_0

    .line 734
    .end local v3           #state:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_5

    .line 742
    :pswitch_1
    const/4 v3, 0x2

    .line 743
    .restart local v3       #state:I
    goto/16 :goto_0

    .line 745
    .end local v3           #state:I
    :pswitch_2
    const/4 v3, 0x3

    .line 746
    .restart local v3       #state:I
    goto/16 :goto_0

    .line 748
    .end local v3           #state:I
    :pswitch_3
    const/4 v3, 0x4

    .line 749
    .restart local v3       #state:I
    goto/16 :goto_0

    .line 751
    .end local v3           #state:I
    :pswitch_4
    const/4 v3, 0x5

    .line 752
    .restart local v3       #state:I
    goto/16 :goto_0

    .line 780
    .end local v9           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #mpty:Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 787
    .restart local v2       #direction:I
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_7
    const-string v6, ""

    goto :goto_2

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendClccResponseGsm(ILcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "index"
    .parameter "connection"

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v3

    .line 620
    .local v3, state:I
    const/4 v5, 0x0

    .line 621
    .local v5, mpty:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 622
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_0

    .line 623
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    .line 626
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 628
    .local v2, direction:I
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, number:Ljava/lang/String;
    const/4 v7, -0x1

    .line 630
    .local v7, type:I
    if-eqz v6, :cond_1

    .line 631
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 635
    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    .line 636
    return-void

    .end local v2           #direction:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    move v2, v4

    .line 626
    goto :goto_0
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 226
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 243
    .local v0, roam:Z
    iget-boolean v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    if-eq v0, v1, :cond_0

    .line 244
    iput-boolean v0, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 245
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->roamChanged(Z)V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 112
    new-instance v1, Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {v1}, Lcom/android/phone/BluetoothVoIPService;-><init>()V

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mVoipService:Lcom/android/phone/BluetoothVoIPService;

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 114
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 115
    sget-boolean v1, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothPhoneService"

    const-string v2, "mAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    .line 120
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "BluetoothPhoneService:StartCall"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 126
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    .line 127
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    .line 128
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumActive:I

    .line 129
    iput v4, p0, Lcom/android/phone/BluetoothPhoneService;->mNumHeld:I

    .line 130
    new-instance v1, Lcom/android/phone/BluetoothPhoneService$CallNumber;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mRingNumber:Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .line 131
    iput-boolean v4, p0, Lcom/android/phone/BluetoothPhoneService;->mRoam:Z

    .line 133
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 134
    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V

    .line 136
    sget-boolean v1, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothPhoneService"

    const-string v2, "registerForServiceStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    new-array v1, v6, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J

    .line 153
    new-array v1, v6, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z

    aput-boolean v4, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 171
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothPhoneService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Stopping Bluetooth BluetoothPhoneService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 165
    :cond_0
    sget-boolean v0, Lcom/android/phone/BluetoothPhoneService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return-void
.end method
