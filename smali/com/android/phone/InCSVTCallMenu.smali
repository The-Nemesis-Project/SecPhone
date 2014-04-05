.class public Lcom/android/phone/InCSVTCallMenu;
.super Lcom/android/phone/InVTCallMenu;
.source "InCSVTCallMenu.java"


# static fields
.field public static mContextMenuStrArrayId:[Ljava/lang/String;

.field public static mOutGoingImage:[Ljava/lang/String;

.field public static mOutGoingImageHideMe:[Ljava/lang/String;

.field public static mOutGoingWithPresetImage:[Ljava/lang/String;


# instance fields
.field private mBlur_Off:Z

.field private mCallerUppos:[Ljava/lang/String;

.field private mCallerUpposAudioRecord:[Ljava/lang/String;

.field private mCameraAdjust:[Ljava/lang/String;

.field mDisableDualCamera:Landroid/view/MenuItem;

.field private mDisableOutGoingMenu:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field mEnableDualCamera:Landroid/view/MenuItem;

.field private mEnableDualCameraMenu:Z

.field protected mEnabledAvatar:Z

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mRecord_stop:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 2
    .parameter "inVTCallScreen"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallMenu;-><init>(Lcom/android/phone/VTCommonFunction;)V

    .line 67
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnabledAvatar:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 81
    const-string v0, "InCSVTCallMenu constructor..."

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->fillMenuArrayList()V

    .line 87
    return-void
.end method

.method public static addAvatarIntentExtras(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x16e

    const/16 v3, 0x12c

    const/4 v2, 0x1

    .line 775
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 778
    const-string v0, "aspectX"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v0, "aspectY"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    const-string v0, "outputX"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v0, "outputY"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const-string v0, "output"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    return-void
.end method

.method private getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    return-object v0
.end method

.method private getTestCloseCheck()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getTestCloseCheck()Z

    move-result v0

    return v0
.end method

.method private getVTManager()Lsiso/vt/VTManager;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    .line 712
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPressNoiseReductionMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 594
    .local v0, bthf:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f090398

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 611
    :goto_0
    return-void

    .line 597
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f090397

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v3, 0x7f09039a

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    .local v1, noiseReductionValue:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    .line 609
    iget-object v2, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InVTCallScreen;->updateNoiseReductionImage()V

    goto :goto_0

    .line 606
    .end local v1           #noiseReductionValue:I
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private setIsFarEndRecord(Z)V
    .locals 1
    .parameter "newVal"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InVTCallScreen;->setIsFarEndRecord(Z)V

    .line 725
    return-void
.end method

.method private setTestCloseCheck(Z)V
    .locals 1
    .parameter "newVal"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InVTCallScreen;->setTestCloseCheck(Z)V

    .line 721
    return-void
.end method

.method private showAcrodeaAvatar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 763
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 764
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "sdcard/acrodea_avatar_temp.jpg"

    .line 765
    .local v1, SD_CARD_TEMP_DIR:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 766
    .local v0, CaptureUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Lcom/android/phone/InCSVTCallMenu;->addAvatarIntentExtras(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 767
    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v3, :cond_0

    .line 769
    iput-boolean v5, p0, Lcom/android/phone/InCSVTCallMenu;->mEnabledAvatar:Z

    .line 770
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v2, v5}, Lcom/android/phone/InVTCallScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 772
    :cond_0
    return-void
.end method


# virtual methods
.method protected blurEffectOff()V
    .locals 3

    .prologue
    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 735
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 737
    :cond_0
    return-void
.end method

.method protected blurEffectOn()V
    .locals 3

    .prologue
    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    .line 729
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 731
    :cond_0
    return-void
.end method

.method protected clearVTCommonFunctionReference()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/phone/InVTCallMenu;->clearVTCommonFunctionReference()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 93
    return-void
.end method

.method protected contextMenuSelected(I)V
    .locals 10
    .parameter "aPosition"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 437
    const-string v3, "In CallVtScreen contextMenuSelected method"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 439
    .local v1, lResources:Landroid/content/res/Resources;
    sget-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 441
    .local v0, lContextMenuArray:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 444
    aget-object v3, v0, p1

    const v4, 0x7f090422

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 446
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    aget-object v3, v0, p1

    const v4, 0x7f0904b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v7}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 449
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v7}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 450
    :cond_2
    aget-object v3, v0, p1

    const v4, 0x7f0904b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v8}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 452
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v8}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 453
    :cond_3
    aget-object v3, v0, p1

    const v4, 0x7f090423

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 454
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 455
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v0, v3

    const v4, 0x7f090424

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOn()V

    goto :goto_0

    .line 457
    :cond_4
    add-int/lit8 v3, p1, 0x1

    aget-object v3, v0, v3

    const v4, 0x7f090425

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOff()V

    goto :goto_0

    .line 462
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 463
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 465
    :cond_6
    aget-object v3, v0, p1

    const v4, 0x7f090424

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 466
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOn()V

    goto/16 :goto_0

    .line 469
    :cond_7
    aget-object v3, v0, p1

    const v4, 0x7f090425

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 470
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->blurEffectOff()V

    goto/16 :goto_0

    .line 471
    :cond_8
    aget-object v3, v0, p1

    const v4, 0x7f090426

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    aget-object v3, v0, p1

    const v4, 0x7f090427

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 474
    :cond_9
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 475
    :cond_a
    aget-object v3, v0, p1

    const v4, 0x7f090428

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    aget-object v3, v0, p1

    const v4, 0x7f090429

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 478
    :cond_b
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 479
    :cond_c
    aget-object v3, v0, p1

    const v4, 0x7f0903eb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-nez v3, :cond_d

    .line 481
    const-string v3, "This is inside capture context menu selected"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestCaptureFarEndImage()V

    goto/16 :goto_0

    .line 483
    :cond_d
    aget-object v3, v0, p1

    const v4, 0x7f0903ec

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    aget-object v3, v0, p1

    const v4, 0x7f0904b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "vt_audio_mixed_recording_via_stack"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 485
    :cond_e
    const-string v3, "This is inside record video for far end or near end"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 488
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 490
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 494
    :cond_f
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f09029a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 497
    :cond_10
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 499
    :cond_11
    aget-object v3, v0, p1

    const v4, 0x7f0904b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 500
    const-string v3, "This is inside record audio"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->startRecordingAudio()V

    goto/16 :goto_0

    .line 502
    :cond_12
    aget-object v3, v0, p1

    const v4, 0x7f090444

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 503
    const-string v3, "In image option item"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v5}, Lcom/android/phone/InVTCallScreen;->setIsPlayVideo(Z)V

    .line 508
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videoAlertShowNeverAgain"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 510
    .local v2, showNeverAgain:I
    if-nez v2, :cond_13

    .line 511
    const-string v3, "selectImageFromMyFiles:: Image Dialog Shown"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v9}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 514
    :cond_13
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 516
    .end local v2           #showNeverAgain:I
    :cond_14
    aget-object v3, v0, p1

    const v4, 0x7f0903f8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 517
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setIsPlayVideo(Z)V

    .line 519
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videoAlertShowNeverAgain"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 521
    .restart local v2       #showNeverAgain:I
    if-nez v2, :cond_15

    .line 522
    const-string v3, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v9}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 525
    :cond_15
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 527
    .end local v2           #showNeverAgain:I
    :cond_16
    aget-object v3, v0, p1

    const v4, 0x7f090445

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->getNearEndPressed()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 529
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 531
    const-string v3, "Capture Image called for Nearend view"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    .line 536
    :cond_17
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f09029a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 538
    :cond_18
    aget-object v3, v0, p1

    const v4, 0x7f090432

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "vt_cmcc_operator_open_close_camera"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 540
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto/16 :goto_0

    .line 541
    :cond_19
    aget-object v3, v0, p1

    const v4, 0x7f09042a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 543
    iput v6, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 544
    invoke-direct {p0, v5}, Lcom/android/phone/InCSVTCallMenu;->setIsFarEndRecord(Z)V

    goto/16 :goto_0

    .line 545
    :cond_1a
    aget-object v3, v0, p1

    const v4, 0x7f090447

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 546
    const-string v3, "Preset Image is being called"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 549
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 550
    :cond_1b
    aget-object v3, v0, p1

    const v4, 0x7f09042b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 552
    const-string v3, "Show camera is called"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 553
    const-string v3, "Calling surfaceview_init"

    invoke-virtual {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 555
    :cond_1c
    aget-object v3, v0, p1

    const v4, 0x7f0903ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 556
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->requestSwitchCamera()V

    goto/16 :goto_0

    .line 557
    :cond_1d
    aget-object v3, v0, p1

    const v4, 0x7f0903f4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 558
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 559
    sget-object v3, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 567
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->setNearEndPressed(Z)V

    .line 568
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 561
    :cond_1e
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 562
    sget-object v3, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 564
    :cond_1f
    sget-object v3, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 570
    :cond_20
    aget-object v3, v0, p1

    const v4, 0x7f0903fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    aget-object v3, v0, p1

    const v4, 0x7f090432

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 572
    :cond_21
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 573
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 575
    :cond_22
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 576
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0903e8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 578
    :cond_23
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto/16 :goto_0

    .line 581
    :cond_24
    aget-object v3, v0, p1

    const v4, 0x7f09042c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 582
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->showDTMFDialpad()V

    goto/16 :goto_0

    .line 583
    :cond_25
    aget-object v3, v0, p1

    const v4, 0x7f090431

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    aget-object v3, v0, p1

    const v4, 0x7f09042f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 585
    :cond_26
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->toggleSpeaker()V

    goto/16 :goto_0

    .line 586
    :cond_27
    aget-object v3, v0, p1

    const v4, 0x7f09042d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    iget-object v3, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InVTCallScreen;->toggleBluetooth()V

    goto/16 :goto_0
.end method

.method protected fillMenuArrayList()V
    .locals 9

    .prologue
    const v8, 0x7f090444

    const v7, 0x7f090447

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 614
    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 616
    .local v0, lResources:Landroid/content/res/Resources;
    const-string v1, "kor_cs_vt_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0903eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    .line 626
    :goto_0
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0904b5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUpposAudioRecord:[Ljava/lang/String;

    .line 632
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f090422

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0904b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCameraAdjust:[Ljava/lang/String;

    .line 636
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUppos:[Ljava/lang/String;

    .line 639
    const-string v1, "vt_cmcc_operator_open_close_camera"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0903f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 644
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 648
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0903f8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 698
    :goto_1
    return-void

    .line 621
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0903eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0903ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    goto/16 :goto_0

    .line 652
    :cond_1
    const-string v1, "kor_qc_cs_vt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 657
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 660
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto :goto_1

    .line 663
    :cond_2
    const-string v1, "kor_cs_vt_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 668
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 672
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto/16 :goto_1

    .line 676
    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    .line 683
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 690
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const v3, 0x7f0903f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0903ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected getContextMenuStrArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    return-object v0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFarEndRecord()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isFarEndRecord()Z

    move-result v0

    return v0
.end method

.method isNearEndRecord()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isNearEndRecord()Z

    move-result v0

    return v0
.end method

.method isShowMe()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isShowMe()Z

    move-result v0

    return v0
.end method

.method mdmGetAllowCamera()Z
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    .line 798
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    .line 805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- optionsItemSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optionsItemSelected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), but null mInVTCallScreen!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;Z)V

    .line 433
    :cond_0
    :goto_0
    return v3

    .line 291
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 312
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 314
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto :goto_0

    .line 293
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/phone/InCSVTCallMenu;->setTestCloseCheck(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setEnabledSwitchCameraButton(Z)V

    .line 295
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 297
    const-string v0, " Menu -----> !! Close Camera Clicked "

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->MuteCamera()V

    goto :goto_0

    .line 303
    :sswitch_2
    const-string v0, "Menu ----->!! Open Camera Clicked "

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, v3}, Lcom/android/phone/InCSVTCallMenu;->setTestCloseCheck(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setEnabledSwitchCameraButton(Z)V

    .line 306
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 307
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->UnmuteCamera()V

    goto :goto_0

    .line 317
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const v1, 0x7f0903e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->releaseSelectVideo()V

    goto :goto_0

    .line 325
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    sget-object v0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setNearEndPressed(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 329
    sget-object v0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_5
    sget-object v0, Lcom/android/phone/InCSVTCallMenu;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 338
    :sswitch_5
    const-string v0, "START_RECORDING_FAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 339
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 340
    iput v3, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 341
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 344
    :sswitch_6
    const-string v0, "STOP_RECORDING_FAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 345
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 347
    iput v2, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 348
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 351
    :sswitch_7
    const-string v0, "START_RECORDING_NEAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 352
    iput-boolean v3, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 353
    iput v3, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 354
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 357
    :sswitch_8
    const-string v0, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 358
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    .line 360
    iput v2, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    .line 361
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 365
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->onPressNoiseReductionMenu()V

    goto/16 :goto_0

    .line 368
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const-string v1, "emotional_eye_contact"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->setEnableEyeContact(Z)V

    goto/16 :goto_0

    .line 372
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    const-string v1, "emotional_eye_contact"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->setEnableEyeContact(Z)V

    goto/16 :goto_0

    .line 376
    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->updateLayoutForDrawEffectUI()V

    .line 377
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->showEmotionalAnimation()V

    .line 379
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 382
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->updateLayoutForDrawEffectUI()V

    .line 383
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectUI()Lcom/android/phone/PreviewEffectUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectUI;->showThemeViewWithToast()V

    .line 385
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 388
    :sswitch_e
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 390
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PreviewEffectState;->setShowCartoonView(Z)V

    goto/16 :goto_0

    .line 394
    :sswitch_f
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getVTManager()Lsiso/vt/VTManager;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setEmotionalAnimation(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PreviewEffectState;->setShowCartoonView(Z)V

    goto/16 :goto_0

    .line 400
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->hideDTMFDialpad()V

    .line 405
    :cond_6
    const-string v0, "launchin LCD Brightness Activity"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->setSeekBarSelection(I)V

    .line 407
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 408
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->handlingSwitchCameraButton()V

    goto/16 :goto_0

    .line 411
    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->showAcrodeaAvatar()V

    goto/16 :goto_0

    .line 414
    :sswitch_12
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 415
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->requestDualCamera(Z)V

    goto/16 :goto_0

    .line 418
    :sswitch_13
    iput-boolean v2, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 419
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->requestDualCamera(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->updateDualCameraLayout(Z)V

    goto/16 :goto_0

    .line 424
    :sswitch_14
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->requestUpdateOnehandmode(Z)V

    goto/16 :goto_0

    .line 427
    :sswitch_15
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InVTCallScreen;->requestUpdateOnehandmode(Z)V

    goto/16 :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x7f0a0365 -> :sswitch_0
        0x7f0a03a7 -> :sswitch_13
        0x7f0a0412 -> :sswitch_1
        0x7f0a0413 -> :sswitch_2
        0x7f0a0414 -> :sswitch_3
        0x7f0a0415 -> :sswitch_4
        0x7f0a041b -> :sswitch_9
        0x7f0a041c -> :sswitch_9
        0x7f0a041d -> :sswitch_a
        0x7f0a041e -> :sswitch_b
        0x7f0a041f -> :sswitch_c
        0x7f0a0420 -> :sswitch_d
        0x7f0a0421 -> :sswitch_e
        0x7f0a0422 -> :sswitch_f
        0x7f0a0423 -> :sswitch_10
        0x7f0a0424 -> :sswitch_11
        0x7f0a0425 -> :sswitch_12
        0x7f0a0426 -> :sswitch_14
        0x7f0a0427 -> :sswitch_15
        0x7f0a042c -> :sswitch_7
        0x7f0a042d -> :sswitch_8
        0x7f0a042e -> :sswitch_5
        0x7f0a042f -> :sswitch_6
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0a041b

    const v7, 0x7f0a0413

    const v6, 0x7f0a0412

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/phone/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 98
    const-string v4, "prepareOptionsMenu()..."

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 100
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_0

    .line 276
    :goto_0
    return v2

    .line 106
    :cond_0
    const-string v4, "support_easy_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const-string v2, "prepareOptionsMenu()...SUPPORT_EASY_MODE"

    invoke-virtual {p0, v2}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    move v2, v3

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_17

    .line 113
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 114
    .local v1, itemId:I
    sparse-switch v1, :sswitch_data_0

    .line 112
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :sswitch_1
    const-string v4, "vt_cmcc_operator_open_close_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check state isShowMe()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getTestCloseCheck()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    const-string v4, "Adding CloseCameraTEST to Menu"

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 121
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-nez v4, :cond_4

    .line 124
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 127
    const-string v4, "Adding SHOW Me to Menu"

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 128
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    :cond_5
    const v4, 0x7f0a0414

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 132
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state isShowMe()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isShowMe()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getTestCloseCheck()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/phone/InCSVTCallMenu;->getTestCloseCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 133
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 137
    :cond_7
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 138
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 143
    :sswitch_2
    const-string v4, "support_kk_vt_tablet_multiwindow"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 144
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    if-eqz v4, :cond_8

    .line 146
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 148
    :cond_8
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 151
    :cond_9
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 157
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mIsTabletDevice:Z

    if-eqz v4, :cond_a

    const-string v4, "support_kk_vt_tablet_multiwindow"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v4, v4, Lcom/android/phone/InVTCallState;->showDialpad:Z

    if-nez v4, :cond_b

    .line 160
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 162
    :cond_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 169
    :sswitch_4
    const-string v4, "kor_qc_cs_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isNoiseSuppressionSupported()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 172
    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 173
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    const v4, 0x7f0a041c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 176
    :cond_c
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    const v4, 0x7f0a041c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 181
    :cond_d
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    const v4, 0x7f0a041c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 187
    :sswitch_5
    const-string v4, "vt_adjust_screen_brightness"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 192
    :sswitch_6
    const-string v4, "acrodea_avatar"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    const v4, 0x7f0a0424

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v4, :cond_2

    .line 194
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 199
    :sswitch_7
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    .line 200
    const-string v4, "vt_dual_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v4

    if-nez v4, :cond_f

    .line 201
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    if-eqz v4, :cond_e

    .line 202
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 205
    :goto_3
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 204
    :cond_e
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 207
    :cond_f
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 211
    :sswitch_8
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    .line 212
    const-string v4, "vt_dual_camera"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 213
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    if-eqz v4, :cond_10

    .line 214
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 217
    :goto_4
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 216
    :cond_10
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 219
    :cond_11
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 224
    :sswitch_9
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    .line 225
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 227
    :cond_12
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 232
    :sswitch_a
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/phone/InCSVTCallMenu;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InVTCallScreen;->isOneHandOperationEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 233
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 235
    :cond_13
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 243
    :sswitch_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCSVTCallMenu;->log(Ljava/lang/String;)V

    .line 244
    const v4, 0x7f0a042c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    const v4, 0x7f0a042d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    const v4, 0x7f0a042e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 247
    const v4, 0x7f0a042f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->isFarEndRecord()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 249
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    if-eqz v4, :cond_14

    .line 250
    const v4, 0x7f0a042f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 252
    :cond_14
    const v4, 0x7f0a042e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 255
    :cond_15
    iget-boolean v4, p0, Lcom/android/phone/InCSVTCallMenu;->mRecord_stop:Z

    if-eqz v4, :cond_16

    .line 256
    const v4, 0x7f0a042d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 258
    :cond_16
    const v4, 0x7f0a042c

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 265
    .end local v1           #itemId:I
    :cond_17
    iget v4, p0, Lcom/android/phone/InCSVTCallMenu;->mMenuSelected:I

    packed-switch v4, :pswitch_data_0

    :goto_5
    move v2, v3

    .line 276
    goto/16 :goto_0

    .line 267
    :pswitch_0
    const v4, 0x7f0a042b

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    .line 272
    :pswitch_1
    const v4, 0x7f0a040d

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x7f0a03a7 -> :sswitch_8
        0x7f0a0412 -> :sswitch_0
        0x7f0a0413 -> :sswitch_1
        0x7f0a0415 -> :sswitch_2
        0x7f0a0416 -> :sswitch_3
        0x7f0a041b -> :sswitch_0
        0x7f0a041c -> :sswitch_4
        0x7f0a0423 -> :sswitch_5
        0x7f0a0424 -> :sswitch_6
        0x7f0a0425 -> :sswitch_7
        0x7f0a0426 -> :sswitch_9
        0x7f0a0427 -> :sswitch_a
        0x7f0a042c -> :sswitch_0
        0x7f0a042d -> :sswitch_0
        0x7f0a042e -> :sswitch_0
        0x7f0a042f -> :sswitch_b
    .end sparse-switch

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDisableOutGoingMenu(Z)V
    .locals 0
    .parameter "newVal"

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableOutGoingMenu:Z

    .line 706
    return-void
.end method

.method setEnableDualCameraMenu(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 825
    iput-boolean p1, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCameraMenu:Z

    .line 826
    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/android/phone/InCSVTCallMenu;->getPreviewEffectState()Lcom/android/phone/PreviewEffectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PreviewEffectState;->isDualCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDisableDualCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mEnableDualCamera:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected setFarEndMenuString()V
    .locals 1

    .prologue
    .line 740
    const-string v0, "vt_audio_mixed_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUpposAudioRecord:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected setNearEndMenuString()V
    .locals 1

    .prologue
    .line 748
    const-string v0, "vt_adjust_camera_contrast_brightness"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mCameraAdjust:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 756
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCSVTCallMenu;->mBlur_Off:Z

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCSVTCallMenu;->mDownUpposBlurOff:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/InCSVTCallMenu;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0
.end method
