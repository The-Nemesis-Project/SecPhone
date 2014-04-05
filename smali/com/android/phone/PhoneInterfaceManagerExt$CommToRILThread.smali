.class Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommToRILThread"
.end annotation


# instance fields
.field private fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field mLoop:Landroid/os/Looper;

.field private mResult:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 1258
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1245
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1246
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1249
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    .line 1259
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "CommToRILThread(Phone) .. created !"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1261
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1262
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 1264
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1245
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1246
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1249
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    .line 1265
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "CommToRILThread(FactoryPhone) .. created !"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1267
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1268
    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized getInfo(II)Ljava/lang/String;
    .locals 7
    .parameter "main"
    .parameter "sub"

    .prologue
    .line 1316
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1318
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1319
    :catch_0
    move-exception v2

    .line 1320
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1316
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1324
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1326
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1327
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1330
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 1331
    .local v3, fileSize:I
    :try_start_4
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1332
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1333
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1341
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1342
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1347
    :cond_2
    :goto_1
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1348
    .local v4, response:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v5, :cond_7

    .line 1349
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1353
    :goto_2
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_8

    .line 1355
    :try_start_7
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread ..wait for done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1357
    :catch_1
    move-exception v2

    .line 1359
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1335
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #response:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 1337
    .local v2, e:Ljava/io/IOException;
    :try_start_9
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "IOException in CommToRILThread"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1338
    const/4 v5, 0x0

    .line 1341
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1342
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1363
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    monitor-exit p0

    return-object v5

    .line 1340
    :catchall_1
    move-exception v5

    .line 1341
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1342
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1344
    :cond_6
    :goto_4
    :try_start_c
    throw v5

    .line 1351
    .restart local v4       #response:Landroid/os/Message;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_2

    .line 1362
    :cond_8
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread .. done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 1343
    .end local v4           #response:Landroid/os/Message;
    :catch_3
    move-exception v6

    goto :goto_4

    .restart local v2       #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_1
.end method

.method declared-synchronized getInfo(II[B)Ljava/lang/String;
    .locals 7
    .parameter "main"
    .parameter "sub"
    .parameter "cmdData"

    .prologue
    .line 1367
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 1369
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1370
    :catch_0
    move-exception v2

    .line 1371
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1367
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1375
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1377
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1378
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1381
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1382
    .local v3, fileSize:I
    :try_start_4
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1383
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1384
    if-eqz p3, :cond_3

    .line 1385
    array-length v5, p3

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1386
    const/4 v5, 0x0

    array-length v6, p3

    invoke-virtual {v1, p3, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1397
    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1398
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1403
    :cond_2
    :goto_2
    :try_start_6
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1404
    .local v4, response:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v5, :cond_8

    .line 1405
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1409
    :goto_3
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_9

    .line 1411
    :try_start_7
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread ..wait for done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1413
    :catch_1
    move-exception v2

    .line 1415
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1388
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #response:Landroid/os/Message;
    :cond_3
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 1391
    :catch_2
    move-exception v2

    .line 1393
    .local v2, e:Ljava/io/IOException;
    :try_start_a
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "IOException in CommToRILThread"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1394
    const/4 v5, 0x0

    .line 1397
    if-eqz v0, :cond_4

    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1398
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1419
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    :goto_4
    monitor-exit p0

    return-object v5

    .line 1396
    :catchall_1
    move-exception v5

    .line 1397
    if-eqz v0, :cond_6

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1398
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1400
    :cond_7
    :goto_5
    :try_start_d
    throw v5

    .line 1407
    .restart local v4       #response:Landroid/os/Message;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_3

    .line 1418
    :cond_9
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread .. done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 1399
    .end local v4           #response:Landroid/os/Message;
    :catch_3
    move-exception v6

    goto :goto_5

    .restart local v2       #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mLoop:Landroid/os/Looper;

    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;

    .line 1310
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1313
    return-void

    .line 1311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized waitDmLogSync()V
    .locals 5

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_0
    const-string v3, "ril.dmlog.completed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, completed:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1425
    .local v1, count:I
    :goto_0
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 1427
    :try_start_1
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "waitDmLogSync ..wait for done"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1433
    :goto_1
    :try_start_2
    const-string v3, "ril.dmlog.completed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :catch_0
    move-exception v2

    .line 1431
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1423
    .end local v0           #completed:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1436
    .restart local v0       #completed:Ljava/lang/String;
    .restart local v1       #count:I
    :cond_0
    :try_start_3
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "waitDmLogSync .. done"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1437
    monitor-exit p0

    return-void
.end method
