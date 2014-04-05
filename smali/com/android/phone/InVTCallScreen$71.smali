.class Lcom/android/phone/InVTCallScreen$71;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 15461
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/16 v7, 0x98

    const/4 v6, 0x0

    .line 15465
    const/16 v2, 0xb

    .line 15467
    .local v2, stream:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    .line 15470
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 15471
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15472
    const-string v3, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged progress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15474
    if-lez p2, :cond_0

    .line 15475
    add-int/lit8 p2, p2, -0x1

    .line 15478
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$15200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    if-nez v3, :cond_1

    .line 15479
    const-string v3, "InVTCallScreen"

    const-string v4, "Set force progress level 1 for vt call volume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15480
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$15200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 15483
    :cond_1
    const-string v3, "support_kk_vt_tablet_multiwindow"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15484
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 15485
    .local v1, mVolumeValue:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 15486
    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15489
    .end local v1           #mVolumeValue:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eq v3, p2, :cond_3

    .line 15490
    const-string v3, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch setting volume level : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15492
    .local v0, description:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15493
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$71;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 15495
    .end local v0           #description:Ljava/lang/String;
    :cond_3
    return-void

    .line 15467
    :cond_4
    const/16 v2, 0xb

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 15500
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 15505
    return-void
.end method
