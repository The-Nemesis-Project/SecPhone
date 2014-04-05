.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 121
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 127
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "CoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string v1, "CoverManager"

    const-string v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 371
    :goto_0
    return-object v0

    .line 356
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v8

    .line 357
    .local v8, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v8, :cond_2

    .line 358
    invoke-interface {v8}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    .line 359
    .local v6, coverState:Lcom/samsung/android/cover/CoverState;
    if-eqz v6, :cond_1

    .line 360
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v6, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v6, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v6, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v6, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .line 363
    .local v0, scoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 365
    .end local v0           #scoverState:Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v1, "CoverManager"

    const-string v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #coverState:Lcom/samsung/android/cover/CoverState;
    .end local v8           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_2
    :goto_1
    move-object v0, v9

    .line 371
    goto :goto_0

    .line 368
    :catch_0
    move-exception v7

    .line 369
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "CoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 246
    const-string v6, "CoverManager"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_0

    .line 248
    const-string v6, "CoverManager"

    const-string v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 252
    :cond_0
    if-nez p1, :cond_1

    .line 253
    const-string v6, "CoverManager"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 260
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 262
    .local v2, delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    move-object v0, v2

    move-object v1, v0

    .line 268
    .end local v0           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .end local v2           #delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .local v1, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :goto_1
    if-nez v1, :cond_4

    .line 269
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v0, p0, p1, v6}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v0       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 275
    .local v5, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_3

    .line 276
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0, v6}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 283
    .end local v5           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 280
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catch_0
    move-exception v3

    .line 281
    .local v3, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "CoverManager"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 283
    .end local v0           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v0       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_4

    .end local v0           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_4
    move-object v0, v1

    .end local v1           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v0       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v1, v0

    .end local v0           #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    .restart local v1       #coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    goto :goto_1
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 304
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_0

    .line 306
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 310
    :cond_0
    if-nez p1, :cond_1

    .line 311
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, coverListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 319
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 321
    .local v1, delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    move-object v0, v1

    .line 327
    .end local v1           #delegate:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_3
    if-nez v0, :cond_4

    .line 328
    monitor-exit v6

    goto :goto_0

    .line 341
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 332
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 333
    .local v4, svc:Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_5

    .line 334
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    .end local v4           #svc:Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
