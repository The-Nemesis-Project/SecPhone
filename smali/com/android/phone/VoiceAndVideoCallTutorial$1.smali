.class Lcom/android/phone/VoiceAndVideoCallTutorial$1;
.super Ljava/lang/Object;
.source "VoiceAndVideoCallTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/16 v3, 0x68

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 305
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$100(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$200(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$300(Lcom/android/phone/VoiceAndVideoCallTutorial;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$400(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$400(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$400(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->access$500(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial$1;->this$0:Lcom/android/phone/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
