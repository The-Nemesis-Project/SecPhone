.class public Lcom/android/phone/PhoneVTVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVTVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final PHONE_PATH:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field callerNumber:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

.field private mStartRecordTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneVTVoiceRecorder;->DBG:Z

    .line 46
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/PhoneVTVoiceRecorder;->VDBG:Z

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVTVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "PhoneVTVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput-wide v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mStartRecordTime:J

    .line 56
    iput-boolean v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z

    .line 64
    iput-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/android/phone/PhoneVTVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVTVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    .line 67
    const-string v0, "PhoneVTVoiceRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 68
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mContext:Landroid/content/Context;

    .line 69
    iput-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 71
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    iput-object v3, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    .line 73
    iput-boolean v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z

    .line 75
    iput-wide v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mStartRecordTime:J

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneVTVoiceRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneVTVoiceRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneVTVoiceRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/PhoneVTVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneVTVoiceRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneVTVoiceRecorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneVTVoiceRecorder;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 6

    .prologue
    .line 196
    const-wide/32 v2, 0xa00000

    .line 197
    .local v2, LOW_STORAGE_THRESHOLD:J
    const-wide/32 v0, 0x10000000

    .line 199
    .local v0, HIGH_STORAGE_THRESHOLD:J
    invoke-direct {p0}, Lcom/android/phone/PhoneVTVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    .line 200
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, storageDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 206
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 535
    sget-boolean v0, Lcom/android/phone/PhoneVTVoiceRecorder;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneVTVoiceRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 539
    const-string v0, "PhoneVTVoiceRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 540
    return-void
.end method


# virtual methods
.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 166
    const-string v0, "checkMediaScannerRunning()"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 167
    const/4 v8, 0x0

    .line 168
    .local v8, result:Z
    if-nez p1, :cond_0

    move v0, v8

    .line 184
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 179
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 184
    goto :goto_0

    .line 181
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move v0, v9

    .line 182
    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    .prologue
    .line 188
    const-string v1, "checkMediaScannerRunning()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, result:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    return v0
.end method

.method public startRecord()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    const-string v0, "startRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 111
    iget-boolean v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z

    if-nez v0, :cond_4

    .line 113
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "checkMediaScannerRunning failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 115
    const v0, 0x7f0903b5

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVTVoiceRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "checkSDCardMount failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 120
    const v0, 0x7f0903b6

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneVTVoiceRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const-string v0, "checkAvailableStorage failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 125
    const v0, 0x7f0903b3

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    if-eqz v0, :cond_3

    .line 129
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 132
    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    .line 133
    new-instance v0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVTVoiceRecorder;Lcom/android/phone/PhoneVTVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    .line 134
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->start()V

    .line 135
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord() callerNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 143
    const-string v1, "stopRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "stopRecording"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 146
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    :goto_0
    iput-object v6, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    .line 158
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsPreparing:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mIsRecording:Z

    .line 160
    iput-object v6, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->callerNumber:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void

    .line 151
    :cond_1
    const-string v1, "stopRecording failed"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneVTVoiceRecorder;->log(Ljava/lang/String;Z)V

    .line 152
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneVTVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
