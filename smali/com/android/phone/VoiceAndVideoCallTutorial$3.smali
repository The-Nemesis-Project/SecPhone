.class Lcom/android/phone/VoiceAndVideoCallTutorial$3;
.super Landroid/os/CountDownTimer;
.source "VoiceAndVideoCallTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field aniDirect:I

.field aniStep:I

.field count:I

.field direct:I

.field final synthetic this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceAndVideoCallTutorial;JJ)V
    .locals 2
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    iput-object p1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 341
    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->direct:I

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniDirect:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 344
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    packed-switch v0, :pswitch_data_1

    .line 378
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->direct:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    .line 379
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->direct:I

    .line 380
    :cond_1
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->count:I

    if-gtz v0, :cond_2

    iput v3, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->direct:I

    .line 381
    :cond_2
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniDirect:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    .line 382
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniDirect:I

    .line 383
    :cond_3
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniStep:I

    if-gtz v0, :cond_4

    iput v3, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->aniDirect:I

    .line 384
    :cond_4
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 358
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 366
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$800(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 369
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$800(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 372
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$800(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 364
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
