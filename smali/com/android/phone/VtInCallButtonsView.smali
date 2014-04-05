.class public Lcom/android/phone/VtInCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "VtInCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mIsSwitchCameraClicked:Z


# instance fields
.field private final HIDE_VOLUME_BAR:I

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mCaptureButton:Landroid/widget/Button;

.field mCurrentOrientation:I

.field private mEndButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetButton:Landroid/widget/ToggleButton;

.field private mHideMeButton:Landroid/widget/Button;

.field private mHideMeToggleButton:Landroid/widget/ToggleButton;

.field private mIsEasyModeOn:Z

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field private mLeftArrow:Landroid/view/View;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

.field private mRightArrow:Landroid/view/View;

.field private mShowMeButton:Landroid/widget/Button;

.field private mSwitchCameraButton:Landroid/widget/Button;

.field private mVolumeBarLayout:Landroid/widget/LinearLayout;

.field public mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumePanel:Landroid/view/ViewGroup;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

.field private mhidekeypadButton:Landroid/widget/ToggleButton;

.field rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 72
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    .line 92
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 95
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 96
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/VtInCallButtonsView;->HIDE_VOLUME_BAR:I

    .line 100
    new-instance v0, Lcom/android/phone/VtInCallButtonsView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VtInCallButtonsView$1;-><init>(Lcom/android/phone/VtInCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    .line 541
    new-instance v0, Lcom/android/phone/VtInCallButtonsView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VtInCallButtonsView$2;-><init>(Lcom/android/phone/VtInCallButtonsView;)V

    iput-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 123
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VtInCallButtonsView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/VtInCallButtonsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VtInCallButtonsView;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 582
    const-string v0, "VtInCallButtonsView"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 586
    const-string v0, "VtInCallButtonsView"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 587
    return-void
.end method


# virtual methods
.method protected hideShowMeButton()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 473
    :cond_1
    return-void
.end method

.method public hideVolumePanel()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "VtInCallButtonsView"

    const-string v1, "[VideoCallVolumePanel] hideVolumePanel"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 398
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 399
    const-string v2, "volume_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const v2, 0x7f0a01da

    if-eq v0, v2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    .line 405
    :cond_0
    invoke-static {}, Lcom/android/phone/VideoCallPanel;->getInstance()Lcom/android/phone/VideoCallPanel;

    move-result-object v1

    .line 407
    .local v1, videoCallPanel:Lcom/android/phone/VideoCallPanel;
    sparse-switch v0, :sswitch_data_0

    .line 456
    const-string v2, "VtInCallButtonsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: unexpected click: View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 415
    :sswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_1

    .line 416
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 420
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_2

    .line 423
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 428
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_3

    .line 431
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 436
    :sswitch_3
    if-eqz v1, :cond_4

    .line 437
    invoke-virtual {v1}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    .line 438
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideShowMeButton()V

    goto :goto_0

    .line 441
    :sswitch_4
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1, v4}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto :goto_0

    .line 446
    :sswitch_5
    const-string v2, "volume_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 448
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    goto/16 :goto_0

    .line 450
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    goto/16 :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01da -> :sswitch_5
        0x7f0a027d -> :sswitch_0
        0x7f0a027e -> :sswitch_0
        0x7f0a0280 -> :sswitch_0
        0x7f0a0282 -> :sswitch_3
        0x7f0a0283 -> :sswitch_0
        0x7f0a0285 -> :sswitch_0
        0x7f0a0286 -> :sswitch_0
        0x7f0a0287 -> :sswitch_0
        0x7f0a0288 -> :sswitch_4
        0x7f0a035e -> :sswitch_2
        0x7f0a035f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 130
    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const-string v3, "This device not support volte"

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 135
    :cond_0
    const v3, 0x7f0a0289

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    .line 137
    const v3, 0x7f0a027f

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    .line 139
    const v3, 0x7f0a027e

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    .line 140
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_1
    const v3, 0x7f0a027d

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    .line 146
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->lsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_2
    const/4 v0, 0x0

    .line 154
    .local v0, mNumberOfCameras:I
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    .line 155
    .local v2, videoCallManager:Lcom/android/phone/VideoCallManager;
    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    .end local v2           #videoCallManager:Lcom/android/phone/VideoCallManager;
    :cond_3
    :goto_1
    if-le v0, v6, :cond_12

    .line 162
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    :cond_4
    :goto_2
    const v3, 0x7f0a0281

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    .line 170
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 171
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_5
    const v3, 0x7f0a0282

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    .line 175
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v3, :cond_6

    .line 176
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_6
    const v3, 0x7f0a0280

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 180
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    .line 181
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 185
    :cond_7
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 186
    const v3, 0x7f0a0283

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    .line 187
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_8

    .line 188
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_8
    const v3, 0x7f0a0285

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 193
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v3, :cond_9

    .line 194
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_9
    const v3, 0x7f0a0286

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 198
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    if-eqz v3, :cond_a

    .line 199
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_a
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 204
    const v3, 0x7f0a0287

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    .line 205
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_b

    .line 206
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_b
    const v3, 0x7f0a0288

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    .line 211
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    .line 212
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->rsmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_c
    const-string v3, "volume_panel"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 216
    const v3, 0x7f0a035d

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeBarLayout:Landroid/widget/LinearLayout;

    .line 217
    const v3, 0x7f0a01da

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    .line 218
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_d

    .line 219
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_d
    const v3, 0x7f0a01dc

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 223
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v3, :cond_e

    .line 224
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 226
    :cond_e
    const v3, 0x7f0a01db

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    .line 230
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    .line 231
    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    if-eqz v3, :cond_11

    .line 232
    const v3, 0x7f0a035f

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    .line 233
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 234
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_10
    const v3, 0x7f0a035e

    invoke-virtual {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    .line 239
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 240
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    goto/16 :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, ve:Ljava/lang/VerifyError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch VerifyError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 165
    .end local v1           #ve:Ljava/lang/VerifyError;
    :cond_12
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 166
    iget-object v3, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public setVolume(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 476
    const-string v4, "VtInCallButtonsView"

    const-string v5, "[VideoCallVolumePanel] setVolume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 479
    .local v0, audioManager:Landroid/media/AudioManager;
    const/16 v3, 0xb

    .line 481
    .local v3, stream:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 482
    .local v1, bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x6

    .line 487
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 488
    .local v2, maxVolume:I
    const/4 v4, 0x1

    if-ge p1, v4, :cond_3

    .line 489
    const-string v4, "VtInCallButtonsView"

    const-string v5, "Set force progress level 1 for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 p1, 0x0

    .line 496
    :cond_1
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 497
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    .line 498
    return-void

    .line 483
    .end local v2           #maxVolume:I
    :cond_2
    const/16 v3, 0xb

    goto :goto_0

    .line 491
    .restart local v2       #maxVolume:I
    :cond_3
    if-le p1, v2, :cond_1

    .line 492
    const-string v4, "VtInCallButtonsView"

    const-string v5, "Set force progress level max for call volume"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move p1, v2

    goto :goto_1
.end method

.method protected showShowMeButton()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/phone/VtInCallButtonsView;->mShowMeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    :cond_1
    return-void
.end method

.method public showVolumePanel()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 503
    const-string v4, "VtInCallButtonsView"

    const-string v5, "[VideoCallVolumePanel] showVolumePanel"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v3, 0xb

    .line 506
    .local v3, stream:I
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 508
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x6

    .line 511
    :goto_0
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 513
    .local v1, changedVolume:I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 515
    .local v2, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 516
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 517
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 520
    .end local v1           #changedVolume:I
    .end local v2           #maxVolume:I
    :cond_0
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 521
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumePanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 524
    :cond_1
    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 528
    :cond_2
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 529
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 532
    :cond_3
    return-void

    .line 508
    :cond_4
    const/16 v3, 0xb

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter "cm"

    .prologue
    const/16 v9, 0x9

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 250
    const-string v4, "updateState..."

    invoke-direct {p0, v4, v5}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;Z)V

    .line 252
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCurrentOrientation:I

    .line 254
    iput-object p1, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 255
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 256
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 261
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 263
    .local v1, callType:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 265
    .local v2, mInCallScreen:Lcom/android/phone/InCallScreen;
    if-nez v2, :cond_2

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    if-eq v1, v10, :cond_4

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isCameraOpened()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v4, v4, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    if-eqz v4, :cond_d

    .line 270
    :cond_4
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    :goto_1
    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 275
    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 276
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 277
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 278
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v4, v4, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    iget-object v8, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-ne v4, v8, :cond_5

    .line 283
    iget-object v8, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    :goto_2
    invoke-virtual {v8, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 287
    :cond_5
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 288
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 293
    :goto_3
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 294
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 297
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHeadsetButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-nez v4, :cond_10

    .line 303
    :cond_6
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v8, v8, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    :goto_4
    const-string v4, "volume_panel"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 309
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeBarLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 310
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    .local v3, volumeBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 312
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 313
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e011e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e011f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 316
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e0120

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 329
    :goto_5
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .end local v3           #volumeBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_9

    .line 333
    iget-object v8, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v9, :cond_13

    :cond_8
    move v4, v7

    :goto_6
    invoke-virtual {v8, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 335
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 336
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->hideVolumePanel()V

    .line 364
    :cond_9
    :goto_7
    const-string v4, "support_easy_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-boolean v4, p0, Lcom/android/phone/VtInCallButtonsView;->mIsEasyModeOn:Z

    if-eqz v4, :cond_19

    .line 365
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 366
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 367
    :cond_a
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mVtInCallScreenButtonsInnerContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f02009f

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 368
    iget v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCurrentOrientation:I

    if-ne v4, v10, :cond_c

    .line 369
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v4, :cond_b

    .line 370
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e00fc

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 371
    :cond_b
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v4, :cond_c

    .line 372
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e00fc

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 375
    :cond_c
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    .line 376
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mParentHideMeMuteButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 272
    :cond_d
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v6

    .line 283
    goto/16 :goto_2

    .line 290
    :cond_f
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 306
    :cond_10
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 318
    .restart local v3       #volumeBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11
    iget v4, p0, Lcom/android/phone/VtInCallButtonsView;->mCurrentOrientation:I

    if-ne v4, v10, :cond_12

    .line 319
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 320
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e011b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e011c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0e011d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_5

    .line 322
    :cond_12
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 323
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_8

    .end local v3           #volumeBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    move v4, v6

    .line 333
    goto/16 :goto_6

    .line 341
    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v8, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_17

    .line 342
    :cond_15
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 343
    iget-object v8, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v4, v4, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    if-nez v4, :cond_16

    move v4, v5

    :goto_9
    invoke-virtual {v8, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 344
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 351
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_18

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 352
    const-string v4, "can make hidekeypad button visible here "

    invoke-direct {p0, v4}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 354
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    :cond_16
    move v4, v6

    .line 343
    goto :goto_9

    .line 346
    :cond_17
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 347
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mHideMeToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 348
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 349
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_a

    .line 357
    :cond_18
    const-string v4, "can make camera button visible here again"

    invoke-direct {p0, v4}, Lcom/android/phone/VtInCallButtonsView;->log(Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 359
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mhidekeypadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 360
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 379
    :cond_19
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOn:Z

    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/VtInCallButtonsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/VtInCallButtonsView;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1b

    :goto_b
    iput-boolean v5, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    .line 381
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_1a

    iget-object v5, p0, Lcom/android/phone/VtInCallButtonsView;->mLeftArrow:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    if-eqz v4, :cond_1c

    move v4, v6

    :goto_c
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_1a
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mRightArrow:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/phone/VtInCallButtonsView;->mIsOnehandOptionRight:Z

    if-eqz v5, :cond_1d

    :goto_d
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1b
    move v5, v6

    .line 380
    goto :goto_b

    :cond_1c
    move v4, v7

    .line 381
    goto :goto_c

    :cond_1d
    move v7, v6

    .line 382
    goto :goto_d

    .line 388
    :cond_1e
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 389
    iget-object v4, p0, Lcom/android/phone/VtInCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method
