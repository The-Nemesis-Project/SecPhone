.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 917
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 793
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRingHandler: msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v4, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 794
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_6

    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating ringtone: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 799
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 802
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 804
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xfa0

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 809
    :cond_1
    const-string v1, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mActiveSimId:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)I

    move-result v1

    if-eq v2, v1, :cond_3

    :cond_2
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mActiveSimId:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;)I

    move-result v1

    if-ne v2, v1, :cond_b

    .line 811
    :cond_3
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v1

    if-nez v1, :cond_a

    .line 812
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 829
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v4

    .line 830
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 831
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 833
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 835
    :cond_6
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 836
    if-eqz v0, :cond_0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 839
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 841
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    .line 842
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 843
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    .line 846
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsRingRepeat:Z
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 847
    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setRepeat(Z)V

    .line 855
    :goto_2
    const-string v1, "ringtone_escalating"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mIsRingEscalating:Z
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 856
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 857
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    #setter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v1, v4}, Lcom/android/phone/Ringer;->access$1002(Lcom/android/phone/Ringer;I)I

    .line 858
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRingHandler: getStreamVolume - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v4, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 859
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 860
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 868
    :cond_8
    :goto_3
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 869
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 870
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1200(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_9

    .line 871
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$1202(Lcom/android/phone/Ringer;J)J

    .line 873
    :cond_9
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 814
    :cond_a
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    goto/16 :goto_1

    .line 817
    :cond_b
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v1

    if-nez v1, :cond_d

    .line 818
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRingHandler: ---------01 + r is null ? -------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_c

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 820
    if-nez v0, :cond_4

    .line 821
    new-instance v0, Landroid/media/Ringtone;

    .end local v0           #r:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 822
    .restart local v0       #r:Landroid/media/Ringtone;
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    goto/16 :goto_1

    :cond_c
    move v1, v3

    .line 819
    goto :goto_4

    .line 825
    :cond_d
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    goto/16 :goto_1

    .line 833
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 850
    :cond_e
    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setRepeat(Z)V

    goto/16 :goto_2

    .line 862
    :cond_f
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const-string v3, "mRingHandler: has RETURN_ORIGIN_VOLUME message"

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 864
    :cond_10
    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 865
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1100(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto/16 :goto_3

    .line 879
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const-string v3, "mRingHandler: PLAY_TTS..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 881
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$1302(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 882
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1400(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 889
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const-string v3, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 890
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 891
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_12

    .line 892
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 898
    :goto_5
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 899
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 900
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v1, v2}, Lcom/android/phone/Ringer;->access$1302(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    .line 903
    :cond_11
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 894
    :cond_12
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto :goto_5

    .line 907
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETURN_ORIGIN_VOLUME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v4, v2}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    .line 908
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v6, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 909
    const-string v1, "extra_ringer"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$1100(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto/16 :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
