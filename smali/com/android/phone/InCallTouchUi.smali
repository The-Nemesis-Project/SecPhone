.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;
.implements Lcom/android/phone/PopupMenu$OnDismissListener;
.implements Lcom/android/phone/PopupMenu$OnMenuItemClickListener;


# static fields
.field public static mIsAdaptBothHandOn:Z


# instance fields
.field private final HIDE_VOLUME_BAR:I

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private final TOGGLE_CDMA_SWAP_TIMEOUT:I

.field private final TURN_ON_BT_TIMEOUT:I

.field private final TURN_ON_EXTRA_VOL_TIMEOUT:I

.field private final TURN_ON_SPEAKER_TIMEOUT:I

.field private final UPDATE_BT_BUTTON:I

.field private final UPDATE_CDMA_SWAP_BUTTON:I

.field private final UPDATE_EXTRAVOL_BUTTON:I

.field private final UPDATE_SPEAKER_BUTTON:I

.field private isCallRejected:Z

.field private mAcceptVideoButton:Landroid/widget/Button;

.field private mAcceptVoiceButton:Landroid/widget/Button;

.field private mAddButton:Landroid/view/View;

.field private mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

.field private mAnswerButton:Landroid/view/View;

.field private mAnswerButtonTextView:Landroid/widget/TextView;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCallEndIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/view/View;

.field private mCancelButton_qcif:Landroid/view/View;

.field private mCdmaSwapButton:Landroid/widget/Button;

.field private mChatOnID:Ljava/lang/String;

.field private mContactButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

.field private mEndButton:Landroid/widget/Button;

.field private mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

.field private mExtraVlolButton:Landroid/widget/ToggleButton;

.field private mExtraVolBtnParent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHideDialpadIconFull:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/view/View;

.field private mInCallButtonViewDrivingMode:Landroid/view/View;

.field private mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallIconContainer:Landroid/view/View;

.field private mInCallIconContainerEasyMode:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingButtonViewDrivingMode:Landroid/view/View;

.field private mIncomingButtonViewForVoLteVT:Landroid/view/View;

.field public mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

.field public mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

.field public mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

.field public mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

.field private mIsEasyModeOn:Z

.field private mIsOnehandOn:Z

.field private mIsOnehandOptionRight:Z

.field public mIsShownVolumeBarbyVolKey:Z

.field public mIschangedbyCall:Z

.field private mLastIncomingCallActionTime:J

.field private mLeftArrow:Landroid/view/View;

.field private mManageConfButton:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/view/View;

.field private mMergeIcon:Landroid/graphics/drawable/Drawable;

.field private mMultiCallButton:Landroid/view/View;

.field private mMultiCallButtonContainer:Landroid/widget/LinearLayout;

.field private mMultiCallButtonImage:Landroid/widget/ImageView;

.field private mMultiCallButtonLabel:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionBtnParent:Landroid/view/View;

.field private mNoiseReductionButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionView:Landroid/view/View;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPopup:Lcom/android/phone/PopupMenu;

.field private mPopupVisible:Z

.field private mPrevIsEasyModeOn:Z

.field private mRecordButton:Landroid/widget/Button;

.field private mRecordOffIcon:Landroid/graphics/drawable/Drawable;

.field private mRecordOnIcon:Landroid/graphics/drawable/Drawable;

.field private mRejectButton:Landroid/view/View;

.field private mRejectButtonTextView:Landroid/widget/TextView;

.field private mRejectCallWithMsgContent:Landroid/view/ViewGroup;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgDrawerLayout:Landroid/view/View;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

.field private mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

.field private mResizeHidePatchForInc:Landroid/view/View;

.field private mRightArrow:Landroid/view/View;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mShowDialpadIconFull:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/view/View;

.field private mSwapIcon:Landroid/graphics/drawable/Drawable;

.field private mSwitchButtonContainer:Landroid/widget/LinearLayout;

.field private mUnholdButton:Landroid/view/View;

.field public mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumePanel:Landroid/view/ViewGroup;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

.field private mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

.field public mVtIncomingHideButton:Landroid/widget/ToggleButton;

.field private mVtRejectButton:Landroid/widget/Button;

.field private mWebExButton:Landroid/view/View;

.field private mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

.field private prevIsOnehandOn:Z

.field sk:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InCallTouchUi;->mIsAdaptBothHandOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f040064

    const/16 v3, 0x1f4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 180
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 184
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->isCallRejected:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    .line 283
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_SPEAKER_BUTTON:I

    .line 284
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_SPEAKER_TIMEOUT:I

    .line 286
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_BT_BUTTON:I

    .line 287
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_BT_TIMEOUT:I

    .line 289
    const/16 v0, 0x82

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_EXTRAVOL_BUTTON:I

    .line 290
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TURN_ON_EXTRA_VOL_TIMEOUT:I

    .line 292
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->HIDE_VOLUME_BAR:I

    .line 294
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/InCallTouchUi;->UPDATE_CDMA_SWAP_BUTTON:I

    .line 295
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->TOGGLE_CDMA_SWAP_TIMEOUT:I

    .line 298
    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mChatOnID:Ljava/lang/String;

    .line 302
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 303
    iput-object v5, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .line 305
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->sk:Lcom/samsung/android/sdk/look/Slook;

    .line 308
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    .line 3619
    new-instance v0, Lcom/android/phone/InCallTouchUi$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$5;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 3800
    new-instance v0, Lcom/android/phone/InCallTouchUi$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$6;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    .line 376
    const-string v0, "InCallTouchUi constructor..."

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 380
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    .line 381
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 382
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 383
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 385
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 386
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 387
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    .line 390
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 391
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 434
    :goto_0
    return-void

    .line 399
    :cond_0
    const v1, 0x7f040067

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    const v1, 0x7f040091

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 409
    :cond_2
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_4

    .line 410
    const-string v1, "voice_call_recording_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    const v1, 0x7f040066

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 417
    :cond_3
    const v1, 0x7f040065

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 422
    :cond_4
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_5

    .line 423
    const v1, 0x7f040068

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 428
    :cond_5
    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallTouchUi;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallTouchUi;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallTouchUi;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallTouchUi;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/EndCallButtonsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallTouchUi;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private dumpBottomButtonState()V
    .locals 2

    .prologue
    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - dialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - merge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->getButtonState(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2463
    return-void
.end method

.method private static getButtonState(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 2466
    if-nez p0, :cond_0

    .line 2467
    const-string v0, "(null)"

    .line 2484
    :goto_0
    return-object v0

    .line 2469
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VISIBLE"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2470
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string v0, "INVISIBLE"

    goto :goto_1

    :cond_3
    const-string v0, "GONE"

    goto :goto_1

    .line 2474
    :cond_4
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_5

    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2477
    :cond_5
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2479
    :cond_6
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 2480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", checked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private getPhoneTypeInUse()I
    .locals 4

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1745
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1747
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 1748
    const-string v1, "getPhoneTypeInUse: no active call, show holding call"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1752
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneTypeInUse():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1754
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3183
    const-string v0, "hideIncomingCallWidget()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3234
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_0

    .line 3235
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3236
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_1

    .line 3239
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3240
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3242
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_2

    .line 3243
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3244
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3246
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_3

    .line 3247
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3248
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3252
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 3253
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3254
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3255
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    .line 3256
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3258
    :cond_4
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3259
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setMultiwindowTrayDisable(Z)V

    .line 3261
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3601
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3605
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3606
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1498
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1499
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 1509
    :cond_2
    :goto_0
    return v0

    .line 1503
    :cond_3
    const-string v2, "phone_kk_tablet_gui"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1504
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1509
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method private setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1356
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1357
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1365
    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1368
    :cond_4
    if-eqz p1, :cond_0

    .line 1369
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0e0056

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 3273
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3275
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_1

    .line 3278
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3279
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3281
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_2

    .line 3282
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3283
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3285
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_3

    .line 3286
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3287
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3290
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_5

    .line 3291
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3292
    if-eqz v0, :cond_4

    .line 3293
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3295
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/phone/IncomingCallWidget;->setAlpha(F)V

    .line 3296
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAirMotionAnimation()V

    .line 3303
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 3306
    const-string v3, "InCallTouchUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSms : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    if-eqz v0, :cond_10

    .line 3325
    const v0, 0x7f0a02d9

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3326
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 3328
    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3329
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->isIconModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3330
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3331
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3339
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3360
    :cond_7
    :goto_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3362
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3384
    :cond_8
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_11

    .line 3387
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3388
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->reset()V

    .line 3396
    :cond_9
    :goto_2
    const-string v0, "answering_call_in_external_screen"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3397
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "answering_call_in_external_screen"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v1

    .line 3400
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v3

    if-nez v3, :cond_c

    if-nez v0, :cond_c

    .line 3401
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_a

    .line 3402
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyImageWidget;->clearAnimation()V

    .line 3403
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallEasyImageWidget;->setVisibility(I)V

    .line 3405
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_b

    .line 3406
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->clearAnimation()V

    .line 3407
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3409
    :cond_b
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3411
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_c

    .line 3412
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->clearAnimation()V

    .line 3413
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setVisibility(I)V

    .line 3414
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->reset()V

    .line 3427
    :cond_c
    :goto_4
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3429
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v6}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3433
    :cond_d
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3434
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_e

    .line 3435
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3436
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3437
    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3438
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3439
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3457
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3482
    :cond_e
    :goto_6
    return-void

    .line 3333
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3334
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 3348
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3350
    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3353
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->clearAnimation()V

    .line 3354
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v6}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_1

    .line 3390
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_9

    .line 3391
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 3392
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallWidget;->reset()V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    .line 3397
    goto/16 :goto_3

    .line 3417
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_14

    .line 3418
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->clearAnimation()V

    .line 3419
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, v2}, Lcom/android/phone/IncomingCallRejectWidget;->setVisibility(I)V

    .line 3420
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingCallRejectWidget;->reset()V

    .line 3422
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_c

    .line 3423
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_4

    .line 3441
    :cond_15
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3442
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3444
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3454
    :goto_7
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 3455
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v4, v4, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    if-nez v4, :cond_1a

    :goto_8
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_5

    .line 3445
    :cond_16
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3446
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 3448
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 3451
    :cond_19
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_1a
    move v1, v2

    .line 3455
    goto :goto_8

    .line 3459
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2870
    const-string v0, "showAudioModePopup()..."

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2872
    new-instance v0, Lcom/android/phone/PopupMenu;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    .line 2873
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0}, Lcom/android/phone/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v2}, Lcom/android/phone/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2874
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/phone/PopupMenu;->setOnMenuItemClickListener(Lcom/android/phone/PopupMenu$OnMenuItemClickListener;)V

    .line 2875
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/phone/PopupMenu;->setOnDismissListener(Lcom/android/phone/PopupMenu$OnDismissListener;)V

    .line 2877
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0}, Lcom/android/phone/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2879
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v1

    .line 2880
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2882
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0}, Lcom/android/phone/PopupMenu;->show()V

    .line 2884
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2885
    return-void
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1808
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1809
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1826
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 1829
    const-string v1, "updateInCallControls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v5}, Lcom/android/phone/InCallControlState;->dumpState()V

    .line 1834
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 1835
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    if-eqz v6, :cond_27

    move v1, v2

    :goto_1
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v1, :cond_3

    .line 1838
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_28

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    .line 1839
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_29

    move v1, v2

    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_2a

    move v1, v3

    :goto_4
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    :cond_1
    const-string v1, "ssuport_hand_adapt_operation"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1843
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1844
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOptionRight:Z

    if-eqz v1, :cond_2c

    move v1, v3

    :goto_6
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1847
    :cond_3
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1848
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v1, :cond_4

    .line 1849
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1850
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1858
    :cond_4
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1859
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1863
    :goto_7
    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_31

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_31

    .line 1864
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1865
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    if-nez v6, :cond_2e

    move v1, v2

    :goto_8
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :goto_9
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1874
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1903
    :goto_a
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v1, :cond_6

    .line 1904
    if-eq v0, v4, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_38

    .line 1912
    :cond_5
    const-string v1, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_6
    :goto_b
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1926
    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1927
    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_7

    .line 1929
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1930
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1931
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1939
    :cond_7
    :goto_c
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v7

    .line 1940
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    .line 1941
    if-eqz v1, :cond_8

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    if-nez v8, :cond_8

    .line 1942
    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    move v1, v2

    .line 1946
    :cond_8
    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1947
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-eqz v7, :cond_9

    .line 1949
    if-eqz v1, :cond_3b

    .line 1950
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903ad

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1951
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1959
    :goto_d
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_3c

    move v1, v2

    :goto_e
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1960
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1984
    :cond_9
    :goto_f
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2012
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v1, :cond_44

    .line 2014
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0901b8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 2015
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2017
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2018
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_40

    .line 2019
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIconFull:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2029
    :goto_10
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2030
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2054
    :cond_a
    :goto_11
    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2057
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getvoltehold()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2058
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 2059
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 2060
    iput-boolean v2, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 2064
    :cond_b
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2068
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2069
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2074
    const-string v1, "no_receiver_in_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2075
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2076
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2079
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_extra_volume"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2081
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_extra_vol"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2084
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_e

    .line 2085
    const-string v7, "extra_volume"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    if-ne v1, v4, :cond_47

    .line 2087
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2088
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2089
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x82

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2090
    const-string v1, "InCallTouchUi"

    const-string v7, "mExtraVlolButton.setEnabled(true)"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2092
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2093
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2097
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2108
    :cond_e
    :goto_12
    const-string v1, "answering_call_in_external_screen"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2109
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isHardKeyboardOpened()Z

    move-result v7

    .line 2110
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_f

    .line 2111
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_49

    move v1, v4

    :goto_13
    invoke-virtual {v8, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2113
    :cond_f
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2114
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 2115
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v7, :cond_4a

    move v1, v4

    :goto_14
    invoke-virtual {v8, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2120
    :cond_10
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2121
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6e

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2122
    const-string v1, "InCallTouchUi"

    const-string v7, "mSpeakerButton.setEnabled(inCallControlState.speakerEnabled)"

    invoke-static {v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2128
    :cond_11
    :goto_15
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2130
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2131
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x78

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2132
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2137
    :cond_12
    :goto_16
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2140
    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->updateInCallIcons(Lcom/android/phone/InCallControlState;)V

    .line 2143
    const-string v1, "onscreen_manage_conference"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2144
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v1, :cond_4d

    .line 2145
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2154
    :cond_13
    :goto_17
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v1, :cond_4f

    .line 2155
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2156
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2157
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v1, :cond_4e

    .line 2158
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2165
    :goto_18
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2227
    :goto_19
    const-string v1, "support_multi_window"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2230
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2231
    :cond_14
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2232
    :cond_15
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2234
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2235
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2238
    :cond_16
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 2240
    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->shouldUnholdBlink:Z

    if-eqz v6, :cond_5a

    .line 2241
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2243
    :cond_17
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v7, 0x7f05000d

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2249
    :cond_18
    :goto_1a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 2250
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v1, :cond_19

    .line 2256
    const-string v1, "InCallTouchUi"

    const-string v6, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v1, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    :cond_19
    const-string v1, "thrway_active_disable"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2260
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2262
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2266
    :cond_1a
    const-string v1, "support_lgt_multi_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-ne v0, v10, :cond_1d

    .line 2267
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_5c

    .line 2268
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v6, :cond_5b

    .line 2269
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2270
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902ab

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2271
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2293
    :cond_1b
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->>  canMulti"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v6, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2295
    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    if-eqz v1, :cond_5e

    .line 2296
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2297
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2298
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2299
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 2307
    :cond_1d
    :goto_1c
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-ne v0, v10, :cond_1f

    .line 2309
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2310
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2311
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2313
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2314
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2321
    :cond_1f
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2322
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v1, :cond_20

    if-ne v0, v10, :cond_5f

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 2325
    :cond_20
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2344
    :cond_21
    :goto_1d
    if-ne v0, v10, :cond_22

    .line 2345
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_22

    .line 2351
    const-string v0, "InCallTouchUi"

    const-string v1, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_22
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2358
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a01d0

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v3, p0, v0, v1, v6}, Lcom/android/phone/RcsShare;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 2361
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_62

    .line 2362
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/view/View;Landroid/widget/ToggleButton;)V

    .line 2375
    :cond_23
    :goto_1e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->sk:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v0

    if-lt v0, v4, :cond_24

    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v0, :cond_24

    .line 2376
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    .line 2379
    :cond_24
    const-string v0, "support_nsri_secure"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2380
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2381
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2382
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2383
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2384
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2425
    :cond_25
    const-string v0, "At the end of updateInCallControls()."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2426
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->dumpBottomButtonState()V

    .line 2428
    return-void

    .line 1811
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto/16 :goto_0

    :cond_27
    move v1, v3

    .line 1835
    goto/16 :goto_1

    :cond_28
    move v1, v2

    .line 1838
    goto/16 :goto_2

    :cond_29
    move v1, v3

    .line 1839
    goto/16 :goto_3

    :cond_2a
    move v1, v2

    .line 1840
    goto/16 :goto_4

    :cond_2b
    move v1, v3

    .line 1843
    goto/16 :goto_5

    .line 1844
    :cond_2c
    const/4 v1, 0x4

    goto/16 :goto_6

    .line 1861
    :cond_2d
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto/16 :goto_7

    :cond_2e
    move v1, v3

    .line 1865
    goto/16 :goto_8

    .line 1867
    :cond_2f
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1868
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 1870
    :cond_30
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 1875
    :cond_31
    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_35

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_35

    .line 1876
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1877
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    if-nez v6, :cond_32

    move v1, v2

    :goto_1f
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    :goto_20
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1886
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_32
    move v1, v3

    .line 1877
    goto :goto_1f

    .line 1879
    :cond_33
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1880
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 1882
    :cond_34
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 1895
    :cond_35
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1896
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    if-nez v6, :cond_36

    move v1, v2

    :goto_21
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1900
    :goto_22
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1901
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_36
    move v1, v3

    .line 1896
    goto :goto_21

    .line 1898
    :cond_37
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22

    .line 1914
    :cond_38
    if-ne v0, v10, :cond_39

    .line 1917
    const-string v1, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1920
    :cond_39
    const-string v1, "InCallTouchUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_b

    .line 1934
    :cond_3a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1935
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c

    .line 1954
    :cond_3b
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903ac

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1955
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    :cond_3c
    move v1, v3

    .line 1959
    goto/16 :goto_e

    .line 1963
    :cond_3d
    if-eqz v1, :cond_3e

    .line 1964
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903ad

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1965
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1973
    :goto_23
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    if-nez v6, :cond_3f

    move v1, v2

    :goto_24
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1974
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canRecord:Z

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1977
    const-string v1, "lawmo_lock"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getLawmoLockState()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1978
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_f

    .line 1968
    :cond_3e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0903ac

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1969
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    :cond_3f
    move v1, v3

    .line 1973
    goto :goto_24

    .line 2022
    :cond_40
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 2026
    :cond_41
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 2032
    :cond_42
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2033
    :cond_43
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 2037
    :cond_44
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0901b7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 2038
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2039
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_45

    .line 2040
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIconFull:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2050
    :goto_25
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_11

    .line 2043
    :cond_45
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    .line 2047
    :cond_46
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9, v7, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    .line 2100
    :cond_47
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2101
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_12

    .line 2103
    :cond_48
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_12

    :cond_49
    move v1, v2

    .line 2111
    goto/16 :goto_13

    :cond_4a
    move v1, v2

    .line 2115
    goto/16 :goto_14

    .line 2126
    :cond_4b
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_15

    .line 2135
    :cond_4c
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_16

    .line 2147
    :cond_4d
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_17

    .line 2161
    :cond_4e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-boolean v2, v1, Lcom/android/phone/InCallScreen;->hasHoldingBGCall:Z

    .line 2162
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    .line 2168
    :cond_4f
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v1, :cond_58

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInCallControls: inCallControlState.canSwap = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", phoneType ="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2170
    if-eq v0, v4, :cond_50

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    const/4 v1, 0x5

    if-ne v0, v1, :cond_54

    .line 2173
    :cond_50
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setHasHoldingBGCall(Z)V

    .line 2174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2175
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2176
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2177
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    :cond_51
    :goto_26
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19

    .line 2180
    :cond_52
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    .line 2183
    :cond_53
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    .line 2185
    :cond_54
    if-ne v0, v10, :cond_57

    .line 2186
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2187
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2188
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2189
    :cond_55
    const-string v1, "updateInCallControls: mCdmaSwapButton.setVisibility"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2190
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    if-nez v6, :cond_56

    move v1, v2

    :goto_27
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2191
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_26

    :cond_56
    move v1, v3

    .line 2190
    goto :goto_27

    .line 2196
    :cond_57
    const-string v1, "InCallTouchUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_26

    .line 2212
    :cond_58
    iget-boolean v1, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v1, :cond_59

    .line 2213
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2214
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2215
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2216
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2217
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2218
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_19

    .line 2221
    :cond_59
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2222
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_19

    .line 2245
    :cond_5a
    if-eqz v1, :cond_18

    .line 2246
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_1a

    .line 2273
    :cond_5b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v6, :cond_1b

    .line 2274
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2275
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f090871

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2276
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x4000

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b

    .line 2279
    :cond_5c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_1b

    .line 2280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGT Multi Call ->> "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2281
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v6, :cond_5d

    .line 2282
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2283
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902ab

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2284
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b

    .line 2286
    :cond_5d
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v6, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v6, :cond_1b

    .line 2287
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2288
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    const v6, 0x7f0902aa

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2289
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f80

    invoke-direct {v6, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b

    .line 2302
    :cond_5e
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2303
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1c

    .line 2327
    :cond_5f
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-nez v6, :cond_60

    iget-boolean v6, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_61

    :cond_60
    move v3, v2

    :cond_61
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1d

    .line 2363
    :cond_62
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2364
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 2365
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/view/View;Landroid/widget/ToggleButton;)V

    goto/16 :goto_1e

    .line 2367
    :cond_63
    iget-boolean v0, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_64

    .line 2368
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/view/View;Landroid/widget/ToggleButton;)V

    goto/16 :goto_1e

    .line 2370
    :cond_64
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v9, v0}, Lcom/android/phone/RcsShare;->setupLegacyInCallButtons(Landroid/view/View;Landroid/widget/ToggleButton;)V

    goto/16 :goto_1e
.end method

.method private updateInCallIcons(Lcom/android/phone/InCallControlState;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 2488
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2489
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2491
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_12

    .line 2498
    :goto_0
    const/4 v1, 0x0

    .line 2500
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2501
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2502
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2507
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v3, v3, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_8

    :cond_0
    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2511
    if-eqz v1, :cond_1

    .line 2512
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v1, :cond_1

    .line 2513
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2517
    :cond_1
    const-string v1, "volume_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2518
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v6, :cond_9

    :cond_2
    move v1, v5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2521
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 2522
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    .line 2524
    :cond_3
    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v1, :cond_4

    .line 2525
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2526
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2527
    if-eq v0, v8, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-ne v0, v7, :cond_a

    .line 2539
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    .line 2540
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2569
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->getPhoneTypeInUse()I

    move-result v0

    if-ne v0, v7, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2571
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2581
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 2597
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2598
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    .line 2599
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2625
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->getPhoneTypeInUse()I

    move-result v0

    if-ne v0, v7, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2627
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2634
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 2675
    :cond_6
    :goto_6
    return-void

    .line 2504
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    move v3, v4

    .line 2507
    goto/16 :goto_2

    :cond_9
    move v1, v4

    .line 2518
    goto/16 :goto_3

    .line 2530
    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2531
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2532
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v0, :cond_c

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v0, :cond_c

    :cond_b
    move v0, v5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    move v0, v4

    goto :goto_7

    .line 2535
    :cond_d
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    .line 2584
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0204bf

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 2637
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    const v1, 0x7f0204d6

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 2663
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_11

    .line 2664
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2665
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2666
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_12
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private updateToVideoCallUi(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1374
    const-string v0, "- updateToVideoCallUi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1375
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1376
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_5

    .line 1380
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1382
    if-eqz v0, :cond_0

    .line 1383
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1387
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1388
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1389
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 1396
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v6}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1398
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_2

    .line 1399
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v6}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1428
    :cond_2
    :goto_0
    return-void

    .line 1401
    :cond_3
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1403
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 1405
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1406
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1411
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->setVtInCallButtonsViewVisibility(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 1415
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_7

    .line 1416
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1418
    :cond_7
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_8

    .line 1421
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1422
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1425
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateToVoiceCallUi(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1431
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1434
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v7}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    :cond_2
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    if-eqz v0, :cond_8

    .line 1445
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1446
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1450
    :cond_3
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1451
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1452
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_4

    .line 1454
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e012e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1458
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1459
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1460
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1466
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    :goto_0
    return-void

    .line 1469
    :cond_5
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    .line 1470
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1473
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1474
    sput-boolean v6, Lcom/android/phone/PhoneUtils;->mInCallButtonViewDrivingModeByExtra:Z

    goto :goto_0

    .line 1477
    :cond_7
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 1480
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3789
    const-string v1, "MIME_TYPE"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3791
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-direct {v1, p1, v2, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 3793
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 3794
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 3795
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    .line 3796
    const/16 v0, 0x190

    const/16 v2, 0x96

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    .line 3798
    return-object v1
.end method

.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    if-eqz v0, :cond_0

    .line 2899
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0}, Lcom/android/phone/PopupMenu;->dismiss()V

    .line 2900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    .line 2901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2903
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 3611
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3613
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3616
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getTouchUiHeight()I
    .locals 4

    .prologue
    const v3, 0x7f0e0010

    const/4 v0, 0x0

    .line 2970
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2971
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v2}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2974
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3020
    :cond_0
    :goto_0
    return v0

    .line 2976
    :cond_1
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2977
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2978
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2979
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2980
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 2982
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 2984
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2989
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2993
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 2995
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3006
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3009
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3015
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3016
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3017
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, v1, Lcom/android/phone/InCallScreen;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3018
    mul-int/lit8 v0, v0, 0x38

    div-int/lit8 v0, v0, 0x64

    goto/16 :goto_0
.end method

.method public getTouchUiWidth()I
    .locals 2

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/VtInCallButtonsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3027
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3029
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideVolumePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3740
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3741
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanelForVT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3751
    :goto_0
    return-void

    .line 3746
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3747
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3748
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3749
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 3750
    iput-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    goto :goto_0
.end method

.method public hideWidgetAddcallButton()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "hideWidgetAddcallButton()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 441
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->hide()V

    .line 443
    :cond_0
    return-void
.end method

.method isCallRejected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3168
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3169
    const-string v1, "isCallRejected"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3170
    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->isCallRejected:Z

    .line 3171
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1518
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1519
    const v0, 0x7f0a01d2

    .line 1522
    :goto_0
    const-string v1, "volume_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const v1, 0x7f0a01da

    if-eq v0, v1, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    .line 1527
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1529
    sparse-switch v0, :sswitch_data_0

    .line 1716
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1719
    :cond_1
    :goto_1
    return-void

    .line 1521
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    .line 1563
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1574
    const v1, 0x7f0a01c9

    if-ne v0, v1, :cond_1

    .line 1576
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->getPhoneTypeInUse()I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    const-string v0, "InCallTouchUi"

    const-string v1, "disabling merge button for Wfc"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1596
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->getPhoneTypeInUse()I

    move-result v1

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1598
    const v0, 0x7f090384

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_1

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1616
    :sswitch_2
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1617
    const-string v1, "InCallTouchUi"

    const-string v2, "###SPEAKER_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1618
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1619
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1622
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1625
    :sswitch_3
    const-string v1, "btn_cdma_swap_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1626
    const-string v1, "InCallTouchUi"

    const-string v2, "###SWAP_TOGGLE_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1627
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1628
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1630
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1633
    :sswitch_4
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1635
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1636
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1639
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1640
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1644
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    goto/16 :goto_1

    .line 1651
    :sswitch_6
    const v0, 0x7f0a01e2

    .line 1653
    :sswitch_7
    const-string v1, "extra_volume_on_off_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1654
    const-string v1, "InCallTouchUi"

    const-string v2, "###EXTRA_VOLUME_ON_OFF_DELAY"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1655
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_7

    .line 1656
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1658
    :cond_7
    const-string v1, "support_focused_button"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1659
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1662
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1675
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->getPhoneTypeInUse()I

    move-result v1

    if-ne v1, v7, :cond_a

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isImsRegisteredOverWifi()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1677
    const v0, 0x7f090383

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_1

    .line 1679
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1695
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 1698
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1701
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1703
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->setOneHandDialpadDirection(Z)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1707
    :sswitch_a
    const-string v0, "volume_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 1709
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanel()V

    goto/16 :goto_1

    .line 1711
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideVolumePanel()V

    goto/16 :goto_1

    .line 1529
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0075 -> :sswitch_0
        0x7f0a009d -> :sswitch_2
        0x7f0a009e -> :sswitch_0
        0x7f0a0137 -> :sswitch_0
        0x7f0a01c7 -> :sswitch_0
        0x7f0a01c8 -> :sswitch_0
        0x7f0a01c9 -> :sswitch_0
        0x7f0a01ca -> :sswitch_3
        0x7f0a01cb -> :sswitch_0
        0x7f0a01cc -> :sswitch_0
        0x7f0a01cd -> :sswitch_0
        0x7f0a01ce -> :sswitch_0
        0x7f0a01cf -> :sswitch_4
        0x7f0a01d0 -> :sswitch_0
        0x7f0a01d2 -> :sswitch_1
        0x7f0a01d4 -> :sswitch_0
        0x7f0a01d7 -> :sswitch_0
        0x7f0a01d8 -> :sswitch_0
        0x7f0a01d9 -> :sswitch_0
        0x7f0a01da -> :sswitch_a
        0x7f0a01de -> :sswitch_0
        0x7f0a01e1 -> :sswitch_6
        0x7f0a01e2 -> :sswitch_7
        0x7f0a01e3 -> :sswitch_5
        0x7f0a01e4 -> :sswitch_0
        0x7f0a01ec -> :sswitch_0
        0x7f0a01ef -> :sswitch_9
        0x7f0a01f0 -> :sswitch_8
        0x7f0a0205 -> :sswitch_0
        0x7f0a020e -> :sswitch_0
        0x7f0a0212 -> :sswitch_0
        0x7f0a0213 -> :sswitch_0
        0x7f0a0214 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Lcom/android/phone/PopupMenu;)V
    .locals 2
    .parameter

    .prologue
    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    .line 2946
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v4, 0x1

    const v3, 0x7f0a0303

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 489
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 496
    const v0, 0x7f0a0206

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    .line 497
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 499
    const v0, 0x7f0a0207

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallEasyImageWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    .line 500
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallEasyImageWidget:Lcom/android/phone/IncomingCallEasyImageWidget;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEasymodeTrigerListener:Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallEasyImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 504
    :cond_0
    const-string v0, "reject_call_folder_closed"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    const v0, 0x7f0a0208

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallRejectWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    .line 506
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallRejectWidget:Lcom/android/phone/IncomingCallRejectWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallRejectWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 507
    :cond_1
    const v0, 0x7f0a0209

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallEasyRejectWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    .line 508
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallEasyRejectWidget:Lcom/android/phone/IncomingCallEasyRejectWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallEasyRejectWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 511
    :cond_2
    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 512
    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 514
    const-string v0, "remove_reject_message"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/android/phone/IncomingCallWidget;->setPaddingRelative(IIII)V

    .line 519
    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawerLayout:Landroid/view/View;

    .line 523
    :cond_4
    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 524
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 525
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020490

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    :cond_5
    :goto_0
    const-string v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 532
    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgContent:Landroid/view/ViewGroup;

    .line 533
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 534
    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgTextModeLayout:Landroid/view/ViewGroup;

    .line 535
    const v0, 0x7f0a02e7

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgIconModeLayout:Landroid/view/ViewGroup;

    .line 539
    :cond_6
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 540
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 541
    const v1, 0x7f0907a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 544
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 545
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 546
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 547
    if-eqz v0, :cond_8

    .line 548
    const-string v1, "automatic_answering_machine_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 549
    const v1, 0x7f09090d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/InCallTouchUi$3;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$3;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/InCallTouchUi$4;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$4;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 601
    const-string v0, "remove_reject_message"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "automatic_answering_machine_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 603
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    :cond_a
    const v0, 0x7f0a020a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 610
    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    .line 611
    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    .line 612
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 613
    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    .line 615
    :cond_b
    const v0, 0x7f0a020d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    .line 616
    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    .line 617
    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    .line 618
    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainerEasyMode:Landroid/view/View;

    .line 621
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 623
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallIconContainer:Landroid/view/View;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 627
    :cond_c
    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    .line 628
    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    .line 630
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 631
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 632
    const v0, 0x7f0a0361

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    .line 641
    :cond_d
    :goto_3
    new-instance v2, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    .line 642
    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1, v4, v6}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 643
    new-instance v3, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v0, 0x2

    invoke-direct {v3, v0, v6}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(II)V

    .line 648
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    .line 649
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 650
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    .line 654
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    .line 658
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 659
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mWebExButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ce

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 662
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 663
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 667
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    const v4, 0x7f0a01e4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    .line 668
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    :cond_e
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 673
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01ec

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    .line 674
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 675
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCancelButton_qcif:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01cd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 681
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 682
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 684
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 685
    const v0, 0x7f0a0204

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    .line 686
    const v0, 0x7f0a0205

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    .line 687
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_10

    .line 688
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    :cond_10
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 694
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a0137

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 695
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 699
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01e2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 700
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_11

    .line 701
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 704
    const-string v0, "disable_button_sound_effects_extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 705
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 719
    :cond_11
    :goto_4
    const-string v0, "support_focused_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 720
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01e1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    .line 721
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 722
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVolBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a009d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 728
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 731
    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 732
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 735
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 736
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 737
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 743
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_15

    .line 747
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    .line 748
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 749
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 753
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    .line 754
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 755
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 756
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 761
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    .line 763
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionView:Landroid/view/View;

    .line 765
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_17

    .line 766
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 768
    const-string v0, "disable_button_sound_effects_noise_reduction"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 769
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    .line 771
    :cond_16
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "support_focused_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 772
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 774
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mNoiseReductionBtnParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    :cond_17
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 781
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    move-object v1, v0

    .line 788
    :goto_5
    const-string v0, "onscreen_manage_conference"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 789
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    .line 790
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 792
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConfButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 795
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    .line 796
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    .line 797
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 800
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    .line 801
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 803
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mUnholdButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 804
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01d9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    .line 805
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 807
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 810
    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 811
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    .line 812
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    .line 813
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonImage:Landroid/widget/ImageView;

    .line 814
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonLabel:Landroid/widget/TextView;

    .line 815
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 816
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 821
    :cond_19
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallEndIcon:Landroid/graphics/drawable/Drawable;

    .line 822
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapIcon:Landroid/graphics/drawable/Drawable;

    .line 823
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeIcon:Landroid/graphics/drawable/Drawable;

    .line 827
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    .line 828
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 829
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 831
    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 832
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v0, :cond_1b

    .line 834
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 835
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 836
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 847
    :cond_1b
    :goto_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    .line 848
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 849
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 853
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 855
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eqz v0, :cond_29

    .line 856
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 857
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 858
    const-string v0, "voice_call_recording_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 859
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 860
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    .line 876
    :cond_1c
    :goto_7
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    .line 877
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButtonTextView:Landroid/widget/TextView;

    .line 878
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 879
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    .line 881
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButtonTextView:Landroid/widget/TextView;

    .line 882
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 883
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    const-string v0, "volume_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 886
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    .line 887
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 888
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 890
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 891
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    .line 894
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 895
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    .line 896
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_1e

    .line 897
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    .line 900
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    .line 901
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAcceptVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 903
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    const v1, 0x7f0a0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    .line 904
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    if-eqz v0, :cond_20

    .line 905
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtRejectButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    :cond_20
    return-void

    .line 526
    :cond_21
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 528
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f02048e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 551
    :cond_22
    const v1, 0x7f0908e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 556
    :cond_23
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 557
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 634
    :cond_24
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 635
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    goto/16 :goto_3

    .line 637
    :cond_25
    const v0, 0x7f0a0360

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VtInCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    goto/16 :goto_3

    .line 709
    :cond_26
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v4, 0x7f0a01e2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    .line 710
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_11

    .line 711
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 713
    const-string v0, "disable_button_sound_effects_extra_volume"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 714
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraVlolButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_4

    .line 784
    :cond_27
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>(I)V

    move-object v1, v0

    goto/16 :goto_5

    .line 840
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f0a01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    .line 841
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 842
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_6

    .line 862
    :cond_29
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eqz v0, :cond_2a

    .line 863
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 864
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 865
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOnIcon:Landroid/graphics/drawable/Drawable;

    .line 866
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRecordOffIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    .line 868
    :cond_2a
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 869
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIconFull:Landroid/graphics/drawable/Drawable;

    .line 870
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIconFull:Landroid/graphics/drawable/Drawable;

    .line 872
    :cond_2b
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 873
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 3521
    return-void
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 3534
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1760
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 2928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 2930
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2931
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2935
    :goto_0
    return v0

    .line 2934
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallMenu()Lcom/android/phone/InCallMenu;

    move-result-object v0

    .line 2935
    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3051
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 3052
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3146
    :goto_0
    return-void

    .line 3065
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3129
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 3067
    :pswitch_0
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3069
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3070
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 3073
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 3080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 3084
    :pswitch_1
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3085
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 3113
    :pswitch_2
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 3115
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3116
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3117
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallTouchUi;->setCallRejected(Z)V

    .line 3119
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 3122
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 3125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_0

    .line 3065
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPopupVisible:Z

    if-eqz v0, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPopup:Lcom/android/phone/PopupMenu;

    invoke-virtual {v0}, Lcom/android/phone/PopupMenu;->dismiss()V

    .line 2919
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showPopup()V

    .line 2921
    :cond_0
    return-void
.end method

.method setCallRejected(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3160
    const-string v1, "isCallRejected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3162
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 438
    return-void
.end method

.method public setLeftOneHandModeArrow()V
    .locals 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->setLeftOneHandModeArrow()V

    .line 1741
    return-void
.end method

.method public setRightOneHandModeArrow()V
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRightArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->setRightOneHandModeArrow()V

    .line 1733
    return-void
.end method

.method public setVolume(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3665
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3666
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->setVolumeForVT(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    :goto_0
    return-void

    .line 3673
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 3674
    if-eqz v0, :cond_5

    .line 3675
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 3679
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 3680
    if-ge p1, v5, :cond_3

    .line 3681
    const-string v3, "InCallTouchUi"

    const-string v4, "Set force progress level 1 for call volume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3688
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p1, v2, :cond_4

    .line 3689
    const-string v2, "InCallTouchUi"

    const-string v3, "Extra vol on max"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v3, 0x7f020321

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    .line 3695
    :goto_3
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIsShownVolumeBarbyVolKey:Z

    .line 3696
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3697
    iput-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mIschangedbyCall:Z

    .line 3698
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanel()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3675
    goto :goto_1

    .line 3683
    :cond_3
    if-le p1, v2, :cond_1

    .line 3684
    const-string v3, "InCallTouchUi"

    const-string v4, "Set force progress level max for call volume"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 3685
    goto :goto_2

    .line 3692
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v3, 0x7f020320

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setVolumeForVT(I)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 3754
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3755
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3756
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_0

    .line 3757
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1, p1}, Lcom/android/phone/VtInCallButtonsView;->setVolume(I)V

    .line 3758
    const/4 v1, 0x1

    .line 3761
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected showShowMeButton()V
    .locals 1

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/VtInCallButtonsView;->showShowMeButton()V

    .line 3826
    :cond_0
    return-void
.end method

.method public showVolumePanel()V
    .locals 6

    .prologue
    const/16 v5, 0x8c

    const/4 v1, 0x0

    .line 3705
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3706
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showVolumePanelForVT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3737
    :goto_0
    return-void

    .line 3713
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 3714
    if-eqz v0, :cond_3

    .line 3715
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 3718
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 3719
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 3721
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    .line 3722
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v4, 0x7f020321

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    .line 3727
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 3728
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3729
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3730
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 3732
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3733
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 3734
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3735
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3715
    goto :goto_1

    .line 3724
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v4, 0x7f020320

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgressDrawable(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public showVolumePanelForVT()Z
    .locals 2

    .prologue
    .line 3765
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3766
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->getValidCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3767
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v1, :cond_0

    .line 3768
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v1}, Lcom/android/phone/VtInCallButtonsView;->showVolumePanel()V

    .line 3769
    const/4 v1, 0x1

    .line 3772
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v10, 0x8

    .line 940
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 941
    const-string v0, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 948
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_2

    .line 949
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 952
    :cond_2
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 953
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v0

    .line 957
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState: current state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 964
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 965
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 966
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    .line 971
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 974
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 975
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 976
    const-string v0, "- updateState: return as phone is in answer memo mode..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 977
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 979
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 981
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 1000
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v10}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0

    .line 955
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 968
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 969
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    goto :goto_2

    .line 984
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 985
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 986
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 987
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_9

    .line 988
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 990
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 995
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 997
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1004
    :cond_b
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1005
    const v1, 0x7f0a0301

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RejectCallWithMsgContent;

    .line 1006
    if-eqz v0, :cond_c

    .line 1007
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getIsAnsweringMessageDisable()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1008
    const v8, 0x7f09029b

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1009
    if-eqz v1, :cond_c

    .line 1010
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->disableAnsweringMessage()V

    .line 1034
    :cond_c
    :goto_4
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_11

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1042
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "support_incomingcall_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1044
    :cond_d
    const-string v0, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v6

    .line 1078
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isQuickResponseDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1079
    const-string v0, "updateState: quickResponse visible. Cancel showing incoming call controls."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v5

    move v1, v5

    .line 1097
    :goto_6
    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    .line 1098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_e
    if-eqz v0, :cond_f

    .line 1015
    const-string v8, "automatic_answering_machine_kdi"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1016
    const v8, 0x7f09090d

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1021
    :cond_f
    :goto_7
    if-eqz v1, :cond_c

    .line 1022
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->enableAnsweringMessage()V

    goto :goto_4

    .line 1018
    :cond_10
    const v8, 0x7f0908e5

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 1084
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 1085
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mResizeHidePatchForInc:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    move v1, v5

    .line 1087
    goto :goto_6

    .line 1089
    :cond_13
    const-string v0, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    move v0, v5

    move v1, v5

    goto :goto_6

    .line 1114
    :cond_14
    if-eqz v0, :cond_38

    .line 1115
    const-string v0, "- updateState: showing in-call controls..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1118
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1119
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isCallRejected()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1121
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v8, :cond_16

    :cond_15
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_2a

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v8, :cond_2a

    .line 1125
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    :goto_8
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v8, :cond_2e

    .line 1148
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1149
    const-string v0, "Don\'t show end-call buttons"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1156
    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1159
    :cond_1a
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1160
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1162
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    :cond_1d
    const-string v0, "support_multi_window"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1167
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwitchButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMultiCallButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1216
    :cond_1f
    :goto_a
    if-eqz v1, :cond_41

    .line 1217
    const-string v0, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1218
    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1221
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1222
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1225
    :cond_20
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1226
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/VtInCallButtonsView;->setVisibility(I)V

    .line 1227
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_23

    .line 1228
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1230
    :cond_22
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1231
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0e0058

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1232
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1234
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    if-nez v0, :cond_39

    move v0, v6

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1241
    :cond_23
    :goto_c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 1246
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonViewDrivingMode_qcif:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    :cond_24
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1251
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isCallRejected()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1253
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    :goto_d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 1263
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1264
    if-eqz v0, :cond_25

    .line 1265
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1266
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1267
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e012b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1270
    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    :cond_25
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    :cond_26
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 1282
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButtonTextView:Landroid/widget/TextView;

    aget-object v4, v1, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectButtonTextView:Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :cond_27
    :goto_f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v5}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1330
    :goto_10
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v0, :cond_42

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_42

    .line 1340
    :goto_11
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "hw_home_key"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1343
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1346
    :cond_29
    const-string v0, "disable_button_bt_touch_sound"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1348
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    .line 1128
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1132
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1135
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1151
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0}, Lcom/android/phone/EndCallButtonsView;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_17

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 1171
    :cond_2e
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1172
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    .line 1173
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    if-eq v0, v8, :cond_2f

    .line 1174
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsOnehandOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->prevIsOnehandOn:Z

    .line 1175
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 1179
    :cond_2f
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1180
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    .line 1181
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    if-eq v0, v8, :cond_30

    .line 1182
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEasyModeOn:Z

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mPrevIsEasyModeOn:Z

    .line 1183
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUiLayout()V

    .line 1187
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 1188
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 1189
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    :cond_31
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1192
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_32

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1193
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1205
    :cond_32
    :goto_12
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1206
    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->updateToVideoCallUi(Lcom/android/internal/telephony/Call;)V

    .line 1210
    :goto_13
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtons:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto/16 :goto_a

    .line 1196
    :cond_33
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1198
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_12

    .line 1199
    :cond_34
    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1200
    :cond_35
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons_qcif:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_12

    .line 1202
    :cond_36
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtInCallButtons:Lcom/android/phone/VtInCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/VtInCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_12

    .line 1208
    :cond_37
    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->updateToVoiceCallUi(Lcom/android/internal/telephony/Call;)V

    goto :goto_13

    .line 1213
    :cond_38
    const-string v0, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_39
    move v0, v5

    .line 1234
    goto/16 :goto_b

    .line 1236
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVtIncomingHideButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto/16 :goto_c

    .line 1255
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1258
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1269
    :cond_3d
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e0122

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_e

    .line 1284
    :cond_3e
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1285
    const-string v0, "it\'s a imsvideo call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1286
    const-string v0, "accept_vt_by_button"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1287
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1288
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v4}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1290
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1291
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v5}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_f

    .line 1294
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_f

    .line 1298
    :cond_40
    const-string v0, "it\'s not a imsvideo call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewForVoLteVT:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_f

    .line 1313
    :cond_41
    const-string v0, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;Z)V

    .line 1314
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingButtonViewDrivingMode:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1319
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_10

    .line 1337
    :cond_42
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_11

    .line 1350
    :cond_43
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    :cond_44
    move v1, v0

    move v0, v5

    goto/16 :goto_6

    :cond_45
    move v0, v5

    goto/16 :goto_5
.end method
