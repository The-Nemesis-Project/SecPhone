.class Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter
    .parameter "toneId"

    .prologue
    .line 5379
    iput-object p1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 5380
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5381
    iput p2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    .line 5382
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x62

    .line 5386
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v4}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5388
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2200(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5389
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCurTID:I
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2300(Lcom/android/phone/CallNotifier;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    if-ne v0, v3, :cond_1

    .line 5392
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5393
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "pingring=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5425
    :cond_0
    :goto_0
    return-void

    .line 5397
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2200(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 5399
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5400
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "signalInfoTone=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5403
    :cond_2
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5405
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "pingring=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5407
    :cond_3
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    if-ne v0, v3, :cond_7

    .line 5410
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalInfoTonePlayer Ignore toneID = ToneGenerator.TONE_CDMA_SIGNAL_OFF("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 5418
    :cond_5
    :goto_1
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5419
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "signalInfoTone=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5422
    :cond_6
    const-string v0, "audio_manager_pingring"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5423
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget v1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    #setter for: Lcom/android/phone/CallNotifier;->mCurTID:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2302(Lcom/android/phone/CallNotifier;I)I

    goto/16 :goto_0

    .line 5412
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$2200(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 5413
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5414
    iget-object v0, p0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mIsSignalInfoToneGenerator:Z
    invoke-static {v0, v4}, Lcom/android/phone/CallNotifier;->access$2402(Lcom/android/phone/CallNotifier;Z)Z

    goto :goto_1
.end method
