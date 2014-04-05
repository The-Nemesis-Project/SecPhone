.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 415
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 480
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 417
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->CallEndTimeBlink()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$000(Lcom/android/phone/CallCard;)V

    goto :goto_0

    .line 423
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mMySoundButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Landroid/widget/ToggleButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 426
    :sswitch_2
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 428
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const-string v3, "Stop animation in IDLE or ACTIVE state!"

    #calls: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->destroyImageCache()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)V

    .line 432
    const-string v2, "caller_animation_small_images"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->resetCallCardAnimation()V

    goto :goto_0

    .line 439
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_2

    .line 441
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const-string v3, "Stop animation in IDLE or ACTIVE state!"

    #calls: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->destroyImageCache()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)V

    .line 443
    const-string v2, "caller_animation_small_images"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-virtual {v2}, Lcom/android/phone/CallCard;->resetCallCardAnimation()V

    goto/16 :goto_0

    .line 451
    :cond_2
    const-string v2, "caller_animation_small_images"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->setSmallCallCardAnimation()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)V

    .line 457
    :goto_1
    const/16 v2, 0x82

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 454
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->setCallCardAnimation()V
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)V

    goto :goto_1

    .line 460
    :sswitch_3
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 461
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$600(Lcom/android/phone/CallCard;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMarkList:[I
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$700(Lcom/android/phone/CallCard;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_5

    .line 466
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/CallCard;->mCurrentPeriodMarkIndex:I
    invoke-static {v2, v3}, Lcom/android/phone/CallCard;->access$602(Lcom/android/phone/CallCard;I)I

    .line 468
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$800(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$800(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPeriodMarkList:[I
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$700(Lcom/android/phone/CallCard;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-static {v4}, Lcom/android/phone/CallCard;->access$608(Lcom/android/phone/CallCard;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    :cond_6
    const/16 v2, 0x8c

    const-wide/16 v3, 0x190

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 463
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 473
    :sswitch_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 474
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    iget-object v3, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoto:Lcom/android/phone/InCallContactPhoto;
    invoke-static {v3}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallContactPhoto;

    move-result-object v3

    const v4, 0x7f020204

    #calls: Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/CallCard;->access$1000(Lcom/android/phone/CallCard;Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x78 -> :sswitch_1
        0x82 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method
