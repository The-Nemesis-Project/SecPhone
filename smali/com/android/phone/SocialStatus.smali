.class public Lcom/android/phone/SocialStatus;
.super Landroid/widget/FrameLayout;
.source "SocialStatus.java"

# interfaces
.implements Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;


# instance fields
.field private mBirthClosePanel:Landroid/widget/LinearLayout;

.field private mBirthCloseText:Landroid/widget/TextView;

.field private mBirthOpenPanel:Landroid/widget/LinearLayout;

.field private mBirthOpenText:Landroid/widget/TextView;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mHeightClose:F

.field private mHeightOpen:F

.field private mRatio:F

.field private mSnsAnimator:Landroid/widget/RelativeLayout;

.field private mSnsCloseBody:Landroid/widget/TextView;

.field private mSnsCloseContainer:Landroid/widget/RelativeLayout;

.field private mSnsCloseIcon:Landroid/widget/ImageView;

.field private mSnsClosePanel:Landroid/widget/LinearLayout;

.field private mSnsCloseToggleBtn:Landroid/widget/ImageView;

.field private mSnsOpenBody:Landroid/widget/TextView;

.field private mSnsOpenBodyScroll:Landroid/widget/ScrollView;

.field private mSnsOpenContainer:Landroid/widget/LinearLayout;

.field private mSnsOpenIcon:Landroid/widget/ImageView;

.field private mSnsOpenPanel:Landroid/widget/LinearLayout;

.field private mSnsOpenToggleBtn:Landroid/widget/ImageView;

.field private rotate:Landroid/view/animation/RotateAnimation;

.field private trans:Landroid/view/animation/TranslateAnimation;

.field private trans2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 118
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-object p1, p0, Lcom/android/phone/SocialStatus;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SocialStatus;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SocialStatus;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SocialStatus;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SocialStatus;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/16 v2, 0x17a

    .line 129
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 133
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    const v1, 0x7f0a033c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    .line 135
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v1, v2, :cond_2

    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    const-string v1, "SocialStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const v1, 0x7f0a0341

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    .line 141
    const v1, 0x7f0a033d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    .line 142
    const v1, 0x7f0a0342

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenIcon:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f0a0343

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBodyScroll:Landroid/widget/ScrollView;

    .line 144
    const v1, 0x7f0a0344

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBody:Landroid/widget/TextView;

    .line 145
    const v1, 0x7f0a033e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    .line 146
    const v1, 0x7f0a0340

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthOpenText:Landroid/widget/TextView;

    .line 147
    const v1, 0x7f0a0345

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/SocialStatus$1;

    invoke-direct {v2, p0}, Lcom/android/phone/SocialStatus$1;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const v1, 0x7f0a0273

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    .line 157
    const v1, 0x7f0a0277

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    .line 158
    const v1, 0x7f0a0279

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0a0278

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    .line 160
    const v1, 0x7f0a027a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    const v2, 0x7f0202f0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/SocialStatus$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SocialStatus$2;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v1, 0x7f0a0274

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    .line 169
    const v1, 0x7f0a0276

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    .line 170
    return-void

    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v1, v2

    .line 136
    goto/16 :goto_0
.end method

.method private updateAdditionalInformation(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .locals 10
    .parameter "additionalCallerInfo"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 287
    const-string v3, "SocialStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInformation : additionalCallerInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :goto_0
    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 308
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v0, v7

    .line 311
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 314
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v1, v3, v4

    .line 316
    .local v1, remainedDays:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v1           #remainedDays:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_1
    return-void

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateAdditionalInformationTablet(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .locals 9
    .parameter "additionalCallerInfo"

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 328
    const-string v3, "SocialStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInformationTablet : additionalCallerInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :goto_0
    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 343
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v0, v7

    .line 346
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 349
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v1, v3, v4

    .line 351
    .local v1, remainedDays:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v1           #remainedDays:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_1
    return-void

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public closeSocialStatus()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f0202ef

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    .line 243
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 247
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x4334

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    .line 249
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/SocialStatus$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SocialStatus$4;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 124
    invoke-direct {p0}, Lcom/android/phone/SocialStatus;->init()V

    .line 125
    return-void
.end method

.method public onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .locals 3
    .parameter "additionalCallerInfo"

    .prologue
    .line 277
    const-string v0, "SocialStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete : additionalCallerInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 279
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/SocialStatus;->updateAdditionalInformation(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/SocialStatus;->updateAdditionalInformationTablet(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    goto :goto_0
.end method

.method public openSocialStatus()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v3, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f0202f0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    .line 194
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    .line 195
    const/high16 v0, 0x3f80

    iget v3, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    .line 196
    const-string v0, "SocialStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeightOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightOpen:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mHeightClose: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mHeightClose:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mSnsAnimator.getHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mSnsCloseContainer.getHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/android/phone/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    .line 205
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 209
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x4334

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    .line 211
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/SocialStatus$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SocialStatus$3;-><init>(Lcom/android/phone/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    :cond_0
    return-void
.end method

.method public resetSocialStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 177
    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSocialStatusLayout(Z)V
    .locals 13
    .parameter "isDialing"

    .prologue
    .line 363
    const-string v10, "SocialStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isDialing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, container_Left:I
    const/4 v4, 0x0

    .line 368
    .local v4, container_Top:I
    const/4 v8, 0x0

    .line 369
    .local v8, snsClose_Top:I
    const/4 v5, 0x0

    .line 370
    .local v5, layoutAnchor:I
    const/4 v6, 0x0

    .line 372
    .local v6, mSnsClosePanelGravity:I
    const/4 v7, 0x0

    .line 373
    .local v7, orientation:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 375
    .local v1, configuration:Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 376
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 377
    const-string v10, "SocialStatus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "orientation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 380
    :cond_0
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 382
    .local v2, containerLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .local v9, snsLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 387
    .local v0, birthdayLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e024e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e003d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 391
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :goto_0
    return-void

    .line 395
    :cond_1
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    const/4 v10, 0x1

    if-ne p1, v10, :cond_2

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01f9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01f8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01fb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 400
    const/4 v5, 0x0

    .line 401
    const/4 v6, 0x3

    .line 417
    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v4, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 418
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    const/16 v10, 0xe

    invoke-virtual {v9, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 422
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 425
    const/16 v10, 0xe

    invoke-virtual {v0, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 426
    iget-object v10, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 404
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01f7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    .line 406
    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01e6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e003c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v4, v10

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e003b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v3, v10

    .line 412
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01fa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    .line 413
    const/4 v5, 0x1

    .line 414
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public updateSocialStatusLayoutForVT(Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "call"

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    .line 434
    .local v5, isDialing:Z
    const-string v9, "SocialStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSocialStatusLayoutForVT... isDialing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, container_Left:I
    const/4 v4, 0x0

    .line 440
    .local v4, container_Top:I
    const/4 v7, 0x0

    .line 442
    .local v7, snsClose_Top:I
    const/4 v6, 0x0

    .line 443
    .local v6, orientation:I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 445
    .local v1, configuration:Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 446
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    .line 447
    const-string v9, "SocialStatus"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "orientation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 450
    :cond_0
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 452
    .local v2, containerLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .local v8, snsLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 457
    .local v0, birthdayLP:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e009a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e003f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 461
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    :goto_0
    return-void

    .line 465
    :cond_1
    if-eqz v5, :cond_4

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e010e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 470
    :goto_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 471
    :cond_2
    if-eqz v5, :cond_5

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e029c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    .line 482
    :goto_2
    const/4 v9, 0x2

    if-ne v6, v9, :cond_a

    .line 483
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 484
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0113

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 485
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0106

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    .line 492
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e01fb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    .line 502
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v4, v9

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v3, v9

    .line 505
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 506
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 509
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 510
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 513
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 514
    iget-object v9, p0, Lcom/android/phone/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 468
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 474
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e029b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    goto/16 :goto_2

    .line 476
    :cond_6
    if-eqz v5, :cond_7

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e029a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    goto/16 :goto_2

    .line 479
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0299

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    goto/16 :goto_2

    .line 487
    :cond_8
    if-eqz v5, :cond_9

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e00fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    goto/16 :goto_3

    .line 490
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0103

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    goto/16 :goto_3

    .line 494
    :cond_a
    if-nez v5, :cond_b

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 495
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e00e0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    .line 499
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e01fa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    goto/16 :goto_4

    .line 497
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e00e4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    goto :goto_5
.end method
