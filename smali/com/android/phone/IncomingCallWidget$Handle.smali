.class public Lcom/android/phone/IncomingCallWidget$Handle;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;,
        Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
    }
.end annotation


# instance fields
.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final ARROW_ANI_DURATION:I

.field final ARROW_COUNT:I

.field private final FIRST_WAVE_DELAY:I

.field private final MAKE_TARGET_DURATION:I

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private final RESET_DURATION:I

.field private final RESET_STATE:I

.field private final SECOND_WAVE_DELAY:I

.field private final START_WAVE:I

.field private isXlargeScreen:Z

.field private mArrowAcceptImage_id_USA:[I

.field private mArrowContainer:Landroid/widget/LinearLayout;

.field private mArrowImageViews:[Landroid/widget/ImageView;

.field private mArrowRejectImage_id_USA:[I

.field private mCircleColor:I

.field public mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDuringSwingAnimation:Z

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mIncomingCircleDescription:Landroid/widget/TextView;

.field private mParent:Landroid/view/ViewGroup;

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTab:Landroid/widget/ImageView;

.field private mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

.field private mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/phone/IncomingCallWidget;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "handleType"

    .prologue
    const/16 v5, 0x384

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 492
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->AIR_MOTION_SWING_DURATION:I

    .line 441
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->AIR_MOTION_SWING_REPEATCOUNT:I

    .line 443
    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->FIRST_WAVE_DELAY:I

    .line 445
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->SECOND_WAVE_DELAY:I

    .line 447
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->START_WAVE:I

    .line 449
    iput v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_STATE:I

    .line 451
    iput v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->REMOVE_AIRMOTION_SWEEP:I

    .line 453
    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_ANI_DURATION:I

    .line 465
    iput v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->ARROW_COUNT:I

    .line 475
    iput v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 483
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z

    .line 485
    iput-boolean v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    .line 489
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowAcceptImage_id_USA:[I

    .line 490
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowRejectImage_id_USA:[I

    .line 791
    new-instance v0, Lcom/android/phone/IncomingCallWidget$Handle$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingCallWidget$Handle$3;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    .line 1077
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->MAKE_TARGET_DURATION:I

    .line 1079
    iput v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->RESET_DURATION:I

    .line 493
    iput-object p2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    .line 494
    iput-object p3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    .line 495
    iput p4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    .line 496
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->init()V

    .line 497
    return-void

    .line 489
    :array_0
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data

    .line 490
    :array_1
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingCallWidget$Handle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->startAirMotionAnimation(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/IncomingCallWidget$Handle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingCallWidget$Handle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private hideArrow()V
    .locals 6

    .prologue
    .line 784
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .local v0, arr$:[Landroid/widget/ImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 787
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const v10, 0x7f020466

    const v7, 0x7f020463

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 500
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v6, " Handle ; init!"

    invoke-virtual {v5, v6}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 502
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 504
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$1;

    invoke-direct {v5, p0}, Lcom/android/phone/IncomingCallWidget$Handle$1;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 518
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$2;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/phone/IncomingCallWidget$Handle$2;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    .line 533
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 535
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0x90

    div-int/lit16 v5, v5, 0x168

    mul-int/lit8 v1, v5, 0x2

    .line 537
    .local v1, diameter:I
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 538
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x56

    div-int/lit16 v1, v5, 0x80

    .line 539
    const-string v5, "phone_kk_tablet_gui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_6

    .line 542
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    .line 543
    mul-int/lit8 v5, v1, 0x38

    div-int/lit8 v1, v5, 0x64

    .line 550
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    .line 553
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    .local v0, containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 558
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v2, v11, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 562
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    .line 563
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_c

    .line 566
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 568
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020468

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 582
    :goto_1
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    .line 603
    :cond_2
    :goto_2
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 604
    iget-boolean v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v5, :cond_13

    .line 605
    const-string v5, "phone_kk_tablet_gui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 606
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x6

    div-int/lit8 v7, v7, 0x29

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    .line 616
    :goto_3
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->makeArrowViews(Landroid/widget/FrameLayout;I)V

    .line 621
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    .line 622
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 629
    const-string v5, "incoming_call_widget_description_enable"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InCallScreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 631
    const/4 v3, 0x0

    .line 632
    .local v3, mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_15

    .line 633
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x1

    mul-int/lit8 v6, v1, 0x36

    div-int/lit8 v6, v6, 0x64

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 636
    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_4
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 638
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    .line 639
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    const v6, 0x7f0906eb

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 640
    const-string v5, "incoming_call_widget_description_enlarge"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 641
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    const/high16 v6, 0x41a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 642
    :cond_3
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 643
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mIncomingCircleDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 647
    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v8, :cond_16

    .line 649
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0901eb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 651
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 652
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 660
    :cond_5
    :goto_5
    return-void

    .line 544
    .end local v0           #containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 545
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-nez v5, :cond_0

    .line 546
    mul-int/lit8 v5, v1, 0x3c

    div-int/lit8 v1, v5, 0x64

    goto/16 :goto_0

    .line 569
    .restart local v0       #containerParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2       #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const-string v5, "support_kk_vt_tablet_multiwindow"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 570
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 571
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 573
    :cond_8
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020464

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 574
    :cond_9
    const-string v5, "phone_kk_tablet_gui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 575
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 576
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 578
    :cond_a
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020464

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 581
    :cond_b
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 583
    :cond_c
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_2

    .line 584
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EmergencyCallbackMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 586
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020465

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 600
    :goto_6
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I

    goto/16 :goto_2

    .line 587
    :cond_d
    const-string v5, "support_kk_vt_tablet_multiwindow"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 588
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 589
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 591
    :cond_e
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020467

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 592
    :cond_f
    const-string v5, "phone_kk_tablet_gui"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 593
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 594
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 596
    :cond_10
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    const v6, 0x7f020467

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 599
    :cond_11
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 608
    :cond_12
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x6

    div-int/lit8 v7, v7, 0x33

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_3

    .line 610
    :cond_13
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x6

    div-int/lit8 v7, v7, 0x32

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_3

    .line 613
    :cond_14
    new-instance v5, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    mul-int/lit8 v7, v1, 0x10

    div-int/lit8 v7, v7, 0x69

    int-to-float v7, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V

    iput-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    goto/16 :goto_3

    .line 635
    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x1

    mul-int/lit8 v6, v1, 0x48

    div-int/lit8 v6, v6, 0x64

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v3       #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_4

    .line 653
    .end local v3           #mContainerParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_16
    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    if-ne v5, v9, :cond_5

    .line 655
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v7, 0x7f0901ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 657
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 658
    iget-object v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_5
.end method

.method private makeArrowAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 839
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 840
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 842
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 845
    return-object v0
.end method

.method private makeArrowViews(Landroid/widget/FrameLayout;I)V
    .locals 12
    .parameter "container"
    .parameter "diameter"

    .prologue
    .line 681
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    .line 683
    const/high16 v0, 0x41a0

    .line 685
    .local v0, ALPHA_GAP:F
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, arrowResId:I
    const/4 v4, 0x0

    .line 689
    .local v4, layoutGravity:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v8, p2, 0x4

    div-int/lit8 v8, v8, 0x5f

    mul-int/lit8 v9, p2, 0x3

    div-int/lit8 v9, v9, 0x5f

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 692
    .local v7, paddingLp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v8, 0x4

    if-ge v3, v8, :cond_d

    .line 693
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v3

    .line 694
    const/4 v1, 0x0

    .line 696
    .local v1, alpha:I
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 697
    const-string v8, "accept_or_reject_calls_dialog"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 698
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowAcceptImage_id_USA:[I

    aget v2, v8, v3

    .line 712
    :goto_1
    const/16 v4, 0x15

    .line 713
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    rsub-int/lit8 v11, v3, 0x4

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 716
    if-eqz v3, :cond_0

    .line 717
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    :cond_0
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 746
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 699
    :cond_2
    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 700
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 701
    const v2, 0x7f02002e

    goto :goto_1

    .line 703
    :cond_3
    const v2, 0x7f020032

    goto :goto_1

    .line 704
    :cond_4
    const-string v8, "phone_kk_tablet_gui"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 705
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 706
    const v2, 0x7f02002e

    goto/16 :goto_1

    .line 708
    :cond_5
    const v2, 0x7f020032

    goto/16 :goto_1

    .line 710
    :cond_6
    const v2, 0x7f02002e

    goto/16 :goto_1

    .line 721
    :cond_7
    const/high16 v8, 0x437f

    const/high16 v9, 0x3f80

    const/high16 v10, 0x41a0

    int-to-float v11, v3

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 722
    const-string v8, "accept_or_reject_calls_dialog"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 723
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowRejectImage_id_USA:[I

    aget v2, v8, v3

    .line 737
    :goto_3
    const/16 v4, 0x13

    .line 739
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowImageViews:[Landroid/widget/ImageView;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 742
    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    .line 743
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 724
    :cond_8
    const-string v8, "support_kk_vt_tablet_multiwindow"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 725
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 726
    const v2, 0x7f020034

    goto :goto_3

    .line 728
    :cond_9
    const v2, 0x7f020038

    goto :goto_3

    .line 729
    :cond_a
    const-string v8, "phone_kk_tablet_gui"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 730
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v8, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 731
    const v2, 0x7f020034

    goto :goto_3

    .line 733
    :cond_b
    const v2, 0x7f020038

    goto :goto_3

    .line 735
    :cond_c
    const v2, 0x7f020034

    goto/16 :goto_3

    .line 750
    .end local v1           #alpha:I
    :cond_d
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 753
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 757
    .local v6, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, "move_incomingcallwidget_touch_area"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 758
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 759
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 770
    :goto_4
    iget-object v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    return-void

    .line 761
    :cond_e
    mul-int/lit8 v8, p2, 0xd

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 764
    :cond_f
    iget v8, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 765
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 767
    :cond_10
    mul-int/lit8 v8, p2, 0xb

    div-int/lit8 v8, v8, 0x78

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method private reset(ZF)V
    .locals 9
    .parameter "animation"
    .parameter "scale_size"

    .prologue
    const v2, 0x3e99999a

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1113
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    move v1, p2

    move v3, p2

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1115
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1117
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1118
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1121
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1123
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1124
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1129
    .end local v0           #scaleAni:Landroid/view/animation/ScaleAnimation;
    .end local v7           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v8           #aniSet:Landroid/view/animation/AnimationSet;
    :goto_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1132
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 1133
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1134
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 1137
    return-void

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private setDisable()V
    .locals 3

    .prologue
    .line 1143
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1144
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1146
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1147
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    .line 1149
    return-void
.end method

.method private setEnable()V
    .locals 3

    .prologue
    .line 1155
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3eb33333

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1156
    .local v0, tabAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1157
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1158
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 1161
    return-void
.end method

.method private showArrow()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 774
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
    :cond_0
    return-void
.end method

.method private showTarget(F)V
    .locals 10
    .parameter "scale_size"

    .prologue
    const/4 v9, 0x1

    const v1, 0x3e99999a

    .line 1086
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1088
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move v2, p1

    move v3, v1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1090
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1092
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1093
    .local v7, alphaAni:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1095
    const-wide/16 v1, 0x190

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1096
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1098
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1100
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1101
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 1102
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    return-void
.end method

.method private startAirMotionAnimation(I)V
    .locals 9
    .parameter "newState"

    .prologue
    const v2, 0x3dcccccd

    const v4, -0x42333333

    const/4 v1, 0x1

    .line 663
    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mDuringSwingAnimation:Z

    if-nez v3, :cond_0

    .line 664
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 665
    .local v0, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 666
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 667
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 668
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 669
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    .end local v0           #trans:Landroid/view/animation/TranslateAnimation;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 672
    return-void
.end method


# virtual methods
.method public clearAirMotionAnimation()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 678
    :cond_0
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1074
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    return v0
.end method

.method public isHandleSelected(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1270
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 1272
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1274
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    if-ltz v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    return v0
.end method

.method public makeLayout()V
    .locals 15

    .prologue
    .line 853
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 856
    const/4 v5, 0x0

    .line 857
    .local v5, marginX:I
    const/4 v6, 0x0

    .line 858
    .local v6, marginY:I
    const/4 v0, 0x0

    .line 859
    .local v0, dividedHandleTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x24

    div-int/lit16 v5, v11, 0x80

    .line 860
    const-string v11, "move_incomingcallwidget_touch_area"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 861
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v11}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v11, v11, 0x11

    div-int/lit16 v11, v11, 0xa0

    sub-int/2addr v5, v11

    .line 862
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v11}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v11, v11, 0xa

    div-int/lit16 v6, v11, 0xa0

    .line 865
    :cond_0
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EmergencyCallbackMode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 866
    const/16 v0, 0x1e

    .line 870
    :goto_0
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 871
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v3, v11, v5

    .line 872
    .local v3, leftHandleLeft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/2addr v12, v0

    add-int v4, v11, v12

    .line 873
    .local v4, leftHandleTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v12, v4, v6

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v4

    sub-int/2addr v14, v6

    invoke-virtual {v11, v3, v12, v13, v14}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 876
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x5

    add-int v2, v11, v12

    .line 877
    .local v2, leftArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x9

    div-int/lit8 v12, v12, 0xa

    sub-int v1, v11, v12

    .line 878
    .local v1, leftArrowTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v11, v2, v1, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 896
    .end local v1           #leftArrowTop:I
    .end local v2           #leftArrowleft:I
    .end local v3           #leftHandleLeft:I
    .end local v4           #leftHandleTop:I
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDisplayMetrics "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v13}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 897
    return-void

    .line 868
    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 882
    :cond_3
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 883
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int v9, v11, v5

    .line 884
    .local v9, rightHandleLeft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x9

    div-int/lit8 v12, v12, 0xa

    div-int/2addr v12, v0

    add-int v10, v11, v12

    .line 885
    .local v10, rightHandleTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    sub-int v12, v10, v6

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v10

    sub-int/2addr v14, v6

    invoke-virtual {v11, v9, v12, v13, v14}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 888
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x5

    sub-int v8, v11, v12

    .line 889
    .local v8, rightArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v7, v11, v12

    .line 890
    .local v7, rightArrowTop:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_1
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "motion"

    .prologue
    const/4 v8, 0x0

    .line 1169
    iget v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1171
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1173
    .local v3, y:F
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->isThresholdReached(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1176
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1177
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1178
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1179
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 1180
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1181
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v8}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 1182
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1183
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$1002(Lcom/android/phone/IncomingCallWidget;Z)Z

    .line 1184
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v5, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v4, v5}, Lcom/android/phone/IncomingCallWidget;->access$1100(Lcom/android/phone/IncomingCallWidget;I)V

    .line 1185
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #calls: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v4, v8}, Lcom/android/phone/IncomingCallWidget;->access$1200(Lcom/android/phone/IncomingCallWidget;I)V

    .line 1200
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_0
    return-void

    .line 1187
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1188
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 1193
    :goto_1
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4, v2, v3}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 1194
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v5, 0x406fe00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 1195
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v5, 0x4063c00000000000L

    mul-double/2addr v5, v0

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0x61

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 1196
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1197
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1190
    .end local v0           #ratio:D
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 1013
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(IZ)V

    .line 1014
    return-void
.end method

.method public setState(IZ)V
    .locals 9
    .parameter "newState"
    .parameter "animation"

    .prologue
    const/16 v8, 0xc8

    const v7, 0x3f4f5c29

    const v6, 0x3f266666

    const/high16 v5, 0x3f80

    const/16 v4, 0x12c

    .line 1017
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v2, "Block setState until reset. Handles will be reset"

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1067
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 1023
    .local v0, preState:I
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    .line 1024
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setState preState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1025
    iget v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1031
    :pswitch_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1032
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setEnable()V

    goto :goto_0

    .line 1027
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    goto :goto_0

    .line 1033
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1034
    invoke-direct {p0, p2, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    .line 1035
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1036
    invoke-direct {p0, p2, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    .line 1037
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1038
    invoke-direct {p0, p2, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    .line 1040
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->reset(ZF)V

    goto :goto_0

    .line 1044
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->setDisable()V

    goto :goto_0

    .line 1047
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    .line 1048
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1052
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    invoke-direct {p0, v7}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    .line 1054
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1058
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    invoke-direct {p0, v5}, Lcom/android/phone/IncomingCallWidget$Handle;->showTarget(F)V

    .line 1060
    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public tabletMakeLayout()V
    .locals 14

    .prologue
    .line 903
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v12}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 907
    const/4 v1, 0x0

    .line 908
    .local v1, isLandScape:Z
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 909
    .local v0, config:Landroid/content/res/Configuration;
    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 910
    const/4 v1, 0x1

    .line 915
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 916
    .local v6, marginX:I
    iget-boolean v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v11, :cond_4

    if-eqz v1, :cond_4

    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 917
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x1e

    div-int/lit16 v6, v11, 0x80

    .line 921
    :goto_1
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "marginX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    #calls: Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/IncomingCallWidget;->access$400(Lcom/android/phone/IncomingCallWidget;Ljava/lang/String;Z)V

    .line 922
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 923
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v4, v11, v6

    .line 926
    .local v4, leftHandleLeft:I
    if-eqz v1, :cond_6

    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 927
    iget-boolean v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v11, :cond_5

    .line 928
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0xf

    add-int v5, v11, v12

    .line 940
    .local v5, leftHandleTop:I
    :goto_2
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 943
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    add-int v3, v11, v12

    .line 944
    .local v3, leftArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int v2, v11, v12

    .line 946
    .local v2, leftArrowTop:I
    const-string v11, "common_volte_vt_kor"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 948
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 949
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v2, v11, v12

    .line 957
    :cond_1
    :goto_3
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v11, v3, v2, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1003
    .end local v2           #leftArrowTop:I
    .end local v3           #leftArrowleft:I
    .end local v4           #leftHandleLeft:I
    .end local v5           #leftHandleTop:I
    :cond_2
    :goto_4
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDisplayMetrics "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v13}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1004
    return-void

    .line 911
    .end local v6           #marginX:I
    :cond_3
    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 912
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 919
    .restart local v6       #marginX:I
    :cond_4
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x22

    div-int/lit16 v6, v11, 0x80

    goto/16 :goto_1

    .line 930
    .restart local v4       #leftHandleLeft:I
    :cond_5
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xf

    add-int v5, v11, v12

    .restart local v5       #leftHandleTop:I
    goto/16 :goto_2

    .line 933
    .end local v5           #leftHandleTop:I
    :cond_6
    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 934
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0x9

    add-int v5, v11, v12

    .restart local v5       #leftHandleTop:I
    goto/16 :goto_2

    .line 936
    .end local v5           #leftHandleTop:I
    :cond_7
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0x9

    sub-int v5, v11, v12

    .restart local v5       #leftHandleTop:I
    goto/16 :goto_2

    .line 950
    .restart local v2       #leftArrowTop:I
    .restart local v3       #leftArrowleft:I
    :cond_8
    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 951
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 952
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v2, v11, 0x1e

    goto/16 :goto_3

    .line 954
    :cond_9
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v2, v11, 0x11

    goto/16 :goto_3

    .line 962
    .end local v2           #leftArrowTop:I
    .end local v3           #leftArrowleft:I
    .end local v4           #leftHandleLeft:I
    .end local v5           #leftHandleTop:I
    :cond_a
    iget v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 963
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int v9, v11, v6

    .line 966
    .local v9, rightHandleLeft:I
    if-eqz v1, :cond_d

    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 967
    iget-boolean v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->isXlargeScreen:Z

    if-eqz v11, :cond_c

    .line 968
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0xf

    add-int v10, v11, v12

    .line 980
    .local v10, rightHandleTop:I
    :goto_5
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 983
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    sub-int v8, v11, v12

    .line 984
    .local v8, rightArrowleft:I
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v7, v11, v12

    .line 986
    .local v7, rightArrowTop:I
    const-string v11, "common_volte_vt_kor"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 988
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 989
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v7, v11, v12

    .line 997
    :cond_b
    :goto_6
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11, v8, v7, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_4

    .line 970
    .end local v7           #rightArrowTop:I
    .end local v8           #rightArrowleft:I
    .end local v10           #rightHandleTop:I
    :cond_c
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xf

    add-int v10, v11, v12

    .restart local v10       #rightHandleTop:I
    goto/16 :goto_5

    .line 973
    .end local v10           #rightHandleTop:I
    :cond_d
    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 974
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0x9

    add-int v10, v11, v12

    .restart local v10       #rightHandleTop:I
    goto/16 :goto_5

    .line 976
    .end local v10           #rightHandleTop:I
    :cond_e
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0x9

    sub-int v10, v11, v12

    .restart local v10       #rightHandleTop:I
    goto/16 :goto_5

    .line 990
    .restart local v7       #rightArrowTop:I
    .restart local v8       #rightArrowleft:I
    :cond_f
    const-string v11, "phone_kk_tablet_gui"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 991
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 992
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v7, v11, -0x1e

    goto/16 :goto_6

    .line 994
    :cond_10
    iget-object v11, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mArrowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v7, v11, -0x11

    goto/16 :goto_6
.end method

.method public tabletProcessMoveEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 1210
    iget v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1214
    const-wide v2, 0x3fee666666666666L

    .line 1215
    const-wide/high16 v4, 0x4004

    .line 1216
    iget-object v6, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v6, v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->getTargetProximityRatio(FF)D

    move-result-wide v6

    .line 1218
    cmpg-double v8, v6, v2

    if-gez v8, :cond_2

    .line 1219
    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v3, "Not reach the target circle, set Circle\'s alpha value"

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->isInCircle(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V

    .line 1227
    :goto_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    const-wide v1, 0x406fe00000000000L

    mul-double/2addr v1, v6

    double-to-int v1, v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 1228
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const-wide v1, 0x4063c00000000000L

    mul-double/2addr v1, v6

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x61

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1230
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1263
    :cond_0
    :goto_1
    return-void

    .line 1224
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V

    goto :goto_0

    .line 1232
    :cond_2
    cmpl-double v0, v6, v2

    if-ltz v0, :cond_3

    cmpg-double v0, v6, v4

    if-gtz v0, :cond_3

    .line 1233
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v1, " Reach the valid region, let\'s call dispatchTriggerEvent()"

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1236
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1237
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;->setAlpha(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTargetCircle:Lcom/android/phone/IncomingCallWidget$Handle$TargetCircle;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1239
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0, v9}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->setAlpha(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mTabCircle:Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1241
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #setter for: Lcom/android/phone/IncomingCallWidget;->mIsTracking:Z
    invoke-static {v0, v9}, Lcom/android/phone/IncomingCallWidget;->access$1002(Lcom/android/phone/IncomingCallWidget;Z)Z

    .line 1242
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget v1, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandleType:I

    #calls: Lcom/android/phone/IncomingCallWidget;->dispatchTriggerEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/IncomingCallWidget;->access$1100(Lcom/android/phone/IncomingCallWidget;I)V

    .line 1243
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #calls: Lcom/android/phone/IncomingCallWidget;->setGrabbedState(I)V
    invoke-static {v0, v9}, Lcom/android/phone/IncomingCallWidget;->access$1200(Lcom/android/phone/IncomingCallWidget;I)V

    .line 1245
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/IncomingCallWidget$Handle$4;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingCallWidget$Handle$4;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1253
    :cond_3
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v1, " Go over the valid region, set the State as Normal"

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/IncomingCallWidget$Handle$5;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingCallWidget$Handle$5;-><init>(Lcom/android/phone/IncomingCallWidget$Handle;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
