.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$NotificationFlashThread;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/Ringer;

.field private static sInstanceSecond:Lcom/android/phone/Ringer;


# instance fields
.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final RETURN_ORIGIN_VOLUME:I

.field private final VIB_TIME_IN_RING_AFTER_VIB:I

.field isDone:Z

.field private mActiveSimId:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallMotionFlash:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field mCustomRingtoneUri:Landroid/net/Uri;

.field mCustomRingtoneUri2:Landroid/net/Uri;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mExtraRinger:Lcom/android/phone/ExtraRinger;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mIsRingEscalating:Z

.field private mIsRingRepeat:Z

.field mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

.field mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field private mRingtoneAfterVib:I

.field private mRingtoneHighlightSec:I

.field mVibrator:Landroid/os/SystemVibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/Ringer;->RETURN_ORIGIN_VOLUME:I

    .line 84
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    .line 85
    iput v2, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    .line 88
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 97
    iput v1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    .line 107
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 108
    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 110
    iput v1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    .line 112
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    .line 113
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 114
    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 117
    iput v1, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 118
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/phone/Ringer;->VIB_TIME_IN_RING_AFTER_VIB:I

    .line 136
    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    .line 138
    iput-boolean v1, p0, Lcom/android/phone/Ringer;->isDone:Z

    .line 142
    iput v1, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 174
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 175
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 176
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 177
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    .line 179
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/phone/ExtraRinger;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    .line 182
    :cond_0
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 9
    .parameter "string"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 666
    if-nez p1, :cond_1

    move-object v2, v4

    .line 687
    :cond_0
    :goto_0
    return-object v2

    .line 669
    :cond_1
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, temp:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringToLongArray, size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 672
    array-length v5, v3

    if-gtz v5, :cond_2

    .line 673
    const-string v5, "string is null"

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 674
    goto :goto_0

    .line 677
    :cond_2
    array-length v5, v3

    new-array v2, v5, [J

    .line 679
    .local v2, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 680
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 685
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/Ringer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/phone/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;Ljava/lang/String;)[J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/Ringer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/Ringer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    return v0
.end method

.method private getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1021
    if-nez p1, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-object v3

    .line 1022
    :cond_1
    move-object v1, p1

    .line 1023
    .local v1, actualUri:Landroid/net/Uri;
    const-string v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1026
    :cond_2
    if-eqz v1, :cond_0

    .line 1027
    const/4 v6, 0x0

    .line 1028
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1029
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1032
    :cond_3
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1038
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v7

    .line 1036
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 149
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 150
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 155
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 153
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static initSecond(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 161
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    .line 167
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 165
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSecond() called multiple times!  sInstanceSecond = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstanceSecond:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1044
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 1048
    const-string v0, "Ringer"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1049
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 785
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 920
    :cond_0
    return-void
.end method


# virtual methods
.method initRingerContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 198
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 200
    return-void
.end method

.method isHeadsetRingtonePlaying()Z
    .locals 2

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, isRinging:Z
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->isRinging()Z

    move-result v0

    .line 1017
    :cond_0
    return v0
.end method

.method isNotiFlashing()Z
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isHeadsetRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 923
    const/4 v8, 0x0

    .line 924
    .local v8, returnValue:Z
    if-eqz p1, :cond_3

    .line 925
    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 926
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 928
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 933
    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 934
    .local v9, ringFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    const-string v0, "isValidRingtoneURI true"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    const/4 v8, 0x1

    .line 943
    .end local v9           #ringFile:Ljava/io/File;
    :cond_2
    :goto_0
    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / uri.getScheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    if-nez v8, :cond_4

    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_4
    return v8

    .line 939
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 940
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "isValidRingtoneURI exception"

    invoke-direct {p0, v0, v10}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method isVibrating()Z
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetRingerContextFromIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 203
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 205
    return-void
.end method

.method ring()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 260
    const-string v7, "ring()..."

    invoke-direct {p0, v7, v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    const-string v7, "voip_interworking"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isVoIPActivated()Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit p0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v7, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "led_indicator_incoming_notification"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 270
    .local v4, ledNotification:I
    if-lez v4, :cond_2

    .line 271
    const-string v7, "setAttentionLight!"

    invoke-static {v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 274
    iget-object v7, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v8, 0x1

    const/16 v9, 0xff

    invoke-interface {v7, v8, v9}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    :cond_2
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "motion_overturn"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_9

    move v1, v6

    .line 285
    .local v1, isEnable:Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 286
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-nez v7, :cond_3

    .line 288
    new-instance v7, Lcom/android/phone/CallMotion;

    iget-object v8, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 289
    iget-object v7, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v7}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    .line 292
    :cond_3
    iget-object v7, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "flash_notification"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_a

    move v2, v6

    .line 293
    .local v2, isEnableNotiFlash:Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRingHandler: FLASH_NOTIFICATION is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 295
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-nez v7, :cond_4

    .line 297
    new-instance v7, Lcom/android/phone/CallMotion;

    iget-object v8, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v9, 0x56

    invoke-direct {v7, v8, v9}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    .line 298
    iget-object v7, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v7}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    .line 301
    :cond_4
    iget-object v7, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 304
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v7, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 305
    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckVoiceRecorder()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "vt_audio_processing_on_ap"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 307
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 308
    .local v5, ringerMode:I
    if-eq v5, v6, :cond_6

    if-nez v5, :cond_6

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-lez v6, :cond_b

    :cond_6
    iget-object v6, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v6, :cond_b

    .line 311
    new-instance v6, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v6, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 312
    const-string v6, "- starting vibrator...for voice recording"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 313
    iget-object v6, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 319
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v6, :cond_7

    .line 320
    const-string v6, "Play Headset ringtone for voice recording.."

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 321
    new-instance v6, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 322
    iget-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 324
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 422
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isEnable:Z
    .end local v2           #isEnableNotiFlash:Z
    .end local v4           #ledNotification:I
    .end local v5           #ringerMode:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 276
    .restart local v4       #ledNotification:I
    :cond_8
    :try_start_3
    iget-object v7, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v8, 0x1

    const v9, 0xffffff

    invoke-interface {v7, v8, v9}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 278
    :catch_0
    move-exception v7

    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 283
    goto/16 :goto_2

    .restart local v1       #isEnable:Z
    :cond_a
    move v2, v3

    .line 292
    goto/16 :goto_3

    .line 316
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #isEnableNotiFlash:Z
    .restart local v5       #ringerMode:I
    :cond_b
    :try_start_4
    const-string v6, "skipping ring because volume is zero for voice recording"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_4

    .line 327
    .end local v5           #ringerMode:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v7, :cond_d

    .line 329
    new-instance v7, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v7, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 331
    const-string v7, "automatic_answering_machine"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 332
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAnsweringMessageSetToZero()Z

    move-result v7

    if-nez v7, :cond_d

    .line 333
    const-string v7, "- starting vibrator..."

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 334
    iget-object v7, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 343
    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "torch_light"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_e

    move v3, v6

    .line 344
    .local v3, isEnableTorch:Z
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEnableAssistiveLightBeforeStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 346
    if-nez v3, :cond_f

    .line 347
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldNotiLight()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    if-nez v7, :cond_f

    .line 348
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    .line 349
    new-instance v7, Lcom/android/phone/Ringer$NotificationFlashThread;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/phone/Ringer$NotificationFlashThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v7, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    .line 350
    const-string v7, "- starting notification flash...."

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 351
    iget-object v7, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 355
    :cond_f
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "feature_kdi"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eqz v7, :cond_12

    :cond_10
    const-string v7, "feature_kdi"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eq v7, v6, :cond_12

    :cond_11
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eq v6, v10, :cond_15

    .line 366
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 367
    const-string v6, "skipping ring because volume is zero"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 368
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v6, :cond_13

    .line 369
    const-string v6, "Play Headset ringtone.."

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 370
    new-instance v6, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 371
    iget-object v6, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 374
    :cond_13
    monitor-exit p0

    goto/16 :goto_0

    .line 337
    .end local v3           #isEnableTorch:Z
    :cond_14
    const-string v7, "- starting vibrator..."

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 338
    iget-object v7, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    .line 376
    .restart local v3       #isEnableTorch:Z
    :cond_15
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 377
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 378
    const-string v6, "check_ringtone_repeat"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 379
    const-string v6, "/system/media/audio/ringtones/Beep_once.ogg"

    iget-object v7, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-direct {p0, v7}, Lcom/android/phone/Ringer;->getActualRingtonePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 380
    const-string v6, "Ringtone does not repeat"

    invoke-static {v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 381
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/Ringer;->mIsRingRepeat:Z

    .line 382
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/Ringer;->mIsRingEscalating:Z

    .line 385
    :cond_16
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 386
    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v6, v6, v11

    if-gez v6, :cond_19

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 391
    iget v6, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v6, :cond_18

    .line 392
    iget-object v6, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    const-wide/16 v8, 0x1770

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 399
    :goto_6
    iget-object v6, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 400
    iget-object v6, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 422
    :cond_17
    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 424
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAnsweringMessageSetToZero()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_0

    .line 394
    :cond_18
    :try_start_5
    iget-object v6, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 407
    :cond_19
    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_1a

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delaying ring by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v9, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 413
    iget-object v6, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v10, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 419
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7
.end method

.method setActivePhone(I)V
    .locals 2
    .parameter "simId"

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ringer: phone id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 777
    iput p1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    .line 778
    return-void
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 731
    if-eqz p1, :cond_0

    .line 732
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 734
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-ne p1, v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : default uri, recommendation_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    if-ne p1, v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : default uri, recommendation_time_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 745
    :cond_2
    const-string v0, "highlight_offset"

    .line 746
    .local v0, HIGHLIGHT_OFFSET:Ljava/lang/String;
    const-string v2, "highlight_offset"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, offset:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 749
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomRingtoneUri : custom uri, offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 752
    :cond_3
    iput v5, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 753
    const-string v2, "setCustomRingtoneUri : custom uri, offset = 0"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;I)V
    .locals 1
    .parameter "uri"
    .parameter "simId"

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 767
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 768
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setCustomVibrationUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 651
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 652
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomVibrationUri:Landroid/net/Uri;

    .line 654
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 656
    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 657
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 658
    new-instance v0, Lcom/android/phone/Ringer$VibratorThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 659
    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 663
    :cond_0
    return-void
.end method

.method public setIsDone(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/android/phone/Ringer;->isDone:Z

    .line 578
    return-void
.end method

.method shouldNotiLight()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 459
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 460
    .local v0, isEnable:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 463
    :goto_1
    return v1

    .end local v0           #isEnable:Z
    :cond_0
    move v0, v2

    .line 459
    goto :goto_0

    .restart local v0       #isEnable:Z
    :cond_1
    move v1, v2

    .line 463
    goto :goto_1
.end method

.method shouldVibrate()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 433
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 435
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_after_vibration"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    .line 437
    iget v5, p0, Lcom/android/phone/Ringer;->mRingtoneAfterVib:I

    if-lez v5, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v3

    .line 442
    :cond_1
    const/4 v1, 0x0

    .line 444
    .local v1, isDrivingModeOn:Z
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    const-string v5, "Driving mode on, Don\'t make vibration in Vibration when ringing"

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 446
    const/4 v1, 0x1

    .line 450
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 451
    .local v2, ringerMode:I
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    .line 452
    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 454
    :cond_3
    if-eq v2, v3, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public stopNotiFlash()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const-string v0, "-stopNotiFlash: cleaning up notiflash thread..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 565
    iget-object v0, p0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 566
    iget-object v0, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$NotificationFlashThread;->stopThread()V

    .line 567
    iput-object v2, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 571
    iput-object v2, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    .line 573
    :cond_1
    return-void
.end method

.method stopRing()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    const-string v4, "stopRing()..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v4, :cond_0

    .line 481
    const-string v4, "- stopRing: cleaning up headsetRingtone thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 482
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 483
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 486
    :cond_0
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v4, :cond_8

    .line 488
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRing() setStreamVolume - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 491
    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 492
    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 493
    .local v0, currentVolume:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRing() getStreamVolume - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 496
    .end local v0           #currentVolume:I
    :cond_1
    const-string v4, "extra_ringer"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    iget-object v4, p0, Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;

    invoke-virtual {v4}, Lcom/android/phone/ExtraRinger;->stopExtraRinger()V

    .line 500
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 501
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 502
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 505
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 506
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 507
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 508
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I

    .line 509
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 510
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 520
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 521
    const-string v4, "- stopRing: cleaning up vibrator thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 523
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 524
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 528
    :cond_4
    iget-object v4, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V

    .line 530
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isNotiFlashing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/phone/Ringer;->isDone:Z

    if-nez v4, :cond_5

    .line 531
    const-string v4, "-stopRing: cleaning up notiflash thread..."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 532
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 533
    .local v1, isEnable:Z
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableAssistiveLight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 535
    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    invoke-virtual {v3}, Lcom/android/phone/Ringer$NotificationFlashThread;->stopThread()V

    .line 536
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mNotificationFlashThread:Lcom/android/phone/Ringer$NotificationFlashThread;

    .line 538
    if-eqz v1, :cond_a

    .line 540
    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 541
    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 547
    .end local v1           #isEnable:Z
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/phone/Ringer;->isDone:Z

    if-nez v3, :cond_6

    .line 548
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    invoke-virtual {v3}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 549
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotionFlash:Lcom/android/phone/CallMotion;

    .line 553
    :cond_6
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v3, :cond_7

    .line 554
    iget-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v3}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    .line 560
    :cond_7
    monitor-exit p0

    .line 561
    return-void

    .line 512
    :cond_8
    const-string v4, "- stopRing: null mRingHandler!"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V

    .line 513
    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 516
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto/16 :goto_1

    .line 560
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_9
    move v1, v3

    .line 532
    goto :goto_2

    .line 544
    .restart local v1       #isEnable:Z
    :cond_a
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/Ringer;->mNotiFlash:Lcom/sec/android/hardware/SecHardwareInterface;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 475
    .end local v1           #isEnable:Z
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method updateHeadsetRingtoneState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 990
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/Ringer;->mActiveSimId:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 998
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    .line 1002
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    .line 1007
    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 192
    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 194
    return-void
.end method
