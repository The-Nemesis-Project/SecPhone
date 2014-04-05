.class public Lcom/android/phone/AnsweringMemoRecorder;
.super Ljava/lang/Object;
.source "AnsweringMemoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static final ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/AnsweringMemoRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mCallCard:Lcom/android/phone/CallCard;

.field public mCallCardCoveredDialog:Lcom/android/phone/CallCardCoveredDialog;

.field private mCallerNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mRecordedDurationMSec:I

.field private mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

.field private mStartRecordTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.AnswerMemo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AnsweringMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "AnsweringMemoRecorder"

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->LOG_TAG:Ljava/lang/String;

    .line 76
    iput-wide v4, p0, Lcom/android/phone/AnsweringMemoRecorder;->mStartRecordTime:J

    .line 77
    iput v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecordedDurationMSec:I

    .line 78
    iput-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    .line 100
    new-instance v0, Lcom/android/phone/AnsweringMemoRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AnsweringMemoRecorder$1;-><init>(Lcom/android/phone/AnsweringMemoRecorder;)V

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    .line 91
    const-string v0, "AnsweringMemoRecorder Create"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 93
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 94
    iput-object v3, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    .line 95
    iput-boolean v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    .line 97
    iput-wide v4, p0, Lcom/android/phone/AnsweringMemoRecorder;->mStartRecordTime:J

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AnsweringMemoRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/AnsweringMemoRecorder;->getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/AnsweringMemoRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/AnsweringMemoRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecordedDurationMSec:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/AnsweringMemoRecorder;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AnsweringMemoRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/AnsweringMemoRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/AnsweringMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/AnsweringMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/AnsweringMemoRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/AnsweringMemoRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/phone/AnsweringMemoRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/phone/AnsweringMemoRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 4

    .prologue
    .line 256
    const-wide/32 v0, 0xa00000

    .line 259
    .local v0, LOW_STORAGE_THRESHOLD:J
    invoke-direct {p0}, Lcom/android/phone/AnsweringMemoRecorder;->getAvailableStorage()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 260
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
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

    invoke-direct {p0, v2, v3}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 266
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 267
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

.method private getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "number"

    .prologue
    .line 647
    const/4 v13, 0x0

    .line 648
    .local v13, displayName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 649
    .local v15, passedNum:Ljava/lang/String;
    const/4 v12, 0x0

    .line 650
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 651
    .local v14, nameCursor:Landroid/database/Cursor;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "number"

    aput-object v4, v3, v1

    .line 655
    .local v3, projection:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 657
    .local v2, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 659
    if-eqz v12, :cond_1

    .line 660
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    const-string v1, "display_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 662
    const-string v1, "number"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 663
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 664
    .local v10, contactId:J
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 666
    .local v16, uri:Landroid/net/Uri;
    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 668
    .local v5, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "mimetype=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "vnd.android.cursor.item/name"

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 671
    if-eqz v14, :cond_0

    .line 672
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 673
    const-string v13, ""

    .line 677
    .end local v5           #dataUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_0
    const-string v1, "AnsweringMemoRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v10           #contactId:J
    :cond_1
    if-eqz v12, :cond_2

    .line 684
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_2
    if-eqz v14, :cond_3

    .line 687
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 p1, v13

    .line 690
    .end local p1
    :cond_4
    :goto_0
    return-object p1

    .line 683
    .restart local p1
    :cond_5
    if-eqz v12, :cond_6

    .line 684
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_6
    if-eqz v14, :cond_4

    .line 687
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 683
    .end local v2           #contactUri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    .line 684
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_7
    if-eqz v14, :cond_8

    .line 687
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public static getInstance()Lcom/android/phone/AnsweringMemoRecorder;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/phone/AnsweringMemoRecorder;->sMe:Lcom/android/phone/AnsweringMemoRecorder;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/phone/AnsweringMemoRecorder;

    invoke-direct {v0}, Lcom/android/phone/AnsweringMemoRecorder;-><init>()V

    sput-object v0, Lcom/android/phone/AnsweringMemoRecorder;->sMe:Lcom/android/phone/AnsweringMemoRecorder;

    .line 150
    :cond_0
    sget-object v0, Lcom/android/phone/AnsweringMemoRecorder;->sMe:Lcom/android/phone/AnsweringMemoRecorder;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 629
    const-string v0, "AnsweringMemoRecorder"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 633
    const-string v0, "AnsweringMemoRecorder"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 634
    return-void
.end method


# virtual methods
.method public canStartRecording()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 227
    const-string v0, "checkMediaScannerRunning()"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 228
    const/4 v8, 0x0

    .line 229
    .local v8, result:Z
    if-nez p1, :cond_0

    move v0, v8

    .line 245
    :goto_0
    return v0

    .line 232
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

    .line 235
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 240
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 245
    goto :goto_0

    .line 242
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move v0, v9

    .line 243
    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    .prologue
    .line 249
    const-string v1, "checkMediaScannerRunning()"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, result:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 252
    return v0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecordedDurationMSec:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStartRecordTime()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    return v0
.end method

.method public startRecord()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    const-string v0, "startRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 171
    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    if-nez v0, :cond_4

    .line 173
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/AnsweringMemoRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "checkMediaScannerRunning failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 175
    const v0, 0x7f0903b5

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 201
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AnsweringMemoRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const-string v0, "checkSDCardMount failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 180
    const v0, 0x7f0903b6

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/AnsweringMemoRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    const-string v0, "checkAvailableStorage failed"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 185
    const v0, 0x7f0903b3

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 192
    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    .line 194
    new-instance v0, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;-><init>(Lcom/android/phone/AnsweringMemoRecorder;Lcom/android/phone/AnsweringMemoRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    .line 195
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->start()V

    .line 196
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecord() mCallerNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_4
    const-string v0, "Call recording is already running - ignore"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopRecodingIcon()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->invisibleMemoRecInfoView()V

    .line 619
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 204
    const-string v1, "stopRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "stopRecording"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    :goto_0
    iput-object v6, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecorderThread:Lcom/android/phone/AnsweringMemoRecorder$RecorderThread;

    .line 218
    iput v4, p0, Lcom/android/phone/AnsweringMemoRecorder;->mRecordedDurationMSec:I

    .line 220
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsPreparing:Z

    .line 221
    iput-boolean v4, p0, Lcom/android/phone/AnsweringMemoRecorder;->mIsRecording:Z

    .line 222
    iput-object v6, p0, Lcom/android/phone/AnsweringMemoRecorder;->mCallerNumber:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void

    .line 212
    :cond_1
    const-string v1, "stopRecording failed"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/AnsweringMemoRecorder;->log(Ljava/lang/String;Z)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/AnsweringMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v5, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 215
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/AnsweringMemoRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
