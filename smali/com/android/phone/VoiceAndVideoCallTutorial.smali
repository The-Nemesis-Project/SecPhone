.class public Lcom/android/phone/VoiceAndVideoCallTutorial;
.super Landroid/app/Activity;
.source "VoiceAndVideoCallTutorial.java"


# instance fields
.field private callDialingAnimation:Landroid/widget/ImageView;

.field private callImageAnimation:Landroid/widget/ImageView;

.field private callImgUnknown:Landroid/widget/RelativeLayout;

.field private callImgUserView:Landroid/widget/ImageView;

.field private callRunTime:Landroid/widget/TextView;

.field private callStateLayout:Landroid/widget/RelativeLayout;

.field private callTimerCount:I

.field private callduringcallmysound:Landroid/widget/ImageView;

.field private callerInfoLayout:Landroid/widget/RelativeLayout;

.field private callerName:Landroid/widget/TextView;

.field private dialingImgUserView:Landroid/widget/ImageView;

.field private inCallIconContainer:Landroid/widget/LinearLayout;

.field private mAddButton:Landroid/widget/Button;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mEndButton:Landroid/widget/Button;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mMakeCallComplete:Landroid/widget/FrameLayout;

.field private mMySoundButton:Landroid/widget/ImageView;

.field private mNoiseReductionButton:Landroid/widget/ImageView;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private mholdButton:Landroid/widget/ToggleButton;

.field private nextstep:I

.field private step:I

.field private timerForAni:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 96
    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 98
    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 404
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$4;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$5;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$5;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 477
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$6;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$6;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 494
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$7;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$7;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/VoiceAndVideoCallTutorial;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setReultSetting(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/VoiceAndVideoCallTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->showToast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$908(Lcom/android/phone/VoiceAndVideoCallTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    return v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f050002

    .line 445
    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    .line 446
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 448
    const v0, 0x7f050009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    .line 449
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 451
    const v0, 0x7f05000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    .line 452
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 454
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 455
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 456
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 457
    return-void
.end method

.method private callActiveScreenSettings()V
    .locals 11

    .prologue
    .line 218
    const-string v7, "VoiceAndVideoCallTutorial: "

    const-string v8, "callActiveScreenSettings"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v7, 0x7f0a034b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    .line 220
    const v7, 0x7f0a01b3

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    .line 221
    const v7, 0x7f0a01aa

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    .line 222
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const v8, 0x7f09034f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 226
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const-string v8, "00:00"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v7, :cond_4

    .line 229
    :cond_0
    const/4 v7, 0x7

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    .line 230
    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 231
    const v7, 0x7f0a01ab

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    .line 232
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0005

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const v7, 0x7f0a01d1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    .line 236
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const v7, 0x7f0a035b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    .line 238
    const-string v7, "align_right_voice_eq_btn"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .local v6, voiceEqLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 242
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .end local v6           #voiceEqLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const v7, 0x7f0a0358

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    .line 246
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    const v8, 0x7f020204

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 303
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/VoiceAndVideoCallTutorial$1;

    invoke-direct {v8, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$1;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/phone/VoiceAndVideoCallTutorial$2;

    invoke-direct {v8, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$2;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/VoiceAndVideoCallTutorial;->animationInit(Landroid/content/Context;)V

    .line 329
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    return-void

    .line 249
    :cond_3
    const v7, 0x7f0a0359

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    .line 250
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v8, 0x7f020204

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_4
    iget v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 253
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->nextstep:I

    .line 254
    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 255
    const v7, 0x7f0a01ae

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, Dialing:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ims_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 259
    :cond_5
    const v7, 0x7f0a01a8

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    .line 260
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    const v7, 0x7f0a01a7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    .line 262
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v7, 0x7f0a01ab

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    .line 265
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0032

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 266
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v7, 0x7f0a01a9

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 269
    .local v5, near:Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 271
    .end local v5           #near:Landroid/widget/ImageView;
    :cond_6
    const v7, 0x7f0a01af

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 272
    .local v0, Capture:Landroid/widget/Button;
    const v7, 0x7f0a01b0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 273
    .local v2, Record:Landroid/widget/Button;
    if-eqz v0, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_7
    if-eqz v2, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_8
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 278
    .end local v0           #Capture:Landroid/widget/Button;
    .end local v1           #Dialing:Landroid/widget/TextView;
    .end local v2           #Record:Landroid/widget/Button;
    :cond_9
    const v7, 0x7f0a01a8

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    .line 279
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    const v7, 0x7f0a01a7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    .line 281
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    const v7, 0x7f0a01ab

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    .line 283
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f0b0032

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "ims_volte"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 286
    :cond_a
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 287
    const v7, 0x7f0a01ae

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    .restart local v1       #Dialing:Landroid/widget/TextView;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v7, 0x7f0a01a9

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 292
    .restart local v5       #near:Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    const v7, 0x7f0a0349

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 294
    .local v3, hide_show:Landroid/widget/Button;
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v7, 0x7f0a034a

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 296
    .local v4, mute:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 298
    .end local v1           #Dialing:Landroid/widget/TextView;
    .end local v3           #hide_show:Landroid/widget/Button;
    .end local v4           #mute:Landroid/widget/Button;
    .end local v5           #near:Landroid/widget/ImageView;
    :cond_b
    iget-object v7, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f02008d

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private dialingScreenToast()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/phone/VoiceAndVideoCallTutorial$8;

    invoke-direct {v1, p0}, Lcom/android/phone/VoiceAndVideoCallTutorial$8;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 394
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, sTime:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void

    .line 397
    .end local v0           #sTime:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #sTime:Ljava/lang/String;
    goto :goto_0

    .line 401
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private runVoiceCallAnimation()V
    .locals 6

    .prologue
    .line 333
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "runVoiceCallAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    .line 335
    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    .line 336
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    :cond_0
    new-instance v0, Lcom/android/phone/VoiceAndVideoCallTutorial$3;

    const-wide/16 v2, 0xe10

    const-wide/16 v4, 0x190

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/VoiceAndVideoCallTutorial$3;-><init>(Lcom/android/phone/VoiceAndVideoCallTutorial;JJ)V

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 390
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 391
    return-void
.end method

.method private setReultSetting(I)V
    .locals 4
    .parameter "step"

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "VoiceAndVideoCallTutorial: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReultSetting step  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 443
    return-void
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 511
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090349

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    return-void
.end method

.method private videoCallingTutorial()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x67

    .line 195
    const-string v1, "VoiceAndVideoCallTutorial: "

    const-string v2, "videoCallingTutorial"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :cond_0
    const v1, 0x7f040055

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 201
    :goto_0
    const v1, 0x7f0a01a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 202
    const v1, 0x7f0a01b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    .line 203
    const v1, 0x7f0a01ad

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    const v2, 0x7f09034e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const v1, 0x7f0a01ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    .line 206
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 207
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const v1, 0x7f0a027e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 209
    .local v0, camera:Landroid/widget/Button;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .end local v0           #camera:Landroid/widget/Button;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    .line 212
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void

    .line 199
    :cond_3
    const v1, 0x7f0400ef

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method private voiceCallingTutorial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 166
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "voiceCallingTutorial"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const v0, 0x7f0400f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 168
    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mNoiseReductionButton:Landroid/widget/ImageView;

    .line 169
    const-string v0, "noise_suppression_support_speaker"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mNoiseReductionButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mNoiseReductionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_0
    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    .line 174
    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mholdButton:Landroid/widget/ToggleButton;

    .line 175
    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    .line 176
    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mMySoundButton:Landroid/widget/ImageView;

    .line 177
    const-string v0, "hide_pause_icon_help_call_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mholdButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_0
    const v0, 0x7f0a0357

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 188
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    .line 189
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 190
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    .line 191
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 118
    const-string v1, "VoiceAndVideoCallTutorial: "

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, bun:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 122
    :cond_0
    const-string v1, "VoiceAndVideoCallTutorial: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init step : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v1, :cond_3

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    .line 129
    :cond_2
    :goto_0
    return-void

    .line 126
    :cond_3
    iget v1, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 433
    :cond_1
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    .line 434
    :cond_2
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->setReultSetting(I)V

    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 436
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 145
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    if-nez v0, :cond_3

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 152
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    .line 163
    :cond_2
    :goto_0
    return-void

    .line 158
    :cond_3
    iget v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->step:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iput v2, p0, Lcom/android/phone/VoiceAndVideoCallTutorial;->callTimerCount:I

    .line 161
    invoke-direct {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceAndVideoCallTutorial;->init()V

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    const-string v0, "VoiceAndVideoCallTutorial: "

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
