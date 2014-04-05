.class public Lcom/android/phone/InIMSCallState;
.super Ljava/lang/Object;
.source "InIMSCallState.java"


# static fields
.field private static final ENG:Z

.field private static sInstance:Lcom/android/phone/InIMSCallState;


# instance fields
.field public isActiveIMSVideoCall:Z

.field public isQcifDialerOpened:Z

.field public isRunningCamera:Z

.field public isShowMe:Z

.field public isSurfaceViewSwiped:Z

.field mCM:Lcom/android/internal/telephony/CallManager;

.field public mCameraId:I

.field private mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InIMSCallState;->ENG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isActiveIMSVideoCall:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isRunningCamera:Z

    .line 64
    iput v2, p0, Lcom/android/phone/InIMSCallState;->mCameraId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isSurfaceViewSwiped:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isQcifDialerOpened:Z

    .line 68
    iput v2, p0, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    .line 86
    iput-object p1, p0, Lcom/android/phone/InIMSCallState;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InIMSCallState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 88
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/InIMSCallState;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 89
    return-void
.end method

.method private dumpState(Ljava/lang/String;)V
    .locals 2
    .parameter "Tag"

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/phone/InIMSCallState;->ENG:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PhoneState   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InIMSCallState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InIMSCallState;->log(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CallState      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InIMSCallState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCallState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InIMSCallState;->log(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/InIMSCallState;
    .locals 4
    .parameter

    .prologue
    .line 71
    const-class v1, Lcom/android/phone/InIMSCallState;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/android/phone/InIMSCallState;->sInstance:Lcom/android/phone/InIMSCallState;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/phone/InIMSCallState;

    invoke-direct {v0, p0}, Lcom/android/phone/InIMSCallState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/InIMSCallState;->sInstance:Lcom/android/phone/InIMSCallState;

    .line 77
    :goto_0
    sget-object v0, Lcom/android/phone/InIMSCallState;->sInstance:Lcom/android/phone/InIMSCallState;

    monitor-exit v1

    return-object v0

    .line 75
    :cond_0
    const-string v0, "InIMSCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InIMSCallState;->sInstance:Lcom/android/phone/InIMSCallState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
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
    .line 111
    const-string v0, "InIMSCallState"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method protected updateDisconnectState()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isActiveIMSVideoCall:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isSurfaceViewSwiped:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/phone/InIMSCallState;->isQcifDialerOpened:Z

    .line 106
    iput v2, p0, Lcom/android/phone/InIMSCallState;->mCameraId:I

    .line 107
    iput v2, p0, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    .line 108
    return-void
.end method

.method protected updateState()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/phone/InIMSCallState;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCallState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 93
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    const-string v1, "updateState"

    invoke-direct {p0, v1}, Lcom/android/phone/InIMSCallState;->dumpState(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InIMSCallState;->updateDisconnectState()V

    goto :goto_0
.end method
