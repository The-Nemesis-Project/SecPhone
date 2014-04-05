.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

.field private static sInstances:[Lcom/android/phone/PhoneInterfaceManagerExt;


# instance fields
.field mApp:Lcom/android/phone/PhoneGlobals;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mMobileInfo:Ljava/lang/String;

.field private mObjectNotiAll:Landroid/os/Handler;

.field private mObjectNotiAllRunnable:Ljava/lang/Runnable;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mUpKnightLock:Ljava/lang/Object;

.field private nitzString:Ljava/lang/String;

.field private scCmdResult:[B

.field scHandler:Landroid/os/Handler;

.field private final scLock:Ljava/lang/Object;

.field private scReturnValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    .line 72
    new-array v0, v4, [Lcom/android/phone/PhoneInterfaceManagerExt;

    aput-object v3, v0, v2

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->sInstances:[Lcom/android/phone/PhoneInterfaceManagerExt;

    .line 80
    sput-object v3, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mUpKnightLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$2;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    .line 329
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 330
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 331
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 332
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;

    return-object v0
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 986
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "enforceModifyPermission()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1004
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method private publish()V
    .locals 6

    .prologue
    .line 336
    sget-boolean v3, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    .line 338
    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 340
    const-string v3, "phoneext"

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v2           #simSlotNum:I
    :cond_1
    const-string v3, "phoneext"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 346
    :cond_2
    const-string v3, "gsm.version.ril-impl"

    const-string v4, "Qualcomm"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, ril_version:Ljava/lang/String;
    :try_start_0
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Qualcomm"

    const/4 v4, 0x0

    const-string v5, "Qualcomm"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    new-instance v3, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 359
    :goto_1
    return-void

    .line 354
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method SendToSecRil(Z)V
    .locals 8
    .parameter "flag"

    .prologue
    .line 1566
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1567
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1570
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 1571
    .local v3, fileSize:I
    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1572
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1573
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1574
    if-eqz p1, :cond_2

    .line 1575
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1579
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->sendRequestRawToRIL([BLandroid/os/Message;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1586
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1591
    :cond_1
    :goto_1
    return-void

    .line 1577
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v2

    .line 1582
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "PhoneInterfaceManagerExt"

    const-string v5, "IOException in startMobileQualityInfo"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1585
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1586
    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1587
    :catch_1
    move-exception v2

    .line 1588
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1587
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1588
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1584
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1585
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1586
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1589
    :cond_5
    :goto_2
    throw v4

    .line 1587
    :catch_3
    move-exception v2

    .line 1588
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "PhoneInterfaceManagerExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close outputstream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getActiveCallsCount()I
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .locals 2

    .prologue
    .line 1086
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .locals 2

    .prologue
    .line 1078
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 1069
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUATI()[B
    .locals 5

    .prologue
    .line 1457
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v2, :cond_0

    .line 1461
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v2, :cond_1

    .line 1462
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1465
    :goto_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI Good Job"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1469
    :cond_0
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v3, 0xc

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, currentUATIStr:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1471
    const/4 v1, 0x0

    .line 1475
    :goto_1
    return-object v1

    .line 1464
    .end local v0           #currentUATIStr:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0

    .line 1472
    .restart local v0       #currentUATIStr:Ljava/lang/String;
    :cond_2
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1475
    .local v1, data:[B
    goto :goto_1
.end method

.method public getHoldCallsCount()I
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1498
    const-string v4, "PhoneInterfaceManagerExt"

    const-string v5, "getLteCellInfo() "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1501
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1503
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 1517
    :goto_0
    return-object v4

    .line 1504
    :cond_0
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v2

    .line 1505
    .local v2, loc:Landroid/telephony/CellLocation;
    const/4 v1, 0x0

    .line 1506
    .local v1, cid:I
    const/4 v3, 0x0

    .line 1507
    .local v3, tac:I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1508
    instance-of v4, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 1509
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1510
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .end local v2           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 1516
    :cond_1
    :goto_1
    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1511
    .restart local v2       #loc:Landroid/telephony/CellLocation;
    :cond_2
    instance-of v4, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 1512
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getLteCellId()I

    move-result v1

    .line 1513
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v2           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getLteTac()I

    move-result v3

    goto :goto_1
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1535
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 1537
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_1

    .line 1540
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1543
    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getMobileQualityInformation Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1546
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x16

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    .line 1547
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    return-object v0

    .line 1542
    :cond_1
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 384
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .locals 2

    .prologue
    .line 398
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .locals 2

    .prologue
    .line 388
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .locals 2

    .prologue
    .line 463
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    .prologue
    .line 435
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    .line 444
    :goto_0
    return v0

    .line 438
    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    goto :goto_0
.end method

.method public getSimPuk2Retry()I
    .locals 2

    .prologue
    .line 474
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPuk2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    .prologue
    .line 449
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPukRetry()I

    move-result v0

    .line 458
    :goto_0
    return v0

    .line 452
    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPukRetry()I

    move-result v0

    goto :goto_0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .locals 2

    .prologue
    .line 484
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1441
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo() "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_1

    .line 1445
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1448
    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1451
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    .line 1452
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v0

    .line 1447
    :cond_1
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1479
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo() "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v1, :cond_0

    .line 1483
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_1

    .line 1484
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1487
    :goto_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo Good Job"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1491
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v2, 0x16

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, str:Ljava/lang/String;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-object v0

    .line 1486
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 1222
    .local v0, bluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v0, :cond_0

    .line 1223
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnected entered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v1

    .line 1227
    :goto_0
    return v1

    .line 1226
    :cond_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "isBluetoothAudioConnected entered"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    return v0
.end method

.method public isDualBTConnection()Z
    .locals 4

    .prologue
    .line 1177
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 1178
    .local v0, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idDualBTConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v1

    .line 1182
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .locals 2

    .prologue
    .line 964
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "isSimFDNEnabled()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 967
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled(I)Z

    move-result v0

    .line 970
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isSimFDNEnabledDs(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 975
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFDNEnabledDs() subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 977
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 4

    .prologue
    .line 1204
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT entered"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothVoIPService()Landroid/bluetooth/IBluetoothHeadsetVoIP;

    move-result-object v0

    .line 1206
    .local v0, bluetoothVoIP:Landroid/bluetooth/IBluetoothHeadsetVoIP;
    if-eqz v0, :cond_0

    .line 1207
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT bluetoothVoIP is not null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP;->handleVoipCallStateChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT exit"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 1210
    :catch_0
    move-exception v1

    .line 1211
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "cannot access notifyVoIPCallStateChangeIntoBT"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1214
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "bluetoothVoIP is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 1706
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 1708
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSendDtmf(Z)V

    .line 1709
    return v3
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 1
    .parameter "data"
    .parameter "msg"

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1525
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 5
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 1094
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    .line 1097
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1131
    :cond_1
    :goto_0
    return v1

    .line 1101
    :cond_2
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got arg2 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1108
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1112
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Response!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v2, 0x6

    if-ne p3, v2, :cond_4

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_4

    .line 1122
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    goto/16 :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "PhoneInterfaceManagerExt"

    const-string v4, "Interrupted while trying to send request to RIL"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1116
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1123
    :cond_4
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    iget v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v2, :cond_3

    .line 1124
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting ATR size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/16 v3, 0x106

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 1166
    .local v0, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsAudioOn : flag("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    if-eqz v0, :cond_0

    .line 1168
    if-eqz p1, :cond_1

    .line 1169
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    goto :goto_0
.end method

.method public setBTUserWantsSwitchAudio()V
    .locals 4

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 1187
    .local v0, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsSwitchAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z

    .line 1191
    :cond_0
    return-void
.end method

.method public setDmCmd(I[B)[I
    .locals 11
    .parameter "cmdCode"
    .parameter "cmdData"

    .prologue
    const/16 v10, 0x16

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1603
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 1604
    .local v2, ret:[I
    const/4 v3, 0x0

    .line 1605
    .local v3, retStr:Ljava/lang/String;
    const-string v7, "ro.debuggable"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v0, v5

    .line 1607
    .local v0, DEBUG:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1608
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDmCmd - code :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_0
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v7, :cond_1

    .line 1613
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v7, :cond_3

    .line 1614
    new-instance v7, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v7, v8}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    .line 1617
    :goto_1
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v7}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    .line 1620
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1699
    :goto_2
    return-object v2

    .end local v0           #DEBUG:Z
    :cond_2
    move v0, v6

    .line 1605
    goto :goto_0

    .line 1616
    .restart local v0       #DEBUG:Z
    :cond_3
    new-instance v7, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v7, v8}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_1

    .line 1622
    :pswitch_0
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v8, 0x62

    invoke-virtual {v7, v10, v8, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1623
    if-eqz v0, :cond_4

    .line 1624
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LOG_SET - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_4
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1627
    aput v6, v2, v5

    aput v6, v2, v6

    goto :goto_2

    .line 1629
    :cond_5
    aput v5, v2, v6

    .line 1630
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    goto :goto_2

    .line 1635
    :pswitch_1
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v8, 0x63

    invoke-virtual {v7, v10, v8, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1636
    if-eqz v0, :cond_6

    .line 1637
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SET - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_6
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1640
    aput v6, v2, v5

    aput v6, v2, v6

    goto :goto_2

    .line 1642
    :cond_7
    aput v5, v2, v6

    .line 1643
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    goto :goto_2

    .line 1648
    :pswitch_2
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v8, 0x64

    invoke-virtual {v7, v10, v8, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1649
    if-eqz v0, :cond_8

    .line 1650
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "STATE_CHANGE_SET - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_8
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1653
    aput v6, v2, v5

    aput v6, v2, v6

    goto/16 :goto_2

    .line 1655
    :cond_9
    aput v5, v2, v6

    .line 1656
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    goto/16 :goto_2

    .line 1661
    :pswitch_3
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v8, 0x65

    invoke-virtual {v7, v10, v8, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1662
    if-eqz v0, :cond_a

    .line 1663
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MEM_SET - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_a
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1666
    aput v6, v2, v5

    aput v6, v2, v6

    goto/16 :goto_2

    .line 1668
    :cond_b
    aput v5, v2, v6

    .line 1669
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    goto/16 :goto_2

    .line 1674
    :pswitch_4
    sget-object v7, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v8, 0x66

    invoke-virtual {v7, v10, v8, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1675
    if-eqz v0, :cond_c

    .line 1676
    const-string v7, "UKnight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MEM_CHECK - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_c
    :try_start_0
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1680
    .local v4, retVal:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v7

    .line 1681
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1682
    .end local v4           #retVal:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1683
    .local v1, ex:Ljava/lang/Exception;
    aput v5, v2, v5

    aput v5, v2, v6

    goto/16 :goto_2

    .line 1688
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_5
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mUpKnightLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1689
    :try_start_1
    const-string v8, "ril.dmlog.completed"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    sget-object v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v9, 0x16

    const/16 v10, 0x67

    invoke-virtual {v8, v9, v10, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v3

    .line 1691
    sget-object v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->waitDmLogSync()V

    .line 1692
    if-eqz v0, :cond_d

    .line 1693
    const-string v8, "UKnight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAVE_LOG - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_d
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    aput v6, v2, v5

    aput v6, v2, v6

    goto/16 :goto_2

    .line 1695
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1023
    return-void
.end method

.method public showPopupCallScreen()Z
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 1551
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "startMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    .line 1555
    :cond_0
    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 1559
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "stopMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    .line 1563
    :cond_0
    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 2
    .parameter "passwd"

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 377
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;Lcom/android/internal/telephony/IccCard;)V

    .line 378
    .local v0, checkIccPerso:Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->start()V

    .line 379
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin2"

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 370
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 371
    .local v0, checkSimPin2:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    .line 372
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 363
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 364
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    .line 365
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 0

    .prologue
    .line 1016
    return-void
.end method

.method public turnOnBluetooth()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1037
    return-void
.end method

.method public updateRAFTproximity(I)V
    .locals 2
    .parameter "raft_phone_state"

    .prologue
    .line 1158
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method
