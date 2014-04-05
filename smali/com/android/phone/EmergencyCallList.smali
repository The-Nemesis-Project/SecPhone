.class public Lcom/android/phone/EmergencyCallList;
.super Landroid/app/ListActivity;
.source "EmergencyCallList.java"


# instance fields
.field final RTS_CS:I

.field final RTS_PS:I

.field final RTS_STATUS:I

.field final RTS_TOKEN_CS:Ljava/lang/String;

.field final RTS_TOKEN_STATUS:Ljava/lang/String;

.field final RTS_VALUES_COUNT:I

.field final RTS_VALUE_LOC:I

.field private mDialAlertDialog:Landroid/app/AlertDialog;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mLocked:Z

.field private mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

.field private mNameList:[Ljava/lang/String;

.field private mNumberList:[Ljava/lang/String;

.field private mSelectedPosition:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_STATUS:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUE_LOC:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_CS:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_PS:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUES_COUNT:I

    .line 57
    const-string v0, "Status"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_STATUS:Ljava/lang/String;

    .line 58
    const-string v0, "CS"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_CS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallList;->removeLockScreenAnimationEffects(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isDomesticArea()Z
    .locals 3

    .prologue
    .line 387
    const-string v1, "ril.currentplmn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, currIso:Ljava/lang/String;
    const-string v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 442
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemKeyEventRequested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 475
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 476
    return-void
.end method

.method private removeLockScreenAnimationEffects(Z)V
    .locals 4
    .parameter

    .prologue
    .line 447
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "PRIVATE_FLAG_FORCE_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 450
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 451
    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 453
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 468
    :goto_1
    return-void

    .line 452
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const-string v1, "EmergencyCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :cond_1
    :try_start_1
    const-string v0, "EmergencyCallList"

    const-string v1, "field not exist"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 459
    :catch_1
    move-exception v0

    .line 460
    const-string v1, "EmergencyCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    :catch_2
    move-exception v0

    .line 462
    const-string v1, "EmergencyCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    :catch_3
    move-exception v0

    .line 464
    const-string v1, "EmergencyCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    :catch_4
    move-exception v0

    .line 466
    const-string v1, "EmergencyCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execption - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    :goto_0
    return v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCategoryOf119(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    .line 265
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_2

    .line 266
    const-string v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, ril:Ljava/lang/String;
    const-string v7, ";"

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, rtsValues:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, statusValue:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-string v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, csValue:[Ljava/lang/String;
    aget-object v7, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 271
    .local v3, rtsCsValue:I
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 272
    .local v4, rtsStatusValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsCsValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rtsStatusValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 273
    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    if-nez v3, :cond_1

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 285
    :pswitch_0
    const/4 v0, 0x4

    .line 304
    .local v0, categoryOf119:I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 305
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 276
    .restart local v1       #csValue:[Ljava/lang/String;
    .restart local v2       #ril:Ljava/lang/String;
    .restart local v3       #rtsCsValue:I
    .restart local v4       #rtsStatusValue:I
    .restart local v5       #rtsValues:[Ljava/lang/String;
    .restart local v6       #statusValue:[Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x2

    .line 277
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 279
    .end local v0           #categoryOf119:I
    :pswitch_2
    const/4 v0, 0x4

    .line 280
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 282
    .end local v0           #categoryOf119:I
    :pswitch_3
    const/16 v0, 0x10

    .line 283
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 289
    .end local v0           #categoryOf119:I
    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 300
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 291
    .end local v0           #categoryOf119:I
    :pswitch_5
    const/4 v0, 0x2

    .line 292
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 294
    .end local v0           #categoryOf119:I
    :pswitch_6
    const/4 v0, 0x4

    .line 295
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 297
    .end local v0           #categoryOf119:I
    :pswitch_7
    const/16 v0, 0x10

    .line 298
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 306
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_2
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    packed-switch p1, :pswitch_data_2

    .line 318
    :pswitch_8
    const/4 v0, 0x4

    .line 321
    .restart local v0       #categoryOf119:I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 322
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 309
    .end local v0           #categoryOf119:I
    :pswitch_9
    const/4 v0, 0x2

    .line 310
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 312
    .end local v0           #categoryOf119:I
    :pswitch_a
    const/4 v0, 0x4

    .line 313
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 315
    .end local v0           #categoryOf119:I
    :pswitch_b
    const/16 v0, 0x10

    .line 316
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 289
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 307
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private setEmergencyList()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 327
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 328
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    const-string v7, "3"

    const-string v8, "ril.simtype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "18"

    const-string v8, "ril.simtype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    .line 384
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_2
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_5

    .line 343
    .local v1, isInSVC:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTSIM()Z

    move-result v7

    if-nez v7, :cond_6

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .end local v1           #isInSVC:Z
    :cond_5
    move v1, v7

    .line 342
    goto :goto_1

    .line 347
    .restart local v1       #isInSVC:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 352
    .end local v1           #isInSVC:Z
    :cond_7
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 353
    const-string v8, "ril.skt.network_regist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, ril:Ljava/lang/String;
    const-string v8, ";"

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, rtsValues:[Ljava/lang/String;
    aget-object v7, v5, v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, statusValue:[Ljava/lang/String;
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 357
    .local v4, rtsStatusValue:I
    aget-object v7, v5, v10

    const-string v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, csValue:[Ljava/lang/String;
    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 360
    .local v3, rtsCsValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsStatusValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsCsValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 363
    const/4 v7, 0x5

    if-ne v4, v7, :cond_8

    if-nez v3, :cond_8

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080064

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080068

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 367
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080067

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 370
    .end local v0           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_9
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 371
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 374
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_c

    .line 375
    .restart local v1       #isInSVC:Z
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v1, :cond_d

    .line 376
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .end local v1           #isInSVC:Z
    :cond_c
    move v1, v7

    .line 374
    goto :goto_2

    .line 379
    .restart local v1       #isInSVC:Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 67
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    const-string v1, "support_multi_window"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallList;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    .line 75
    :cond_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 77
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "20"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    const/16 v1, 0x1a

    invoke-direct {p0, v1, v3}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 81
    invoke-direct {p0, v4, v3}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 82
    const/4 v1, 0x6

    invoke-direct {p0, v1, v3}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 85
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallList;->isSystemKeyEventRequested(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 87
    :cond_3
    const-string v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 397
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "20"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 400
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    if-nez v1, :cond_0

    .line 407
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 424
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 417
    :sswitch_0
    const-string v1, "disable_camera_in_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x101 -> :sswitch_0
        0x105 -> :sswitch_0
        0x106 -> :sswitch_0
        0x107 -> :sswitch_0
        0x108 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 200
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 201
    iput p3, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    .line 202
    invoke-direct {p0, p3}, Lcom/android/phone/EmergencyCallList;->setCategoryOf119(I)V

    .line 204
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallList;->removeLockScreenAnimationEffects(Z)V

    .line 207
    iget v4, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    if-nez v4, :cond_0

    .line 208
    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    .line 209
    .local v0, ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v0           #ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    aget-object v3, v4, v5

    .line 217
    .local v3, msg:Ljava/lang/String;
    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090516

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090515

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090505

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v4, 0x7f090022

    new-instance v5, Lcom/android/phone/EmergencyCallList$1;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$1;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    const v4, 0x7f090025

    new-instance v5, Lcom/android/phone/EmergencyCallList$2;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$2;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v4, Lcom/android/phone/EmergencyCallList$3;

    invoke-direct {v4, p0}, Lcom/android/phone/EmergencyCallList$3;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 254
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f090504

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 255
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 256
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallList;->removeLockScreenAnimationEffects(Z)V

    .line 257
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 178
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 181
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 182
    const/4 v2, 0x6

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 186
    :cond_0
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 189
    .local v1, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 192
    .end local v1           #sbm:Landroid/app/StatusBarManager;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    :cond_2
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 196
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 92
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 94
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/phone/EmergencyCallList;->removeLockScreenAnimationEffects(Z)V

    .line 96
    const-string v8, "support_multi_window"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    iget-object v8, p0, Lcom/android/phone/EmergencyCallList;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v8, :cond_0

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume - mMultiWindow : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/EmergencyCallList;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 99
    iget-object v8, p0, Lcom/android/phone/EmergencyCallList;->mMultiWindow:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v8}, Landroid/sec/multiwindow/MultiWindow;->normalWindow()Z

    .line 103
    :cond_0
    const-string v8, "ota_mode_disable_expand"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 104
    iget-object v8, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 107
    const/4 v8, 0x3

    invoke-direct {p0, v8, v10}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 108
    const/16 v8, 0x1a

    invoke-direct {p0, v8, v10}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 109
    const/4 v8, 0x6

    invoke-direct {p0, v8, v10}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 112
    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 113
    .local v5, sbm:Landroid/app/StatusBarManager;
    const/high16 v8, 0x47

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 125
    .end local v5           #sbm:Landroid/app/StatusBarManager;
    :cond_1
    :goto_0
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "lock"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "missing_phone_lock"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    .line 129
    .local v6, statusBar:Landroid/app/StatusBarManager;
    const/high16 v8, 0x177

    invoke-virtual {v6, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 141
    .end local v6           #statusBar:Landroid/app/StatusBarManager;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->setEmergencyList()V

    .line 143
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    iget-object v10, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    invoke-direct {v8, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    const v8, 0x7f090504

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallList;->setTitle(I)V

    .line 145
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 146
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, sIMEI:Ljava/lang/String;
    const-string v8, "ril.simtype"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, sSimType:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 151
    const/4 v1, 0x0

    .line 156
    .local v1, iSimType:I
    :goto_1
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, sNumeric:Ljava/lang/String;
    const-string v8, "000000000000000"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, 0xc

    if-ne v1, v8, :cond_4

    const-string v8, "45001"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    :cond_3
    const v8, 0x7f0901a6

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 162
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 165
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    return-void

    .line 117
    .end local v0           #app:Lcom/android/phone/PhoneGlobals;
    .end local v1           #iSimType:I
    .end local v2           #sIMEI:Ljava/lang/String;
    .end local v3           #sNumeric:Ljava/lang/String;
    .end local v4           #sSimType:Ljava/lang/String;
    .end local v7           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v8, "statusbar"

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 118
    .restart local v5       #sbm:Landroid/app/StatusBarManager;
    const/high16 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0

    .line 153
    .end local v5           #sbm:Landroid/app/StatusBarManager;
    .restart local v2       #sIMEI:Ljava/lang/String;
    .restart local v4       #sSimType:Ljava/lang/String;
    .restart local v7       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #iSimType:I
    goto :goto_1
.end method
