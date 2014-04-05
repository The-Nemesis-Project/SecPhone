.class public Lcom/android/phone/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# static fields
.field private static sVideoCallManager:Lcom/android/phone/VideoCallManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    .line 85
    const-string v1, "Instantiating VideoCallManager"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    .line 89
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    iput-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    new-instance v2, Lcom/android/phone/IMSMediaStateListener;

    iget-object v3, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/IMSMediaStateListener;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->registerForMediaStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallManager;->createDefaultImages()V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "defaultImagePath"
    .parameter "resId"
    .parameter "newfileName"

    .prologue
    .line 657
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 658
    .local v6, resources:Landroid/content/res/Resources;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v1, defaultFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 660
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 661
    .local v3, image:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 663
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, p3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 664
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 665
    .local v0, bufArray:[B
    const/4 v4, 0x0

    .line 667
    .local v4, imageLength:I
    :cond_0
    if-eqz v3, :cond_1

    .line 668
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 670
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 671
    if-lez v4, :cond_2

    .line 672
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 674
    :cond_2
    if-gtz v4, :cond_0

    .line 679
    if-eqz v5, :cond_3

    .line 680
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 682
    :cond_3
    if-eqz v3, :cond_4

    .line 683
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    .end local v0           #bufArray:[B
    .end local v4           #imageLength:I
    :cond_4
    :goto_0
    const/4 v5, 0x0

    .line 692
    .end local v3           #image:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    :cond_5
    const/4 v1, 0x0

    .line 693
    return-void

    .line 685
    .restart local v0       #bufArray:[B
    .restart local v3       #image:Ljava/io/InputStream;
    .restart local v4       #imageLength:I
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 686
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 675
    .end local v0           #bufArray:[B
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #imageLength:I
    :catch_1
    move-exception v2

    .line 676
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    if-eqz v5, :cond_6

    .line 680
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 682
    :cond_6
    if-eqz v3, :cond_4

    .line 683
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 685
    :catch_2
    move-exception v2

    .line 686
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 678
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 679
    if-eqz v5, :cond_7

    .line 680
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 682
    :cond_7
    if-eqz v3, :cond_8

    .line 683
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 687
    :cond_8
    :goto_1
    throw v7

    .line 685
    :catch_3
    move-exception v2

    .line 686
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private createDefaultImages()V
    .locals 3

    .prologue
    .line 648
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    const v1, 0x7f0202d8

    const-string v2, "preset_defaultimage_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 649
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    const v1, 0x7f0202da

    const-string v2, "preset_defaultimage_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 650
    const-string v0, "data/data/com.android.phone/files/preset_defaultimage_vga_land.jpg"

    const v1, 0x7f0202db

    const-string v2, "preset_defaultimage_vga_land.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 651
    const-string v0, "data/data/com.android.phone/files/call_settings_default_image_qvga.jpg"

    const v1, 0x7f0202d9

    const-string v2, "call_settings_default_image_qvga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    const-string v0, "data/data/com.android.phone/files/video_call_capture_vga.jpg"

    const v1, 0x7f020709

    const-string v2, "video_call_capture_vga.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 653
    const-string v0, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    const v1, 0x7f020708

    const-string v2, "video_call_capture_qcif.jpg"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/VideoCallManager;->createDefaultImage(Ljava/lang/String;ILjava/lang/String;)V

    .line 654
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 108
    const-class v1, Lcom/android/phone/VideoCallManager;

    monitor-enter v1

    :try_start_0
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "common_volte_vt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 112
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v2, :cond_2

    .line 113
    new-instance v2, Lcom/android/phone/VideoCallManager;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 116
    :cond_2
    sget-object v2, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, v2, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    if-eqz v2, :cond_0

    .line 119
    sget-object v0, Lcom/android/phone/VideoCallManager;->sVideoCallManager:Lcom/android/phone/VideoCallManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 722
    const-string v0, "VideoCallManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method


# virtual methods
.method public captureSurfaceImage(Z)V
    .locals 7
    .parameter "isNearEnd"

    .prologue
    .line 591
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 592
    .local v0, activeCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 594
    .local v1, callType:I
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 595
    const/16 v1, 0xa

    .line 610
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v5, p1, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_1
    if-nez p1, :cond_0

    .line 616
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    .line 617
    .local v4, imagePath:Ljava/lang/String;
    const-string v3, "QCIF"

    .line 619
    .local v3, frameSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 620
    const-string v3, "QCIF"

    .line 621
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    .line 640
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v6, 0x100

    invoke-interface {v5, v4, v6, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    .end local v3           #frameSize:Ljava/lang/String;
    .end local v4           #imagePath:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 596
    :cond_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 597
    const/16 v1, 0x9

    goto :goto_0

    .line 600
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    const/4 v1, 0x6

    goto :goto_0

    .line 602
    :cond_3
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 603
    const/4 v1, 0x7

    goto :goto_0

    .line 605
    :cond_4
    const-string v5, "captureSurfaceImage can not be executed"

    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 622
    .end local v2           #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    .restart local v3       #frameSize:Ljava/lang/String;
    .restart local v4       #imagePath:Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 623
    const-string v3, "QVGA"

    .line 624
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    goto :goto_2

    .line 628
    :cond_6
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 629
    const-string v3, "VGA"

    .line 630
    const-string v4, "data/data/com.android.phone/files/video_call_capture_vga.jpg"

    goto :goto_2

    .line 631
    :cond_7
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 632
    const-string v3, "VGALAND"

    .line 633
    const-string v4, "data/data/com.android.phone/files/video_call_capture_qcif.jpg"

    goto :goto_2

    .line 635
    :cond_8
    const-string v5, "sendStillImage can not be executed"

    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 641
    :catch_1
    move-exception v2

    .line 642
    .restart local v2       #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->closeCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getBackCameraId()I
    .locals 3

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 356
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getBackCameraId()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraDirection()I
    .locals 3

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 476
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraDirection()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 481
    :goto_0
    return v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 326
    .local v1, result:Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    .locals 3

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 390
    .local v1, result:Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 395
    :goto_0
    return-object v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedFPS()I
    .locals 3

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 203
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedFPS()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedHeight()I
    .locals 3

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 173
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedHeight()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNegotiatedWidth()I
    .locals 3

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 188
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNegotiatedWidth()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNumberOfCameras()I
    .locals 3

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->getNumberOfCameras()I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method holdVideo()V
    .locals 2

    .prologue
    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->holdVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public mediaDeInit()V
    .locals 2

    .prologue
    .line 138
    const-string v1, "mediaDeInit"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaDeInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public mediaInit()V
    .locals 2

    .prologue
    .line 126
    const-string v1, "mediaInit"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->mediaInit()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized openCamera(I)Z
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const/4 v1, 0x0

    .line 260
    .local v1, result:Z
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v2, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->openCamera(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 265
    :goto_0
    monitor-exit p0

    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 256
    .end local v0           #e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method resumeVideo()V
    .locals 2

    .prologue
    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->resumeVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendLiveVideo()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 8

    .prologue
    .line 519
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 521
    .local v5, validCall:Lcom/android/internal/telephony/Call;
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    .line 522
    .local v2, imagePath:Ljava/lang/String;
    const-string v1, "QCIF"

    .line 524
    .local v1, frameSize:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, preset_Name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, presetImageSrc:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 529
    const-string v1, "QCIF"

    .line 530
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    .line 555
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendStillImage, frameSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendStillImage, frameSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 559
    if-eqz v4, :cond_1

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 560
    :cond_0
    if-eqz v3, :cond_1

    .line 561
    move-object v2, v3

    .line 565
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v6, v6, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 566
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-object v2, v6, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 570
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    const/16 v7, 0x100

    invoke-interface {v6, v2, v7, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->sendStillImage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_1
    return-void

    .line 531
    :cond_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 532
    const-string v1, "VGA"

    .line 533
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    goto :goto_0

    .line 534
    :cond_4
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 535
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 536
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 537
    const-string v1, "QCIF"

    .line 538
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_qcif.jpg"

    goto :goto_0

    .line 540
    :cond_5
    const-string v1, "VGA"

    .line 541
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga.jpg"

    goto/16 :goto_0

    .line 544
    :cond_6
    const-string v1, "VGALAND"

    .line 545
    const-string v2, "data/data/com.android.phone/files/preset_defaultimage_vga_land.jpg"

    goto/16 :goto_0

    .line 547
    :cond_7
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 548
    const-string v1, "QVGALAND"

    .line 549
    const-string v2, "data/data/com.android.phone/files/call_settings_default_image_qvga.jpg"

    goto/16 :goto_0

    .line 551
    :cond_8
    const-string v6, "sendStillImage can not be executed"

    invoke-direct {p0, v6}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method setCameraDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraDisplayOrientation orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsMediaReadyToReceivePreview(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setIsMediaReadyToReceivePreview(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearEndSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->setDisplay(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startRender(Z)V
    .locals 2
    .parameter "isNearEnd"

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->startRender(Z)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 2

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->stopCameraPreview()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallManager;->mImsInterface:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForMedia;->switchCamera()V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
