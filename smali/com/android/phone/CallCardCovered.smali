.class public Lcom/android/phone/CallCardCovered;
.super Landroid/widget/FrameLayout;
.source "CallCardCovered.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCardCovered$6;,
        Lcom/android/phone/CallCardCovered$AsyncLoadCookie;
    }
.end annotation


# static fields
.field private static mNeedUpdate:Z

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private isAutoAnsered:Z

.field private isGuidanceMsgPlaying:Z

.field private mAnimationList:[[I

.field private mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

.field private mAnsMemoImageView:Landroid/widget/ImageView;

.field private mAnsweringMemo:Landroid/widget/TextView;

.field private mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

.field private mAnsweringMemoStateLabel:Landroid/widget/TextView;

.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallBannerCoverTextView:Landroid/widget/TextView;

.field private mCallBannerCoverView:Landroid/widget/RelativeLayout;

.field private mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

.field private mCallBannerStateTime:Landroid/view/ViewGroup;

.field private mCallEndCause:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

.field private mCallStateTime:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimeForEndScreen:Landroid/widget/TextView;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationIndex:I

.field private mCurrentAnimationType:I

.field private mCurrentPeriodMarkIndex:I

.field private mDensity:F

.field private mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mEndCallTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextLine1:Landroid/widget/TextView;

.field private mHelpTextLine4:Landroid/widget/TextView;

.field private mImageCache:Lcom/android/phone/ImageCache;

.field private mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

.field private mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mInCallInfoBackground:Landroid/widget/ImageView;

.field private mInCallInfoContainer:Landroid/widget/RelativeLayout;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

.field private mInset:Landroid/widget/ImageView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mName:Landroid/widget/TextView;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPeriodMarkList:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Lcom/android/phone/InCallContactPhoto;

.field private mPhotoBorder:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPlayingAnsweringMessage:Landroid/widget/TextView;

.field private mRecordTime:Landroid/widget/TextView;

.field private mRecordTimeLayout:Landroid/widget/RelativeLayout;

.field private mRecordingMessage:Landroid/widget/TextView;

.field private mRecordingMessageLayout:Landroid/widget/RelativeLayout;

.field private mRejectCallWithMessageTab:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgContentBar:Landroid/widget/LinearLayout;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgHandleText:Landroid/widget/TextView;

.field public mRejectCallWithMsgParent:Landroid/widget/RelativeLayout;

.field private mShowingCallEnd:Z

.field private mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private memoRecInfo:Landroid/view/View;

.field private memoRecordTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallCardCovered;->mToast:Landroid/widget/Toast;

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 150
    iput-boolean v4, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mDensity:F

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 201
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 202
    new-array v0, v6, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v7, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    .line 209
    new-array v0, v6, [[Landroid/graphics/drawable/Drawable;

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    .line 219
    iput-object v3, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    .line 234
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    .line 260
    new-instance v0, Lcom/android/phone/CallCardCovered$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCardCovered$1;-><init>(Lcom/android/phone/CallCardCovered;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    .line 311
    iput-object p1, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    .line 312
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 313
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 314
    return-void

    .line 202
    nop

    :array_0
    .array-data 0x4
        0xf5t 0x1t 0x2t 0x7ft
        0xf7t 0x1t 0x2t 0x7ft
        0xf9t 0x1t 0x2t 0x7ft
        0xfbt 0x1t 0x2t 0x7ft
        0xfdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe3t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
    .end array-data

    .line 235
    :array_2
    .array-data 0x4
        0x51t 0x3t 0x2t 0x7ft
        0x52t 0x3t 0x2t 0x7ft
        0x53t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method private CallEndTimeBlink()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x0

    .line 1426
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 1433
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1434
    :cond_1
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1435
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    :goto_1
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 1440
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1451
    :goto_2
    return-void

    .line 1435
    :cond_2
    iget-wide v2, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v2, v3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1437
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v2, v3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1443
    :cond_5
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1444
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    :goto_4
    iput-wide v5, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    .line 1448
    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndTimeBlinkCount:I

    .line 1449
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    goto :goto_2

    .line 1446
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCardCovered;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallCardCovered;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->destroyImageCache()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->setSmallCallCardAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->setCallCardAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallCardCovered;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallCardCovered;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/phone/CallCardCovered;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCardCovered;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCardCovered;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCardCovered;)Lcom/android/phone/InCallContactPhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCardCovered;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private destroyImageCache()V
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-virtual {v0}, Lcom/android/phone/ImageCache;->clearCache()V

    .line 2244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 2246
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x8

    const/16 v8, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayMainCallStatus(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 837
    if-nez p2, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 841
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 847
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 848
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 849
    :cond_2
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 850
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 874
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - call.state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 877
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_4

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_4

    .line 879
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 880
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 884
    :cond_4
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 885
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 887
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 889
    sget-object v6, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 899
    const-string v6, "clear_cover_not_support_end_call"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_5

    .line 900
    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 901
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 902
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 903
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 904
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 915
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 920
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 922
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 923
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 926
    :cond_7
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 927
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    :cond_8
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 954
    const-string v0, "CallCardCovered"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 958
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/phone/CallCardCovered;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 960
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "support_lgt_multi_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 962
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 963
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/high16 v1, 0x41b8

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v1, 0x7f020202

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 1091
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/phone/CallCardCovered;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 854
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 859
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 861
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 867
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 868
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 869
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 893
    :pswitch_0
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 894
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 895
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 896
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    .line 906
    :cond_c
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 907
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 908
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 909
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    .line 935
    :pswitch_1
    const-string v0, "displayMainCallStatus: start periodicUpdateTimer"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 938
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_3

    .line 946
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_3

    .line 950
    :pswitch_3
    const-string v0, "CallCardCovered"

    const-string v1, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    .line 968
    :cond_d
    const/4 v6, 0x0

    .line 969
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 970
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 971
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_e

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "support_lgt_multi_call"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 975
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 987
    :goto_5
    if-nez v6, :cond_12

    .line 988
    const-string v0, "displayMainCallStatus: connection is null, using default values."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 990
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 977
    :cond_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_5

    .line 979
    :cond_f
    if-eq v0, v5, :cond_10

    if-eq v0, v10, :cond_10

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 982
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_5

    .line 984
    :cond_11
    const-string v1, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    .line 993
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CONN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 995
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 997
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 998
    const/4 v7, 0x2

    if-ne v0, v7, :cond_22

    .line 999
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    .line 1000
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1001
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v8

    .line 1002
    const/4 v9, 0x0

    .line 1003
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_1a

    .line 1004
    iget-object v10, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v10, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 1010
    :goto_6
    const-string v10, "usa_cdma_smc_fac_req"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1011
    if-eqz v7, :cond_14

    .line 1012
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v10

    .line 1013
    if-eqz v9, :cond_14

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v10, v11, :cond_13

    sget v11, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v10, v11, :cond_14

    .line 1015
    :cond_13
    throw v9

    .line 1020
    :cond_14
    if-eqz v9, :cond_16

    .line 1021
    if-eqz v7, :cond_15

    throw v9

    throw v7

    move-result v7

    if-nez v7, :cond_15

    move v0, v5

    .line 1024
    :cond_15
    if-eqz v8, :cond_16

    throw v9

    throw v8

    move-result v7

    if-nez v7, :cond_16

    move v0, v5

    .line 1030
    :cond_16
    :goto_7
    if-eqz v0, :cond_1b

    .line 1031
    const-string v0, "- displayMainCallStatus: starting CallerInfo query..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1034
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    .line 1035
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 1036
    if-eqz v1, :cond_17

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1037
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1038
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1039
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1042
    :cond_17
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 1043
    const-string v7, "updated_calling_name_presentation"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v1, :cond_18

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- contactExists : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v7, v7, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1048
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_18

    .line 1049
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1052
    :cond_18
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v0, :cond_19

    move v4, v5

    :cond_19
    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 1007
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto/16 :goto_6

    .line 1055
    :cond_1b
    const-string v0, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1056
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_20

    .line 1057
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 1058
    const-string v0, "one_line_greeting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1059
    :cond_1c
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1061
    :cond_1d
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1062
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1064
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1065
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    .line 1067
    :cond_1e
    const-string v0, "visual_expression"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1068
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getSKTVEUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->sktVEUrl:Ljava/lang/String;

    .line 1071
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- displayMainCallStatus: CNAP data from Connection: , CNAP name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", Number/Name Presentation="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p2

    .line 1074
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 1076
    :cond_20
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_21

    .line 1077
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Number Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Name Presentation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v0, p0

    move v4, v5

    move-object v5, p2

    .line 1082
    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4

    .line 1085
    :cond_21
    const-string v0, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_4

    :cond_22
    move v0, v5

    goto/16 :goto_7

    nop

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 930
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const v0, 0x7f09018a

    .line 1791
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1794
    if-nez v1, :cond_0

    .line 1795
    const-string v1, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1796
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1798
    const-string v0, ""

    .line 1871
    :goto_0
    return-object v0

    .line 1802
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1803
    sget-object v2, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1863
    const-string v1, "clear_cover_enhanced"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1865
    const-string v0, ""

    goto :goto_0

    .line 1805
    :pswitch_0
    const v0, 0x7f09000c

    .line 1871
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1809
    :pswitch_1
    const v0, 0x7f09000d

    .line 1810
    goto :goto_1

    .line 1813
    :pswitch_2
    const v0, 0x7f09000e

    .line 1814
    goto :goto_1

    .line 1817
    :pswitch_3
    const v0, 0x7f09000f

    .line 1818
    goto :goto_1

    .line 1821
    :pswitch_4
    const v0, 0x7f090010

    .line 1822
    goto :goto_1

    .line 1825
    :pswitch_5
    const v0, 0x7f090011

    .line 1826
    goto :goto_1

    .line 1829
    :pswitch_6
    const v0, 0x7f090013

    .line 1830
    goto :goto_1

    .line 1833
    :pswitch_7
    const v0, 0x7f090012

    .line 1834
    goto :goto_1

    .line 1838
    :pswitch_8
    const v0, 0x7f090014

    .line 1839
    goto :goto_1

    .line 1842
    :pswitch_9
    const v0, 0x7f090015

    .line 1843
    goto :goto_1

    .line 1846
    :pswitch_a
    const v0, 0x7f090016

    .line 1847
    goto :goto_1

    .line 1850
    :pswitch_b
    const v0, 0x7f090017

    .line 1851
    goto :goto_1

    .line 1854
    :pswitch_c
    const v0, 0x7f090018

    .line 1855
    goto :goto_1

    .line 1859
    :pswitch_d
    const v0, 0x7f09001f

    .line 1860
    goto :goto_1

    .line 1803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "call"

    .prologue
    .line 2496
    if-nez p1, :cond_0

    .line 2497
    const/4 v1, 0x0

    .line 2503
    :goto_0
    return-object v1

    .line 2499
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2500
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2501
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2503
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultImageResource(Lcom/android/internal/telephony/Call;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const v1, 0x7f020208

    const/4 v4, 0x0

    .line 2250
    .line 2251
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2252
    const v0, 0x7f020202

    .line 2256
    :goto_0
    sget-object v2, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2280
    :pswitch_0
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2283
    :cond_0
    iput v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 2287
    :goto_1
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2289
    iput v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    move v0, v1

    .line 2292
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 2254
    goto :goto_0

    .line 2259
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    aget-object v0, v0, v6

    aget v0, v0, v4

    .line 2260
    iput v6, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    goto :goto_1

    .line 2270
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    aget-object v0, v0, v4

    aget v0, v0, v4

    .line 2271
    iput v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    goto :goto_1

    .line 2256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hideMemoRecInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 2845
    const-string v0, "hideMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2846
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2847
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2849
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2850
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2858
    :cond_1
    :goto_0
    return-void

    .line 2853
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2854
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2855
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2856
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initImageCache()V
    .locals 3

    .prologue
    .line 2233
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 2239
    :goto_0
    return-void

    .line 2236
    :cond_0
    new-instance v0, Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/android/phone/ImageCache$ImageCacheParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    .line 2237
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 2238
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mImageCacheParams:Lcom/android/phone/ImageCache$ImageCacheParams;

    invoke-static {v0, v1}, Lcom/android/phone/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Lcom/android/phone/ImageCache$ImageCacheParams;)Lcom/android/phone/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2654
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2658
    const-string v0, "CallCardCovered"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2659
    return-void
.end method

.method private okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 2
    .parameter "cm"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private redial()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 2508
    .line 2509
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2510
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2512
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 2514
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2517
    :cond_0
    if-nez v0, :cond_2

    .line 2518
    const-string v0, "redial : call is null"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2553
    :cond_1
    :goto_0
    return-void

    .line 2522
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2524
    if-nez v0, :cond_3

    .line 2525
    const-string v0, "redial : connection is null"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2529
    :cond_3
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 2531
    if-eqz v2, :cond_1

    .line 2533
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2534
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2536
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2538
    if-eqz v0, :cond_5

    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_5

    .line 2539
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2542
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2546
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "RedialCover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2548
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2550
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2551
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resetCallEndScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1419
    iput-boolean v1, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 1420
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1422
    return-void
.end method

.method private setCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2299
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2342
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v4, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 2304
    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2307
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2311
    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isAirMotionOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2315
    :cond_2
    if-eqz v0, :cond_4

    .line 2317
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 2318
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2322
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    .line 2334
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallContactPhoto;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2341
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    goto/16 :goto_0

    .line 2323
    :catch_0
    move-exception v0

    .line 2324
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->resetCallCardAnimation()V

    .line 2325
    const-string v2, "getBitmap - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2335
    :catch_1
    move-exception v0

    .line 2336
    const-string v2, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2337
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private setSmallCallCardAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2356
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2360
    :cond_0
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 2361
    iput v3, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2364
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnimationList:[[I

    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    aget v2, v0, v1

    .line 2366
    const/4 v1, 0x0

    .line 2367
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_2

    .line 2368
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2372
    :cond_2
    if-nez v1, :cond_3

    .line 2373
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2375
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2376
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2377
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2385
    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    if-eqz v0, :cond_4

    .line 2386
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mImageCache:Lcom/android/phone/ImageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2389
    :cond_4
    iget v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    const-string v3, "setImageResource - outOfMemory exception"

    invoke-direct {p0, v3, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2380
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2381
    :catch_1
    move-exception v0

    .line 2382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageResource - exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "call"
    .parameter "view"
    .parameter "ci"

    .prologue
    const/16 v4, 0x82

    .line 2025
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 2027
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 2029
    .local v0, resource:I
    iget v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2030
    invoke-direct {p0, p2, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2032
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2033
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2036
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->initImageCache()V

    .line 2037
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2038
    const/4 v1, 0x1

    .line 2041
    .end local v0           #resource:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1976
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1977
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1982
    :goto_0
    const/4 v0, 0x1

    .line 1984
    :goto_1
    return v0

    .line 1980
    :cond_0
    const v0, 0x7f020208

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1984
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final showImage(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1989
    if-lez p2, :cond_0

    .line 1991
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    const-string v1, "showImage - outOfMemory exception"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1994
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 2000
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2001
    return-void
.end method

.method private final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 2010
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2012
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2014
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2015
    invoke-static {p1}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 2016
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2021
    :goto_0
    return-void

    .line 2018
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2019
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMemoRecInfo()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2818
    const-string v0, "showMemoRecInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2819
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2820
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2823
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2826
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->updateMemoRecordTime()V

    .line 2842
    return-void

    .line 2828
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2829
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2831
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 2832
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2834
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 2835
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2837
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2838
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMute()V
    .locals 3

    .prologue
    .line 2603
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleMute()V

    .line 2605
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2606
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2607
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2609
    .end local v0           #inCallControlState:Lcom/android/phone/InCallControlState;
    :cond_0
    return-void
.end method

.method private toggleSpeaker()V
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 2599
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    .line 2600
    :cond_0
    return-void
.end method

.method private updateCallEndScreen(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x64

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    .line 1405
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1416
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-static {v1, v2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallStateWidgets(call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1140
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1141
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1147
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 1279
    const-string v0, "CallCardCovered"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v11}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v1

    .line 1283
    :goto_0
    const-string v5, "clear_cover_enhanced"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1284
    sget-object v5, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1293
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1298
    :cond_0
    :goto_1
    const-string v5, "display_alerting_title"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1299
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_1

    .line 1300
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1301
    const v0, 0x7f090186

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1305
    :cond_1
    if-ne v4, v12, :cond_16

    .line 1306
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_15

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1308
    const v0, 0x7f090185

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> callStateLabel: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1325
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1328
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    if-eqz v1, :cond_19

    .line 1333
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1334
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1335
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1343
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1344
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1a

    .line 1345
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const v1, 0x7f090869

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1348
    :goto_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1351
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1352
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1367
    :cond_5
    :goto_5
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 1375
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->resetCallEndScreen()V

    .line 1378
    :goto_6
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1379
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1380
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 1382
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1383
    :cond_6
    iput v9, p0, Lcom/android/phone/CallCardCovered;->mCurrentPeriodMarkIndex:I

    .line 1386
    :cond_7
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 1395
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1396
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1401
    :cond_8
    :goto_7
    return-void

    :pswitch_1
    move-object v0, v1

    .line 1150
    goto/16 :goto_0

    .line 1153
    :pswitch_2
    const-string v0, "%s"

    .line 1154
    if-ne v4, v12, :cond_d

    .line 1155
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_20

    .line 1156
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1158
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1159
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1163
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v5

    .line 1164
    iget-object v0, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    iget-object v6, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_9

    iget-object v6, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v6, v7, :cond_9

    .line 1168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1170
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :goto_9
    const-string v5, "common_volte_vt_kor"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1f

    .line 1201
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isShowingModifyCallDialog()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1202
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f09086a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_0

    .line 1161
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_8

    .line 1172
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v12, :cond_20

    .line 1173
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1176
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    if-eqz v5, :cond_c

    iget v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v6, v7, :cond_c

    .line 1181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1183
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1188
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_20

    .line 1190
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1191
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f090020

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 1193
    :cond_e
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 1210
    :pswitch_3
    const v0, 0x7f09018b

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1215
    :pswitch_4
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1216
    const v0, 0x7f090781

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1218
    :cond_f
    const v0, 0x7f090185

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1221
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1222
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    .line 1223
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v7

    .line 1224
    const-string v0, "%s"

    .line 1225
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iget-object v8, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1230
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f090020

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1233
    :cond_10
    if-eqz v6, :cond_11

    if-eqz v7, :cond_11

    .line 1234
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0907fe

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "%s"

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1239
    const v0, 0x7f0903fb

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1241
    :cond_12
    const v0, 0x7f090189

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1244
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1245
    const v0, 0x7f0903fb

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1247
    :cond_13
    const v0, 0x7f090189

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    move-object v0, v1

    .line 1266
    goto/16 :goto_0

    .line 1269
    :pswitch_8
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1270
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 1271
    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    goto/16 :goto_0

    .line 1273
    :cond_14
    const-string v0, ""

    .line 1274
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallEndCause:Ljava/lang/String;

    goto/16 :goto_0

    .line 1286
    :pswitch_9
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1290
    :pswitch_a
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1309
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1310
    const v0, 0x7f090187

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1312
    :cond_16
    if-eq v4, v11, :cond_17

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    const/4 v5, 0x5

    if-ne v4, v5, :cond_18

    .line 1315
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1316
    const v0, 0x7f090187

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1319
    :cond_18
    const-string v3, "CallCardCovered"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 1337
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1338
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1339
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1347
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const v1, 0x7f090868

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1354
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1357
    :cond_1c
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1358
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1359
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 1360
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1361
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1364
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1369
    :pswitch_b
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 1370
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==> mEndCallTime: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/phone/CallCardCovered;->mEndCallTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->updateCallEndScreen(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_6

    .line 1389
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1390
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPeriodMarkList:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1391
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    :cond_1f
    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto/16 :goto_0

    :cond_20
    move-object v0, v1

    goto/16 :goto_9

    .line 1147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 1284
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 1367
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_b
    .end packed-switch

    .line 1386
    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayForPerson("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\nnumberPresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " namePresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTemporary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1498
    if-nez p5, :cond_1

    .line 1499
    const-string v0, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1504
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1508
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1509
    const/4 v1, 0x0

    .line 1510
    const/4 v2, 0x0

    .line 1512
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "country_detector"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/CountryDetector;

    .line 1515
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1516
    if-eqz p1, :cond_28

    .line 1517
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1519
    const-string v2, "usa_gsm_update_2nd_number"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1520
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne p2, v2, :cond_2

    .line 1522
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1523
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1524
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1529
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1530
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1533
    :cond_3
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1534
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1535
    const-string v2, "updateDisplayForPerson : exist invalid cnapName in the CallerInfo"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1536
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1540
    :cond_4
    const-string v2, "one_line_greeting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1541
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1544
    :cond_5
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1545
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDisplayForPerson : Roaming area number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1547
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1549
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1550
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p6, p0, p6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1552
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_6

    .line 1553
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 1554
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtilsExt.getCallCardNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1559
    :cond_7
    :goto_1
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1560
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v8, v0

    .line 1568
    :goto_2
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1569
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsExt;->changeNameForSKT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1572
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1573
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1574
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> no name *or* number! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v8, v1

    .line 1686
    :cond_9
    :goto_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- got personUri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', based on info.person_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1692
    :goto_4
    if-eqz p4, :cond_29

    if-eqz p1, :cond_a

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v1, :cond_29

    .line 1693
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1694
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1733
    :cond_b
    :goto_5
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1734
    if-eqz p1, :cond_31

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnipNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "call state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_c

    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_30

    .line 1737
    :cond_c
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1742
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1743
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 1744
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1745
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    :cond_d
    :goto_7
    invoke-static {p5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1756
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1760
    :goto_8
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    if-eqz v8, :cond_33

    .line 1763
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41b8

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1764
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    :goto_9
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    if-eqz p1, :cond_0

    .line 1776
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1777
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 1778
    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090515

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090517

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1556
    :cond_f
    invoke-virtual {p6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1557
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1561
    :cond_10
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1563
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_2

    .line 1576
    :cond_11
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_12

    .line 1577
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_3

    .line 1579
    :cond_12
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1581
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1582
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1583
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1597
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> cnapName available: displayName \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', displayNumber \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1586
    :cond_13
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1587
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1588
    :cond_14
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1590
    :cond_15
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1594
    :cond_16
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 1600
    :cond_17
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    move-object v6, v8

    move-object v8, v1

    .line 1603
    goto/16 :goto_3

    .line 1605
    :cond_19
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1606
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1607
    :cond_1a
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1609
    :cond_1b
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1613
    :cond_1c
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v8, v1

    goto/16 :goto_3

    .line 1618
    :cond_1d
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v0, :cond_20

    .line 1619
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1667
    :cond_1e
    :goto_b
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1670
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1673
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1674
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1675
    :cond_1f
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1623
    :cond_20
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1624
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_23

    .line 1629
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1630
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 1632
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v0, :cond_21

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v0, :cond_1e

    .line 1633
    :cond_21
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_22

    .line 1634
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1635
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1637
    :cond_22
    new-instance v0, Lcom/android/phone/CallCardCovered$5;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered$5;-><init>(Lcom/android/phone/CallCardCovered;JJLjava/lang/String;)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1651
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_b

    .line 1656
    :cond_23
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_24

    .line 1657
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1658
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimerCover:Landroid/os/CountDownTimer;

    .line 1660
    :cond_24
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 1663
    :cond_25
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_b

    .line 1677
    :cond_26
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1681
    :cond_27
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1690
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v2

    move-object v8, v1

    goto/16 :goto_4

    .line 1695
    :cond_29
    invoke-virtual {p5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2a

    .line 1697
    const-string v0, "update nothing"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1698
    :cond_2a
    if-eqz p1, :cond_2b

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v1, :cond_2b

    .line 1699
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1700
    :cond_2b
    if-eqz p1, :cond_2c

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_2c

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2c

    .line 1701
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1702
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, p1}, Lcom/android/phone/CallCardCovered;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1703
    if-nez v0, :cond_2d

    .line 1704
    const-string v0, "CallCardCovered"

    const-string v1, "personPri is null. Just use Unknown picture."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p5}, Lcom/android/phone/CallCardCovered;->getDefaultImageResource(Lcom/android/internal/telephony/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1706
    :cond_2d
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1715
    :cond_2e
    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1718
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1720
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1723
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v3, v4, p1, p5}, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1728
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 1740
    :cond_2f
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    goto/16 :goto_6

    .line 1748
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1751
    :cond_31
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1758
    :cond_32
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1767
    :cond_33
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1768
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1769
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x4198

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1771
    :cond_34
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_35
    move-object v8, v0

    goto/16 :goto_2
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 3
    .parameter

    .prologue
    .line 1478
    .line 1480
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    .line 1487
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 1488
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    :goto_1
    return-void

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    goto :goto_0

    .line 1490
    :cond_1
    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhotoForCallState("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2050
    iput v8, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 2051
    iput v1, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2056
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2057
    sget-boolean v0, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2060
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v3, 0x7f02008b

    invoke-direct {p0, v0, v3}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2061
    sput-boolean v1, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    .line 2064
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 2065
    sput-boolean v2, Lcom/android/phone/CallCardCovered;->mNeedUpdate:Z

    .line 2070
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 2071
    sget-object v0, Lcom/android/phone/CallCardCovered$6;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 2120
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2121
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 2122
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2126
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2139
    :goto_0
    if-eqz v0, :cond_14

    .line 2140
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2141
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_b

    .line 2142
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 2149
    :goto_1
    if-eqz v3, :cond_13

    .line 2150
    iget v0, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2161
    :goto_2
    if-nez v0, :cond_10

    .line 2162
    const-string v6, "common_volte_vt_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2163
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/CallCardCovered;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2230
    :cond_3
    :goto_3
    return-void

    .line 2076
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2079
    if-eqz v0, :cond_6

    .line 2080
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 2081
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_15

    .line 2083
    :cond_4
    const-string v0, "display_busy_picture"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2084
    const v0, 0x7f02057a

    :goto_4
    move v1, v0

    .line 2213
    :goto_5
    :pswitch_2
    if-eqz v1, :cond_5

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2217
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2224
    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2225
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2226
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    goto :goto_3

    .line 2088
    :cond_6
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 2128
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 2130
    :cond_8
    if-eq v0, v2, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    .line 2133
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto/16 :goto_0

    .line 2136
    :cond_a
    const-string v3, "CallCardCovered"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object v0, v4

    goto/16 :goto_0

    .line 2143
    :cond_b
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_14

    .line 2144
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto/16 :goto_1

    .line 2169
    :cond_c
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2170
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_d

    move v1, v2

    .line 2172
    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    .line 2173
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/phone/CallCardCovered;->showAnimationImage(Lcom/android/internal/telephony/Call;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation is set : state == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2180
    :cond_e
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2181
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallCardCovered;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v9, :cond_11

    .line 2186
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 2187
    if-nez v1, :cond_f

    .line 2188
    const-string v1, "CallCardCovered"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const v2, 0x7f020208

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2201
    :goto_7
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v1, v0

    .line 2203
    goto/16 :goto_5

    .line 2192
    :cond_f
    const-string v5, "start asynchronous load inside updatePhotoForCallState()"

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 2194
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2196
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 2197
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    iget-object v7, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {v6, v7, v3, v4}, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v2, v5, v1, p0, v6}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_7

    .line 2206
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    .line 2207
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_11
    move v1, v0

    goto/16 :goto_5

    :cond_12
    move v1, v2

    goto/16 :goto_6

    :cond_13
    move v0, v1

    goto/16 :goto_2

    :cond_14
    move-object v3, v4

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto/16 :goto_4

    .line 2071
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearAnswerMemoImageView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2785
    const-string v0, "clearAnswerMemoImageView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2786
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2788
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2791
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2793
    :cond_1
    return-void
.end method

.method public disableCoverLockUI(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 319
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->changeCoverLockUI(Z)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/CallCardCovered$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCardCovered$2;-><init>(Lcom/android/phone/CallCardCovered;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method invisibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 2813
    const-string v0, "invisibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2814
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->hideMemoRecInfo()V

    .line 2815
    return-void
.end method

.method public isAutoAnswered()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2683
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2684
    const-string v1, "isAutoAnswered"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2685
    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->isAutoAnsered:Z

    .line 2686
    return v0
.end method

.method public isGuidanceMsgPlaying()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2710
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2711
    const-string v1, "isGuidanceMsgPlaying"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2712
    iput-boolean v0, p0, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying:Z

    .line 2713
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2575
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2576
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2595
    :goto_0
    return-void

    .line 2580
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2585
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 2576
    :pswitch_data_0
    .packed-switch 0x7f0a009d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 22

    .prologue
    .line 348
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onFinishInflate()V

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallCard onFinishInflate(this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 352
    const v2, 0x7f0a00a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    .line 353
    const v2, 0x7f0a009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    .line 354
    const v2, 0x7f0a00a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    .line 355
    const v2, 0x7f0a0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    .line 356
    const v2, 0x7f0a008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallInfoContainer:Landroid/widget/RelativeLayout;

    .line 357
    const v2, 0x7f0a0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    .line 358
    const v2, 0x7f0a0052

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallCardCovered;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallContactPhoto;->setInsetImageView(Landroid/widget/ImageView;)V

    .line 361
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 362
    const v2, 0x7f0a00a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoStateLabel:Landroid/widget/TextView;

    .line 363
    const v2, 0x7f0a0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    :cond_0
    const v2, 0x7f0a005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_1
    const v2, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    .line 370
    const v2, 0x7f0a0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    .line 371
    const v2, 0x7f0a0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_2
    const v2, 0x7f0a0088

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    .line 374
    const v2, 0x7f0a008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordTimeLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_3
    const v2, 0x7f0a0087

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    .line 379
    const v2, 0x7f0a0089

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordingMessage:Landroid/widget/TextView;

    .line 380
    const v2, 0x7f0a005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_5
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 386
    const v2, 0x7f0a008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    .line 387
    const v2, 0x7f0a008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerStateTime:Landroid/view/ViewGroup;

    .line 388
    const v2, 0x7f0a008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 389
    const v2, 0x7f0a008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateTime:Landroid/widget/TextView;

    .line 390
    const v2, 0x7f0a0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPeriodMark:Landroid/widget/ImageView;

    .line 391
    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhotoBorder:Landroid/widget/ImageView;

    .line 392
    const v2, 0x7f0a0095

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    .line 393
    const v2, 0x7f0a0096

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    .line 394
    const v2, 0x7f0a0099

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    .line 395
    const v2, 0x7f0a009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    .line 396
    const v2, 0x7f0a009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 397
    const v2, 0x7f0a009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    .line 398
    const v2, 0x7f0a0098

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerHelpLine1View:Landroid/widget/RelativeLayout;

    .line 399
    const v2, 0x7f0a009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    .line 401
    const v2, 0x7f0a009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    .line 402
    const v2, 0x7f0a00a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgParent:Landroid/widget/RelativeLayout;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_7

    .line 404
    const/4 v11, 0x0

    .line 405
    .local v11, coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_6

    .line 406
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v11

    .line 408
    :cond_6
    if-eqz v11, :cond_7

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    .line 410
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 411
    .local v18, marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v18

    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgParent:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    .end local v11           #coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    .end local v13           #height:I
    .end local v18           #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    const v2, 0x7f0a02ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingDrawer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 416
    const v2, 0x7f0a0302

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    .line 417
    const v2, 0x7f0a0305

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgContentBar:Landroid/widget/LinearLayout;

    .line 418
    const v2, 0x7f0a0300

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;

    .line 419
    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 420
    const v2, 0x7f0a0097

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCdnipNumber:Landroid/widget/TextView;

    .line 422
    :cond_8
    const v2, 0x7f0a0086

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    const v2, 0x7f0a0303

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    .line 425
    const v2, 0x7f0a0304

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    .line 434
    :goto_0
    const v2, 0x7f0a00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 435
    const v2, 0x7f0a00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 436
    const v2, 0x7f0a00a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 441
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    .line 448
    :goto_1
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_12

    .line 449
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    .line 452
    .local v4, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v9, v2

    .line 453
    .local v9, paddingRight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/phone/IncomingCallImageWidget;->addTouchArea(IIIII)V

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/IncomingCallImageWidget;->addTouchArea(IIIII)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x1

    const v5, 0x7f020340

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 458
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const v5, 0x7f02033d

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 462
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x1

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const-wide v5, 0x3ff2666666666666L

    invoke-virtual {v2, v5, v6}, Lcom/android/phone/IncomingCallImageWidget;->setReachedRatio(D)V

    .line 469
    const-string v2, "clear_cover_increase_threshold"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 475
    .local v20, marginTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 476
    .local v19, marginRight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const v3, 0x7f020348

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setRightTargetResources(I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const v3, 0x7f020347

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setRightArrowImageResource(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 479
    .local v17, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 480
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const-wide/high16 v5, 0x3ff0

    invoke-virtual {v2, v5, v6}, Lcom/android/phone/IncomingCallImageWidget;->setReachedRatio(D)V

    .line 486
    .end local v17           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v19           #marginRight:I
    .end local v20           #marginTop:I
    :cond_a
    const-string v2, "clear_cover_not_support_end_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 490
    :cond_b
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/phone/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallImageWidget$OnTriggerListener;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    .line 521
    .end local v4           #paddingLeft:I
    .end local v9           #paddingRight:I
    :cond_c
    :goto_3
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallInfoContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 529
    .local v15, incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 530
    .local v14, inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 531
    .local v12, endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4302

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4302

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4302

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCardCovered;->mDensity:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/phone/CallCardCovered$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/CallCardCovered$3;-><init>(Lcom/android/phone/CallCardCovered;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/phone/CallCardCovered$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/CallCardCovered$4;-><init>(Lcom/android/phone/CallCardCovered;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 573
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 575
    const-string v2, "automatic_answering_machine_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const v3, 0x7f09090d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 581
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    .end local v12           #endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14           #inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15           #incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    :goto_5
    new-instance v2, Lcom/android/phone/CallTime;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    .line 591
    return-void

    .line 428
    :cond_f
    const v2, 0x7f0a0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    .line 429
    const v2, 0x7f0a0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mName:Landroid/widget/TextView;

    .line 430
    const v2, 0x7f0a0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    .line 431
    const v2, 0x7f0a0086

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 445
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto/16 :goto_1

    .line 461
    .restart local v4       #paddingLeft:I
    .restart local v9       #paddingRight:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v3, 0x2

    const v5, 0x7f02033c

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    goto/16 :goto_2

    .line 496
    .end local v4           #paddingLeft:I
    .end local v9           #paddingRight:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 498
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 504
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .local v16, infoLP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 513
    .local v21, top_mlpLableInfo:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 509
    .end local v16           #infoLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v21           #top_mlpLableInfo:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 578
    .restart local v12       #endCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v14       #inCallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v15       #incomingcallImageWidgetMLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleText:Landroid/widget/TextView;

    const v3, 0x7f0908e5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 583
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandleMsgIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 1958
    packed-switch p2, :pswitch_data_0

    .line 1968
    :goto_0
    :pswitch_0
    return-void

    .line 1961
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 1958
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020208

    const/4 v3, 0x1

    .line 2442
    const-string v0, "CallCardCovered"

    const-string v1, "onImageLoadComplete"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2443
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2444
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 2450
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2455
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mLoadingPersonUri:Landroid/net/Uri;

    .line 2457
    check-cast p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;

    .line 2458
    iget-object v0, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2459
    iget-object v1, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 2460
    iget-object v2, p4, Lcom/android/phone/CallCardCovered$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 2462
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2463
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 2464
    iput-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 2468
    if-eqz p2, :cond_3

    .line 2469
    invoke-direct {p0, v1, p2}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2490
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 2491
    invoke-direct {p0, v2}, Lcom/android/phone/CallCardCovered;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 2493
    :cond_1
    return-void

    .line 2453
    :cond_2
    const-string v0, "CallCardCovered"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2470
    :cond_3
    if-eqz p3, :cond_4

    .line 2471
    invoke-direct {p0, v1, p3}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2473
    :cond_4
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2474
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2475
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 2478
    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 2481
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2482
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_0

    .line 2485
    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallCardCovered;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 2557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2558
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2570
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2560
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->toggleSpeaker()V

    .line 2561
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 2564
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->toggleMute()V

    .line 2565
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    goto :goto_0

    .line 2558
    :pswitch_data_0
    .packed-switch 0x7f0a009d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1101
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_3

    .line 1102
    const-string v0, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1103
    check-cast p2, Lcom/android/internal/telephony/Connection;

    .line 1104
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1105
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1106
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1107
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 1110
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1113
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 1114
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 1115
    if-eqz v6, :cond_0

    .line 1116
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 1117
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    .line 1119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: NumberPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "namPresentation="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", contactExists="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1122
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    .line 1123
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 1134
    :cond_1
    :goto_1
    return-void

    .line 1126
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/CallCardCovered;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IIZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 1130
    :cond_3
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1131
    const-string v0, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 1132
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v6, p2

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCardCovered;->updateElapsedTimeWidget(J)V

    .line 339
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0a0009

    const/4 v2, 0x1

    .line 1880
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

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1882
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1887
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1889
    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1890
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1891
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->startPutDownListening(Landroid/content/Context;)V

    .line 1894
    :cond_2
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1895
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1898
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1902
    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1904
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1905
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1908
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1914
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1915
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1918
    :pswitch_2
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1919
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopAnswerMemoRecording()V

    .line 1920
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1922
    :cond_6
    const-string v0, "LEFT_HANDLE: toggle speaker"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1923
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a009d

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1930
    :pswitch_3
    const-string v0, "RIGHT_HANDLE: endCall"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1931
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f0a01ce

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 1938
    :cond_7
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 1942
    :pswitch_4
    const-string v0, "LEFT_HANDLE: redial"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 1943
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->redial()V

    goto/16 :goto_0

    .line 1887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1915
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1940
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public resetCallCardAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2345
    const-string v0, "resetCallCardAnimation"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 2347
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 2348
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2349
    iget-object v3, p0, Lcom/android/phone/CallCardCovered;->mAnimationListDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 2348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2352
    :cond_1
    return-void
.end method

.method public setAutoAnswered(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2673
    const-string v1, "isAutoAnswered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2675
    return-void
.end method

.method public setCallCardCoveredBackgound()V
    .locals 8

    .prologue
    const/16 v7, 0x6b

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/high16 v1, -0x100

    const/4 v4, 0x0

    .line 2612
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sview_color_use_all"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2615
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2616
    if-nez v0, :cond_1

    .line 2617
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2618
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2619
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2651
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    const v0, -0xd1e5f3

    .line 2624
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_random"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2625
    if-nez v2, :cond_3

    .line 2626
    const-string v2, "changed_sview_cover_color"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2627
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_vew_cover_background_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2639
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const v3, 0x7f020550

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2640
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2641
    const v2, 0x7f0a0085

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2643
    if-ne v0, v1, :cond_5

    .line 2644
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2647
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallBannerCoverView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 2629
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    const/16 v3, 0x77

    invoke-static {v6, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 2631
    :cond_3
    if-ne v5, v2, :cond_6

    .line 2632
    const-string v2, "changed_sview_cover_color"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2633
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "s_vew_cover_background_color"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 2635
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    const/16 v3, 0x77

    invoke-static {v6, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 2646
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallInfoBackground:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public setGuidanceMsgPlaying(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone.auto_answer_memo_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2700
    const-string v1, "isGuidanceMsgPlaying"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2702
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 595
    return-void
.end method

.method public showAnswerMemoRecordingPhoto()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2724
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCardCovered;->setGuidanceMsgPlaying(Z)V

    .line 2727
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020342

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2729
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2730
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    const v1, 0x7f0908eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2731
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2741
    :goto_0
    return-void

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2734
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2736
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2737
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2739
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showGuidancePlayingPhoto()V
    .locals 4

    .prologue
    const v3, 0x7f0908ec

    const/16 v1, 0x82

    const/4 v2, 0x0

    .line 2752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCardCovered;->setGuidanceMsgPlaying(Z)V

    .line 2753
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2755
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationType:I

    .line 2756
    iput v2, p0, Lcom/android/phone/CallCardCovered;->mCurrentAnimationIndex:I

    .line 2758
    :cond_0
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2759
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2760
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    const v1, 0x7f020341

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2761
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsMemoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2763
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 2764
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2765
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mAnsweringMemoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2776
    :cond_2
    :goto_0
    return-void

    .line 2768
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2769
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2770
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPlayingAnsweringMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2772
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2773
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopCallCardAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x8c

    const/16 v2, 0x82

    .line 2399
    const-string v0, "stopCallCardAnimation"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2400
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2406
    :cond_1
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 344
    return-void
.end method

.method updateMemoRecordTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 2873
    const-string v2, "updateMemoRecordTime"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2874
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2875
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2876
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->getRecordTime()J

    move-result-wide v0

    .line 2877
    .local v0, recordTime:J
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2878
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecInfo:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2879
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->memoRecordTime:Landroid/widget/TextView;

    div-long v3, v0, v4

    invoke-static {v3, v4}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2888
    .end local v0           #recordTime:J
    :cond_0
    :goto_0
    return-void

    .line 2882
    .restart local v0       #recordTime:J
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordingMessageLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2883
    iget-object v2, p0, Lcom/android/phone/CallCardCovered;->mRecordTime:Landroid/widget/TextView;

    div-long v3, v0, v4

    invoke-static {v3, v4}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x1

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 607
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 612
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 613
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallScreenActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 614
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 615
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    .line 619
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 620
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 621
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 624
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_9

    .line 626
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v3

    .line 630
    :goto_0
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 631
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-nez v5, :cond_8

    .line 632
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move v5, v0

    move-object v0, v2

    .line 680
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCardCovered;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 682
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 683
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 684
    const-string v6, "clear_cover_enhanced"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 685
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v6, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v6, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 690
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_10

    move v6, v3

    .line 691
    :goto_2
    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 692
    if-eqz v6, :cond_11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v3

    .line 694
    :cond_3
    :goto_3
    if-eqz v5, :cond_13

    if-eqz v6, :cond_13

    .line 695
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 702
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v0

    .line 706
    const-string v1, "CallCardCovered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSms : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz v0, :cond_12

    .line 709
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 710
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :cond_4
    :goto_4
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 759
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_5

    .line 760
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 762
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 763
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 764
    iget-object v1, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 768
    :cond_5
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 769
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 770
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 771
    const v1, 0x7f0a0301

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/RejectCallWithMsgContentCovered;

    .line 772
    if-eqz v0, :cond_6

    .line 773
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getIsAnsweringMessageDisable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 774
    const v2, 0x7f09029b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 775
    if-eqz v1, :cond_6

    .line 776
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->disableAnsweringMessage()V

    .line 792
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 793
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const v1, 0x7f02033a

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 794
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    const/4 v1, 0x2

    const v2, 0x7f02033e

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingCallImageWidget;->setHandleImageResource(II)V

    .line 795
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 796
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 797
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 799
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 800
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v9}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 801
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    .line 823
    :cond_7
    :goto_6
    return-void

    .line 635
    :cond_8
    const-string v5, "visibleMemoRecInfoView1 ="

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move v5, v0

    move-object v0, v2

    goto/16 :goto_1

    .line 640
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_b

    .line 643
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 644
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-nez v0, :cond_a

    .line 645
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    .line 648
    :cond_a
    const-string v0, "visibleMemoRecInfoView2 ="

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    .line 653
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_d

    .line 656
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 657
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v5

    if-nez v5, :cond_c

    .line 658
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    move v5, v4

    goto/16 :goto_1

    .line 661
    :cond_c
    const-string v5, "visibleMemoRecInfoView2 ="

    invoke-direct {p0, v5}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->visibleMemoRecInfoView()V

    move v5, v4

    goto/16 :goto_1

    .line 667
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v0, :cond_e

    .line 673
    :cond_e
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 674
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    :cond_f
    move-object v0, v5

    move v5, v4

    goto/16 :goto_1

    :cond_10
    move v6, v4

    .line 690
    goto/16 :goto_2

    :cond_11
    move v6, v4

    .line 692
    goto/16 :goto_3

    .line 712
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 715
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/phone/CallCardCovered;->okToShowInCallControls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v6, :cond_14

    iget-boolean v5, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-nez v5, :cond_14

    .line 716
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 717
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpaekerMuteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 722
    :cond_14
    const-string v5, "clear_cover_enhanced"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 723
    iget-boolean v5, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-eqz v5, :cond_18

    .line 724
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v5, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 726
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 733
    :goto_7
    if-eqz v0, :cond_15

    .line 734
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 735
    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 736
    iget-boolean v6, p0, Lcom/android/phone/CallCardCovered;->mShowingCallEnd:Z

    if-eqz v6, :cond_19

    if-nez v5, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 739
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 748
    :cond_15
    :goto_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 749
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    .line 755
    :cond_17
    const-string v0, "There are no controls."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 728
    :cond_18
    iget-object v5, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v5, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto :goto_7

    .line 742
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mEndCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v8}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(I)V

    goto :goto_8

    .line 779
    :cond_1a
    if-eqz v0, :cond_1b

    .line 780
    const-string v2, "automatic_answering_machine_kdi"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 781
    const v2, 0x7f09090d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 786
    :cond_1b
    :goto_9
    if-eqz v1, :cond_6

    .line 787
    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent;->enableAnsweringMessage()V

    goto/16 :goto_5

    .line 783
    :cond_1c
    const v2, 0x7f0908e5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 802
    :cond_1d
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 803
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mPhoto:Lcom/android/phone/InCallContactPhoto;

    invoke-virtual {v0, v9}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 804
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showAnswerMemoRecordingPhoto()V

    goto/16 :goto_6

    .line 807
    :cond_1e
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->isGuidanceMsgPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 808
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showGuidancePlayingPhoto()V

    goto/16 :goto_6

    .line 809
    :cond_1f
    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 810
    invoke-virtual {p0}, Lcom/android/phone/CallCardCovered;->showAnswerMemoRecordingPhoto()V

    goto/16 :goto_6

    .line 814
    :cond_20
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mInCallImageWidget:Lcom/android/phone/IncomingCallImageWidget;

    invoke-virtual {v0, v3, v9}, Lcom/android/phone/IncomingCallImageWidget;->setVisibility(II)V

    .line 815
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 816
    const-string v0, "clear_cover_enhanced"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 817
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/phone/CallCardCovered;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_21
    move v5, v4

    goto/16 :goto_1

    :cond_22
    move-object v0, v1

    move v5, v4

    goto/16 :goto_1

    :cond_23
    move v5, v0

    move-object v0, v2

    goto/16 :goto_1

    :cond_24
    move v0, v4

    goto/16 :goto_0
.end method

.method visibleMemoRecInfoView()V
    .locals 2

    .prologue
    .line 2802
    const-string v0, "visibleMemoRecInfoView"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCardCovered;->log(Ljava/lang/String;Z)V

    .line 2803
    invoke-direct {p0}, Lcom/android/phone/CallCardCovered;->showMemoRecInfo()V

    .line 2804
    return-void
.end method
