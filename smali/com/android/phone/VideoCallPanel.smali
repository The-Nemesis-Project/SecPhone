.class public Lcom/android/phone/VideoCallPanel;
.super Landroid/widget/RelativeLayout;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VideoCallPanel$10;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;,
        Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;,
        Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field private static mXMoveStart:I

.field private static mYMoveStart:I

.field private static sMe:Lcom/android/phone/VideoCallPanel;


# instance fields
.field private INTENT_ACTION_MAIN:Ljava/lang/String;

.field private cameraEngine:Lcom/android/phone/CameraEngine;

.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field inIMSCallState:Lcom/android/phone/InIMSCallState;

.field private isBigSurfacePressed:Z

.field private isBigSurfaceReleased:Z

.field private isSPenMoved:Z

.field private isSmallSurfacePressed:Z

.field private isSmallSurfaceReleased:Z

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCameraPreview:Landroid/view/TextureView;

.field private mCameraSurface:Landroid/graphics/SurfaceTexture;

.field private mCameraViewAlternativeImageItems:[Ljava/lang/String;

.field private mCameraViewDefaultImageItem:[Ljava/lang/String;

.field private mCameraViewItems:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field private mCurrPtX:F

.field private mCurrPtY:F

.field mCurrentOrientation:I

.field private mDensity:F

.field private mFarEndAnimator:Landroid/widget/ImageView;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field mFarEndviewHeight:I

.field mFarEndviewMarginBottom:I

.field mFarEndviewQCIFHeight:I

.field mFarEndviewQCIFMarginLeft:I

.field mFarEndviewQCIFMarginTop:I

.field mFarEndviewQCIFWidth:I

.field mFarEndviewWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHideMeImage:Landroid/widget/ImageView;

.field mIncomingPreviewMarginTop:I

.field private mIsMediaLoopback:Z

.field private mIsPreparingDisplayAnim:Z

.field private mMenuDialog:Landroid/app/AlertDialog;

.field mMw4x3FarEndviewWidth:I

.field mMwFarEndviewHeight:I

.field mMwFarEndviewQCIFHeight:I

.field mMwFarEndviewQCIFWidth:I

.field mMwFarEndviewWidth:I

.field mMwPreviewHeight:I

.field mMwPreviewOutgoingHeight:I

.field mMwPreviewOutgoingWidth:I

.field mMwPreviewQCIFHeight:I

.field mMwPreviewQCIFWidth:I

.field mMwPreviewWidth:I

.field private mNearEndAnimator:Landroid/widget/ImageView;

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreparingDisplayImageView:Landroid/widget/ImageView;

.field private mPreparingImageAnimator:Landroid/widget/RelativeLayout;

.field private mPrevPtX:F

.field private mPrevPtY:F

.field mPreviewHeight:I

.field mPreviewIncomingHeight:I

.field mPreviewIncomingWidth:I

.field mPreviewMarginBottom:I

.field mPreviewMarginLeft:I

.field mPreviewOutgoingHeight:I

.field mPreviewOutgoingWidth:I

.field mPreviewQCIFHeight:I

.field mPreviewQCIFIncomingHeight:I

.field mPreviewQCIFIncomingWidth:I

.field mPreviewQCIFMarginBottom:I

.field mPreviewQCIFMarginLeft:I

.field mPreviewQCIFWidth:I

.field mPreviewWidth:I

.field private mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

.field private mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private mTextBitrate:Landroid/widget/TextView;

.field private mVideoCallManager:Lcom/android/phone/VideoCallManager;

.field private mVideoCallPanel:Landroid/view/ViewGroup;

.field private mVideoViewItems:[Ljava/lang/String;

.field private mZoomControl:Lcom/android/phone/ZoomControlBar;

.field private mZoomMax:I

.field private mZoomValue:I

.field private prepareVideoText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    .line 146
    sput v2, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 147
    sput v2, Lcom/android/phone/VideoCallPanel;->mXMoveStart:I

    .line 148
    sput v2, Lcom/android/phone/VideoCallPanel;->mYMoveStart:I

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 423
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 134
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 141
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 142
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 143
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 144
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 151
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 159
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 160
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 179
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 180
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingWidth:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingHeight:I

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 191
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 192
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingWidth:I

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingHeight:I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFWidth:I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFHeight:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFWidth:I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFHeight:I

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMw4x3FarEndviewWidth:I

    .line 216
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 219
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2201
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 424
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 425
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 426
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 430
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 141
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 142
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 143
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 144
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 151
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 159
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 160
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 179
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 180
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingWidth:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingHeight:I

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 191
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 192
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingWidth:I

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingHeight:I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFWidth:I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFHeight:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFWidth:I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFHeight:I

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMw4x3FarEndviewWidth:I

    .line 216
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 219
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2201
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 431
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 432
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 433
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0e0021

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 437
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 141
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 142
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 143
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 144
    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 151
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 159
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 160
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    .line 179
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 180
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingWidth:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingHeight:I

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    .line 191
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 192
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingWidth:I

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingHeight:I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFWidth:I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFHeight:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFWidth:I

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFHeight:I

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mMw4x3FarEndviewWidth:I

    .line 216
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    .line 219
    const-string v0, "com.lguplus.mediashare.action.main"

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/android/phone/VideoCallPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallPanel$1;-><init>(Lcom/android/phone/VideoCallPanel;)V

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    .line 2201
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 438
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 439
    sput-object p0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    .line 440
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VideoCallPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->dialogMenuSelected(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/VideoCallPanel;Landroid/view/View;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/VideoCallPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->handleCameraStartFail()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/VideoCallPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/VideoCallPanel;)Landroid/view/TextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    return-object v0
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1952
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 1955
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    .line 1956
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 1957
    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 1958
    const-string v4, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory Size Avialable is in Kb : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    if-eqz p1, :cond_2

    .line 1960
    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1964
    goto :goto_0

    .line 1967
    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 1970
    goto :goto_0
.end method

.method private createTextureViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xb

    const/4 v6, 0x2

    const/16 v5, 0xa

    const/16 v4, 0x9

    .line 611
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "createTextureViews()"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 613
    :cond_0
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 616
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 624
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-nez v2, :cond_3

    .line 625
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 626
    .local v1, farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v2, v6, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 628
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 629
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 630
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 631
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 640
    :goto_1
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 641
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 644
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 645
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    new-instance v3, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 648
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 652
    .end local v1           #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-nez v2, :cond_5

    .line 653
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 654
    .local v0, cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v2, v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 656
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 657
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 662
    :goto_2
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 663
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 665
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 666
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v3, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v3, p0, v8}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 668
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5

    .line 669
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 672
    .end local v0           #cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    return-void

    .line 618
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    goto/16 :goto_0

    .line 633
    .restart local v1       #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 634
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 637
    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 638
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 659
    .end local v1           #farEndViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0       #cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 660
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2
.end method

.method private destroyTextureViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "destroyTextureViews()"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 690
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    .line 694
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 696
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 697
    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 699
    :cond_4
    return-void
.end method

.method private dialogMenuSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 1923
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1924
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1926
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogMenuSelected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1928
    :cond_0
    aget-object v2, v1, p1

    const v3, 0x7f0903eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    .line 1940
    :cond_1
    :goto_0
    return-void

    .line 1930
    :cond_2
    aget-object v2, v1, p1

    const v3, 0x7f090445

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->captureSurfaceImage(Z)V

    goto :goto_0

    .line 1932
    :cond_3
    aget-object v2, v1, p1

    const v3, 0x7f0903f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1933
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 1934
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_0

    .line 1935
    :cond_4
    aget-object v2, v1, p1

    const v3, 0x7f0903ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1936
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->onClickSwitchCamera()V

    goto :goto_0

    .line 1937
    :cond_5
    aget-object v1, v1, p1

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->showAlternativeImageDialog()V

    goto :goto_0
.end method

.method private dismissMenuDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1853
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1854
    const-string v0, "dismissMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1856
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1857
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1859
    :cond_0
    return-void
.end method

.method private fillArrays()V
    .locals 7

    .prologue
    const v6, 0x7f0903f9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1833
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1834
    new-array v1, v4, [Ljava/lang/String;

    const v2, 0x7f0903eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 1835
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0903ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0903f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 1836
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f090445

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 1837
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 1838
    return-void
.end method

.method static getInstance()Lcom/android/phone/VideoCallPanel;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/android/phone/VideoCallPanel;->sMe:Lcom/android/phone/VideoCallPanel;

    return-object v0
.end method

.method private handleCameraStartFail()V
    .locals 3

    .prologue
    .line 1943
    const-string v0, "handleCameraStartFail..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1944
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090527

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1947
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    .line 1948
    return-void
.end method

.method private hidePreparingDisplayAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2249
    const-string v0, "hidePreparingDisplayAnim"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2250
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2255
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 2256
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2257
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2258
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2260
    return-void
.end method

.method private initializeCameraParams()V
    .locals 3

    .prologue
    .line 1176
    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1190
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1197
    :cond_0
    :goto_1
    return-void

    .line 1181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Preview Sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " negotiated width= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->setFpsRange()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting Camera preview size/fps exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported Preview sizes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1135
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1136
    const-string v0, "initializeZoom, mParameters == null"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1151
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    .line 1148
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControl;->setZoomMax(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomIndex(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    new-instance v1, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControl;->setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2416
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2420
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    return-void
.end method

.method private onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1160
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    .line 1163
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1167
    :cond_0
    return-void
.end method

.method private openCamera(I)Z
    .locals 4
    .parameter

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x0

    .line 873
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 874
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v2

    sget-object v3, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 876
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result p1

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoCallManager.getBackCameraId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 881
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1, p1}, Lcom/android/phone/VideoCallManager;->openCamera(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 884
    :goto_0
    return v0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera device, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetArrays()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1841
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    .line 1842
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    .line 1843
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    .line 1844
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    .line 1845
    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1846
    return-void
.end method

.method private resizeCameraPreview(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1247
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    .line 1248
    const-string v0, "resizeCameraPreview"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera view width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1252
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1254
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1255
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1256
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    :cond_1
    :goto_0
    return-void

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 1261
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1262
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1264
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1266
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1267
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1268
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1274
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1275
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v3, v6, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1277
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1278
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1279
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1280
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1290
    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1291
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    .line 1292
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1293
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1295
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1296
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1297
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1298
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1299
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1300
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1421
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1270
    :cond_6
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1271
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1282
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1283
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1285
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1286
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1287
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1301
    :cond_8
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v1, v6, :cond_5

    .line 1302
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1303
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 1307
    :cond_9
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1308
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1310
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1311
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1312
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1313
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1314
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1316
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1317
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1319
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1320
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1321
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1322
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1325
    :cond_b
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v6, :cond_f

    .line 1326
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_d

    .line 1327
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1328
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1329
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1331
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1334
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1336
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1338
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1339
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1342
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_5

    .line 1343
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1344
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1345
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1347
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1348
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1356
    :cond_11
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1357
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1358
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1359
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1360
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1362
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1363
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1365
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1366
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1368
    :cond_13
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v2, v6, :cond_16

    .line 1369
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_14

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1370
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1371
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1373
    :cond_15
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1374
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3

    .line 1377
    :cond_16
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1378
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1379
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 1382
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_18

    .line 1383
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1384
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1390
    :goto_4
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 1387
    :cond_18
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1388
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 1394
    :cond_19
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v2, v6, :cond_1a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1396
    :cond_1a
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1397
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1402
    :goto_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1403
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1404
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1405
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1406
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1407
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 1399
    :cond_1c
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1400
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_5

    .line 1410
    :cond_1d
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1411
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1412
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1414
    :cond_1e
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1415
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1416
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_3
.end method

.method private resizeFarEndView(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1433
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    .line 1434
    const-string v0, "resizeFarEndView"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videocall pandel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1438
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1440
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1441
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1442
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    :cond_1
    :goto_0
    return-void

    .line 1445
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 1447
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1449
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1451
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1452
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1453
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1459
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1460
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1462
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1463
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1464
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1465
    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1474
    :goto_2
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1475
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1476
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1477
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1478
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1479
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1526
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1527
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1455
    :cond_6
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1456
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .line 1467
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1468
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 1471
    :cond_8
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1472
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_2

    .line 1482
    :cond_9
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1483
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1484
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1485
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 1487
    :cond_a
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1488
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1489
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1493
    :cond_b
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v2, v3, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1495
    :cond_c
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1496
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1501
    :goto_4
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1502
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1503
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1504
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1505
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1506
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 1498
    :cond_e
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1499
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    .line 1509
    :cond_f
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1510
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1511
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1513
    :cond_10
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v1, v3, :cond_11

    .line 1514
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1515
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1516
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 1518
    :cond_11
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1519
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1520
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3
.end method

.method private restartCameraPreview(Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 2325
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 2326
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isActiveIMSVideoCall:Z

    if-nez v0, :cond_1

    .line 2327
    const-string v0, "restartCameraPreview..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2328
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/InIMSCallState;->isActiveIMSVideoCall:Z

    .line 2329
    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->setCameraPreviewVisibility(I)V

    .line 2330
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 2338
    :cond_0
    :goto_0
    return-void

    .line 2332
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->setCameraPreviewVisibility(I)V

    goto :goto_0

    .line 2336
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/InIMSCallState;->isActiveIMSVideoCall:Z

    goto :goto_0
.end method

.method private setAnimatorLayout()V
    .locals 3

    .prologue
    .line 2114
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setAnimatorLayout"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2115
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2116
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2118
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2119
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2120
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2121
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2123
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2125
    return-void
.end method

.method private setCamera(Z)V
    .locals 4
    .parameter

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    .line 2311
    const-string v1, "VideoCallPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCamera] CameraState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bStartCAM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    if-eqz p1, :cond_2

    .line 2313
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isRunningCamera:Z

    if-nez v0, :cond_1

    .line 2314
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 2322
    :cond_1
    :goto_0
    return-void

    .line 2317
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v0, v1, :cond_1

    .line 2318
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 2319
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    goto :goto_0
.end method

.method private setIncomingHideMeImageLayout(ZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f020207

    const/4 v5, 0x0

    .line 1544
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1545
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1546
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1548
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1550
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1551
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1552
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1554
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1556
    if-eqz p1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1574
    :goto_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    :goto_1
    return-void

    .line 1559
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const v2, 0x7f0202b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1561
    :cond_1
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1562
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1564
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1565
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1566
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1568
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1569
    if-eqz p1, :cond_2

    .line 1570
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 1572
    :cond_2
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1577
    :cond_3
    if-eqz p1, :cond_4

    .line 1578
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 1580
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private showMemoryFullDialog()V
    .locals 3

    .prologue
    .line 1893
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showMemoryFullDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1895
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1897
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1900
    const v1, 0x7f09041a

    new-instance v2, Lcom/android/phone/VideoCallPanel$6;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$6;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1907
    const v1, 0x7f0901da

    new-instance v2, Lcom/android/phone/VideoCallPanel$7;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$7;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1912
    new-instance v1, Lcom/android/phone/VideoCallPanel$8;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$8;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1919
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1920
    return-void
.end method

.method private showMenuDialog(I[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1862
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1864
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1866
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1868
    new-instance v1, Lcom/android/phone/VideoCallPanel$3;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$3;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1874
    const v1, 0x7f090025

    new-instance v2, Lcom/android/phone/VideoCallPanel$4;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$4;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1879
    new-instance v1, Lcom/android/phone/VideoCallPanel$5;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$5;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1885
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    .line 1887
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1888
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1889
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1890
    return-void
.end method

.method private showPreparingDisplayAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2236
    const-string v0, "showPreparingDisplayAnim"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2237
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v0, :cond_0

    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 2239
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2240
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2242
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 2244
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2246
    :cond_0
    return-void
.end method

.method private showVS(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1690
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    .line 1691
    const-string v0, "Show video share ui"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1693
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1694
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_1

    .line 1695
    const-string v0, "Video Share type : CALL_TYPE_VS_TX"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v0

    sget-object v1, Lcom/samsung/commonimsinterface/imscommon/CameraState;->CAMERA_CLOSED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-eq v0, v1, :cond_4

    .line 1699
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1701
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1706
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1707
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1725
    :cond_4
    :goto_0
    return-void

    .line 1709
    :cond_5
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_0

    .line 1712
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1713
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_7

    .line 1714
    const-string v0, "Video Share type : CALL_TYPE_VS_RX"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1716
    :cond_7
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1717
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1718
    :cond_8
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9

    .line 1720
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1721
    :cond_9
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1723
    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    goto :goto_0
.end method

.method private showVT()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1728
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    .line 1729
    const-string v0, "Show video telephony ui"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1731
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1732
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 1736
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1738
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1739
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 1740
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1741
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    .line 1744
    :cond_3
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1745
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1746
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayoutForMultiWindow()V

    .line 1754
    :goto_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1755
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1757
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isQcifDialerOpened()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1758
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 1759
    invoke-virtual {p0, v3}, Lcom/android/phone/VideoCallPanel;->setQcifDialerOpened(Z)V

    .line 1770
    :cond_4
    :goto_2
    return-void

    .line 1734
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showPreparingDisplayAnim()V

    goto :goto_0

    .line 1748
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayout()V

    goto :goto_1

    .line 1750
    :cond_7
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1751
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 1760
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isQcifDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1761
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 1762
    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->setQcifDialerOpened(Z)V

    goto :goto_2

    .line 1765
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/phone/VideoCallPanel;->setQcifDialerOpened(Z)V

    goto :goto_2

    .line 1768
    :cond_a
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V

    .line 895
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startViewAnimation(Landroid/view/View;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2204
    if-eqz p1, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startViewAnimation. alpha value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2207
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2208
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2209
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSwitchedViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2213
    :goto_0
    return-void

    .line 2211
    :cond_0
    const-string v0, "startViewAnimation..View is NULL"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private swapVideoSurface(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x320

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, -0x100

    .line 2071
    const-string v0, "swapVideoSurface"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2072
    if-eqz p1, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->setAnimatorLayout()V

    .line 2074
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2075
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2076
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2077
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2078
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    .line 2079
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/phone/VideoCallPanel;->startViewAnimation(Landroid/view/View;II)V

    .line 2081
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/VideoCallPanel$9;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$9;-><init>(Lcom/android/phone/VideoCallPanel;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2088
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2093
    :goto_0
    return-void

    .line 2091
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    goto :goto_0
.end method

.method private swipeVideoSurfaces()V
    .locals 2

    .prologue
    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swipeVideoSurfaces...isSurfaceSwiped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2098
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 2111
    :goto_0
    return-void

    .line 2101
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setSurfaceViewSwipe(Z)V

    .line 2107
    :goto_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayoutForMultiWindow()V

    goto :goto_0

    .line 2104
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setSurfaceViewSwipe(Z)V

    goto :goto_1

    .line 2110
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateSurfaceViewLayout()V

    goto :goto_0
.end method

.method private switchCamera(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput p1, v0, Lcom/android/phone/InIMSCallState;->mCameraId:I

    .line 1539
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/VtInCallButtonsView;->mIsSwitchCameraClicked:Z

    .line 1540
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->switchCamera()V

    .line 1541
    return-void
.end method

.method private updateSurfaceViewLayout()V
    .locals 2

    .prologue
    .line 1773
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurfaceViewLayout...isSurfaceSwiped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1776
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1777
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1778
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1779
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1796
    :goto_0
    return-void

    .line 1781
    :cond_2
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1782
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1783
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1786
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1787
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1788
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1789
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1791
    :cond_4
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1792
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1793
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateSurfaceViewLayoutForMultiWindow()V
    .locals 2

    .prologue
    .line 1799
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSurfaceViewLayoutForMultiWindow...isSurfaceSwiped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1801
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1802
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1803
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1804
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1805
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1826
    :goto_0
    return-void

    .line 1807
    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1808
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMw4x3FarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1812
    :goto_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1813
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1810
    :cond_3
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_1

    .line 1816
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1817
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1818
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewQCIFHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1819
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    .line 1821
    :cond_5
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 1822
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 1823
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateVtIncallButton()V
    .locals 2

    .prologue
    .line 1667
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1669
    :cond_0
    return-void
.end method


# virtual methods
.method public MediashareStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 2218
    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iget-boolean v2, v2, Lcom/android/phone/InVTCallState;->isMediaShareEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2219
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->INTENT_ACTION_MAIN:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2222
    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2223
    if-eqz v1, :cond_0

    .line 2224
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2226
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "*23#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2227
    const-string v1, "*23#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2228
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2229
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 2230
    const-string v0, "participants"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2231
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2233
    :cond_2
    return-void
.end method

.method public callDismissMenuDialog()V
    .locals 0

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 1850
    return-void
.end method

.method public captureSurfaceImage(Z)V
    .locals 4
    .parameter "isNearEnd"

    .prologue
    const/4 v1, 0x0

    .line 1641
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1642
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1643
    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->setShowMe(Z)V

    .line 1644
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/VideoCallManager;->captureSurfaceImage(Z)V

    .line 1648
    if-nez p1, :cond_1

    .line 1649
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/VideoCallPanel$2;

    invoke-direct {v1, p0}, Lcom/android/phone/VideoCallPanel$2;-><init>(Lcom/android/phone/VideoCallPanel;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1665
    :cond_1
    :goto_0
    return-void

    .line 1663
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showMemoryFullDialog()V

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->closeCamera()V

    .line 909
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 2128
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2129
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2198
    :goto_0
    return v0

    .line 2132
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2135
    invoke-virtual {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->getTouchedSurfaceArea(FF)I

    move-result v4

    .line 2137
    packed-switch v1, :pswitch_data_0

    .line 2193
    const-string v0, "VideoCallPanel"

    const-string v1, "Default Case!!Doing Nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2139
    :pswitch_0
    if-ne v4, v5, :cond_2

    .line 2140
    const-string v0, "VideoCallPanel"

    const-string v1, "MotionEvent.ACTION_DOWN Small surface pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    goto :goto_1

    .line 2142
    :cond_2
    if-ne v4, v7, :cond_1

    .line 2143
    const-string v0, "VideoCallPanel"

    const-string v1, "MotionEvent.ACTION_DOWN Big surface pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    goto :goto_1

    .line 2150
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 2151
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    .line 2152
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    .line 2153
    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    .line 2154
    iput v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    .line 2155
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtX:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 2156
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrPtY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPrevPtY:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 2157
    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    cmpg-float v1, v2, v6

    if-gez v1, :cond_3

    .line 2158
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    .line 2159
    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSPenMoved:Z

    if-eqz v1, :cond_4

    .line 2160
    sget v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 2161
    :cond_4
    sget v1, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    sget v1, Lcom/android/phone/VideoCallPanel;->mXMoveStart:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v8, :cond_1

    sget v1, Lcom/android/phone/VideoCallPanel;->mYMoveStart:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v8, :cond_1

    .line 2163
    sput-boolean v0, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    goto :goto_1

    .line 2169
    :pswitch_2
    sput-boolean v5, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    .line 2170
    sput v0, Lcom/android/phone/VideoCallPanel;->mLongPressMoveCount:I

    .line 2172
    if-ne v4, v5, :cond_9

    .line 2173
    const-string v1, "VideoCallPanel"

    const-string v2, "MotionEvent.ACTION_UP Small surface released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 2179
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v1, :cond_8

    .line 2180
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    if-nez v1, :cond_7

    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    if-eqz v1, :cond_8

    .line 2182
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/phone/VideoCallPanel;->swapVideoSurface(Z)V

    .line 2186
    :cond_8
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfacePressed:Z

    .line 2187
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfacePressed:Z

    .line 2188
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isSmallSurfaceReleased:Z

    .line 2189
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    goto/16 :goto_1

    .line 2175
    :cond_9
    if-ne v4, v7, :cond_5

    .line 2176
    const-string v1, "VideoCallPanel"

    const-string v2, "MotionEvent.ACTION_UP Big surface released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iput-boolean v5, p0, Lcom/android/phone/VideoCallPanel;->isBigSurfaceReleased:Z

    goto :goto_2

    .line 2137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public displayFpsAndBitrate()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 2424
    const-string v0, "VideoCallPanel"

    const-string v1, "displayFpsAndBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sent_fps_rate.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2428
    new-instance v3, Ljava/io/File;

    const-string v1, "/sdcard/received_fps_rate.txt"

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2430
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2434
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 2436
    :try_start_1
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, finSentValue : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 2439
    const-string v1, "VideoCallPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayFpsAndBitrate, ch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2456
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 2457
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2459
    if-eqz v2, :cond_0

    .line 2461
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2467
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 2469
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2476
    :cond_1
    :goto_3
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display fps and bitrate strContent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2479
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2480
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    const-string v1, ";"

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    move v0, v4

    .line 2482
    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 2483
    aget-object v2, v1, v0

    const-string v6, "="

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2484
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 2485
    aget-object v6, v2, v4

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2443
    :cond_3
    :try_start_5
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2447
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2449
    :try_start_6
    const-string v0, "VideoCallPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, finReceivedValue : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :goto_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_4

    .line 2452
    const-string v3, "VideoCallPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayFpsAndBitrate, ch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2456
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 2455
    :cond_4
    const-string v0, "VideoCallPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayFpsAndBitrate, strContent : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2459
    if-eqz v2, :cond_5

    .line 2461
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2467
    :cond_5
    :goto_6
    if-eqz v1, :cond_1

    .line 2469
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .line 2470
    :catch_2
    move-exception v0

    .line 2471
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 2462
    :catch_3
    move-exception v0

    .line 2463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 2462
    :catch_4
    move-exception v0

    .line 2463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 2470
    :catch_5
    move-exception v0

    .line 2471
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 2459
    :catchall_0
    move-exception v0

    move-object v2, v5

    :goto_7
    if-eqz v2, :cond_6

    .line 2461
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2467
    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    .line 2469
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 2472
    :cond_7
    :goto_9
    throw v0

    .line 2462
    :catch_6
    move-exception v1

    .line 2463
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 2470
    :catch_7
    move-exception v1

    .line 2471
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 2490
    :cond_8
    const-string v0, "receivedfps"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2491
    const-string v1, "receivedbitrate"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2492
    const-string v2, "sentfps"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2493
    const-string v6, "sentbitrate"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 2497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "fps/ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fps/ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2500
    :goto_a
    const-string v1, "VideoCallPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display fps and bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2503
    const-string v1, "VideoCallPanel"

    const-string v2, "set mTextBitrate VISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2507
    :cond_9
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2508
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2509
    return-void

    .line 2459
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_7

    .line 2456
    :catch_8
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto/16 :goto_1

    :cond_a
    move-object v0, v5

    goto :goto_a
.end method

.method protected getInitialialCameraID()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 857
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v1, v1, Lcom/android/phone/InIMSCallState;->mCameraId:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v1, v1, Lcom/android/phone/InIMSCallState;->mCameraId:I

    if-eqz v1, :cond_0

    .line 860
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v0, v0, Lcom/android/phone/InIMSCallState;->mCameraId:I

    goto :goto_0
.end method

.method public getTouchedSurfaceArea(FF)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1977
    const/4 v2, 0x0

    .line 1980
    sget-boolean v3, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v3, :cond_0

    .line 1981
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTouchedSurface x["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] y["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-nez v3, :cond_3

    :cond_1
    move v0, v2

    .line 2066
    :cond_2
    :goto_0
    return v0

    .line 1989
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1991
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is swiped :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v3, v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1994
    :cond_4
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    .line 1995
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    .line 1996
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    .line 1997
    iget-object v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    .line 2018
    :goto_1
    cmpg-float v7, v6, p1

    if-gtz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_8

    cmpg-float v6, v5, p2

    if-gtz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_8

    .line 2019
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_2

    .line 2020
    const-string v1, "VideoCallPanel"

    const-string v2, "getTouchedSurface BIG_SURFACE_AREA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1998
    :cond_5
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v0, :cond_7

    .line 1999
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2000
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    int-to-float v6, v3

    .line 2001
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    add-int/2addr v3, v4

    int-to-float v5, v3

    .line 2002
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    int-to-float v3, v3

    .line 2003
    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    int-to-float v4, v4

    goto :goto_1

    .line 2006
    :cond_6
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    .line 2008
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    move v6, v4

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1

    .line 2010
    :cond_7
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2011
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    .line 2012
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    .line 2013
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    .line 2014
    iget-object v4, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    goto/16 :goto_1

    .line 2022
    :cond_8
    cmpg-float v0, v3, p1

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_a

    cmpg-float v0, v4, p2

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_a

    .line 2023
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_9

    .line 2024
    const-string v0, "VideoCallPanel"

    const-string v2, "getTouchedSurface SMALL_SURFACE_AREA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v0, v1

    .line 2025
    goto/16 :goto_0

    .line 2027
    :cond_a
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_12

    .line 2028
    const-string v0, "VideoCallPanel"

    const-string v1, "getTouchedSurface NO_SURFACE_AREA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    .line 2032
    :cond_b
    const-string v3, "VideoCallPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is swiped else block :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-eq v3, v1, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2034
    :cond_c
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    .line 2035
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    .line 2036
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    .line 2037
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    .line 2052
    :goto_2
    cmpg-float v7, v6, p1

    if-gtz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_f

    cmpg-float v6, v5, p2

    if-gtz v6, :cond_f

    iget-object v6, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_f

    .line 2053
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_2

    .line 2054
    const-string v1, "VideoCallPanel"

    const-string v2, "getTouchedSurface SMALL_SURFACE_AREA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2038
    :cond_d
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    if-ne v3, v0, :cond_13

    .line 2039
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2040
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFMarginLeft:I

    int-to-float v6, v3

    .line 2041
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    iget v4, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFHeight:I

    add-int/2addr v3, v4

    int-to-float v5, v3

    .line 2042
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginLeft:I

    int-to-float v4, v3

    .line 2043
    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewQCIFMarginTop:I

    int-to-float v3, v3

    goto :goto_2

    .line 2046
    :cond_e
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    .line 2048
    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    move v6, v4

    goto :goto_2

    .line 2056
    :cond_f
    cmpg-float v0, v4, p1

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    cmpg-float v0, v3, p2

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_11

    .line 2057
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_10

    .line 2058
    const-string v0, "VideoCallPanel"

    const-string v2, "getTouchedSurface BIG_SURFACE_AREA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v0, v1

    .line 2059
    goto/16 :goto_0

    .line 2061
    :cond_11
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_12

    .line 2062
    const-string v0, "VideoCallPanel"

    const-string v1, "getTouchedSurface NO_SURFACE_AREA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v0, v2

    goto/16 :goto_0

    :cond_13
    move v3, v4

    move v5, v4

    move v6, v4

    goto/16 :goto_2

    :cond_14
    move v3, v4

    move v5, v4

    move v6, v4

    goto/16 :goto_1
.end method

.method protected holdVideo()V
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->holdVideo()V

    .line 1687
    :cond_0
    return-void
.end method

.method protected initializeCamera()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->getInitialialCameraID()I

    move-result v1

    .line 831
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing camera ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 834
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 836
    if-ne v1, v0, :cond_1

    .line 837
    const/4 v0, 0x0

    .line 842
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 854
    :goto_0
    return-void

    :cond_2
    move v0, v1

    .line 846
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeZoom()V

    .line 847
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    .line 849
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput v0, v1, Lcom/android/phone/InIMSCallState;->mCameraId:I

    .line 850
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->setInitialCameraOrientation()V

    .line 853
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->startPreview()V

    goto :goto_0
.end method

.method protected isCameraPreviewVisible()Z
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isQcifDialerOpened()Z
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isQcifDialerOpened:Z

    return v0
.end method

.method protected isShowMe()Z
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    return v0
.end method

.method protected isSurfaceViewSwiped()Z
    .locals 1

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget-boolean v0, v0, Lcom/android/phone/InIMSCallState;->isSurfaceViewSwiped:Z

    return v0
.end method

.method public onCallDisconnect()V
    .locals 7

    .prologue
    const/16 v6, 0x3f2

    const/16 v3, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 719
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onCallDisconnect"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 720
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 721
    invoke-virtual {p0, v4}, Lcom/android/phone/VideoCallPanel;->setQcifDialerOpened(Z)V

    .line 722
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v4, v2, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 723
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 725
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, v4}, Lcom/android/phone/VideoCallManager;->setIsMediaReadyToReceivePreview(Z)V

    .line 739
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_4

    .line 740
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 741
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 744
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->dismissMenuDialog()V

    .line 745
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->resetArrays()V

    .line 747
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 750
    .local v0, bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v2, :cond_5

    .line 751
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 754
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 756
    :cond_6
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 757
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 762
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_7

    .line 763
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 766
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/phone/VideoCallPanel;->setSurfaceViewSwipe(Z)V

    .line 769
    .end local v0           #bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 770
    invoke-direct {p0, v4}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    .line 771
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->destroyTextureViews()V

    .line 773
    :cond_9
    return-void

    .line 759
    .restart local v0       #bigSurfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 760
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public onCallInitiating()V
    .locals 1

    .prologue
    .line 705
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCallInitiating"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 706
    :cond_0
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->createTextureViews()V

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->fillArrays()V

    .line 711
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1040
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1041
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_0

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

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1043
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1050
    :goto_0
    return-void

    .line 1045
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->onClickSwitchCamera()V

    goto :goto_0

    .line 1043
    :pswitch_data_0
    .packed-switch 0x7f0a022f
        :pswitch_0
    .end packed-switch
.end method

.method protected onClickSwitchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1093
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v0, v0, Lcom/android/phone/InIMSCallState;->mCameraId:I

    .line 1095
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/samsung/commonimsinterface/imscommon/CameraState;

    move-result-object v1

    sget-object v2, Lcom/samsung/commonimsinterface/imscommon/CameraState;->PREVIEW_STARTED:Lcom/samsung/commonimsinterface/imscommon/CameraState;

    if-ne v1, v2, :cond_3

    .line 1096
    if-ne v0, v3, :cond_1

    .line 1097
    const-string v0, "vt_camera_firmware_update_check_popup"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    iget-object v0, v0, Lcom/android/phone/CameraEngine;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1100
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    .line 1110
    :goto_0
    return-void

    .line 1101
    :cond_1
    if-nez v0, :cond_2

    .line 1102
    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 1104
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 1107
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 452
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 454
    sget-boolean v4, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinishInflate(this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 456
    :cond_0
    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 457
    :cond_1
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "This device not support volte"

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 535
    :cond_2
    :goto_0
    return-void

    .line 462
    :cond_3
    const-string v4, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, property:I
    if-ne v0, v2, :cond_9

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 464
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is Media running in loopback mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 467
    :cond_4
    const v2, 0x7f0a0223

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    .line 468
    const v2, 0x7f0a0230

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ZoomControlBar;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    .line 469
    const v2, 0x7f0a0225

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 470
    const v2, 0x7f0a0229

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 471
    const v2, 0x7f0a022f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    .line 472
    const v2, 0x7f0a0224

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    .line 473
    const v2, 0x7f0a022d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mNearEndAnimator:Landroid/widget/ImageView;

    .line 474
    const v2, 0x7f0a022c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndAnimator:Landroid/widget/ImageView;

    .line 475
    const v2, 0x7f0a022b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    .line 476
    const v2, 0x7f0a0227

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    .line 477
    const v2, 0x7f0a0226

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingImageAnimator:Landroid/widget/RelativeLayout;

    .line 478
    const v2, 0x7f0a0228

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->prepareVideoText:Landroid/widget/TextView;

    .line 479
    const v2, 0x7f0a022a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    .line 480
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreparingDisplayImageView:Landroid/widget/ImageView;

    const v4, 0x7f05000e

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 482
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 483
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 485
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e00db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    .line 491
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewMarginBottom:I

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewMarginBottom:I

    .line 494
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mDensity:F

    .line 497
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 498
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_6
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 502
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 503
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 504
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 512
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    if-eqz v2, :cond_7

    .line 513
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mTextBitrate:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_3
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v2, :cond_8

    .line 525
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    .line 527
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    :cond_8
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/CameraEngine;->init(Landroid/content/Context;)Lcom/android/phone/CameraEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VideoCallPanel;->cameraEngine:Lcom/android/phone/CameraEngine;

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 463
    goto/16 :goto_1

    .line 508
    :cond_a
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    new-instance v4, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewTouchListerner;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    new-instance v2, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;

    invoke-direct {v2, p0, v6}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto :goto_2

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, ve:Ljava/lang/VerifyError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch VerifyError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 521
    iput-object v6, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    goto :goto_3
.end method

.method protected onHideShowOperation()V
    .locals 2

    .prologue
    .line 1113
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "onHideShowOperation...camera is not allowed, return"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendLiveVideo()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090418

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1055
    sget-boolean v3, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1056
    :cond_0
    sget-boolean v3, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLongPressMenuEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1058
    :cond_1
    sget-boolean v3, Lcom/android/phone/VideoCallPanel;->mLongPressMenuEnabled:Z

    if-nez v3, :cond_3

    .line 1089
    :cond_2
    :goto_0
    return v0

    .line 1060
    :cond_3
    const-string v3, "common_volte_vt_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1063
    :cond_4
    const v3, 0x7f0a0225

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1064
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    if-nez v2, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoViewItems:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    move v0, v1

    .line 1068
    goto :goto_0

    .line 1072
    :cond_6
    const v3, 0x7f0a0229

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1075
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1076
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewItems:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1077
    const v0, 0x7f090419

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 1083
    goto/16 :goto_0

    .line 1080
    :cond_9
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNotify(I)V
    .locals 2
    .parameter

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2270
    const-string v0, "onNotify : mHander is null"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2307
    :goto_0
    return-void

    .line 2274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify : eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2276
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2278
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2281
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2284
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2287
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2290
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2293
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2296
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2299
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2302
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2276
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_6
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_5
        0x3f2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 822
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 824
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "xNew"
    .parameter "yNew"
    .parameter "xOld"
    .parameter "yOld"

    .prologue
    .line 782
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSizeChanged"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 783
    :cond_0
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Panel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 785
    :cond_1
    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 786
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

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    :cond_2
    :goto_0
    return-void

    .line 792
    :cond_3
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 793
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 794
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 795
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 796
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMw4x3FarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_0

    .line 798
    :cond_4
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mMwFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_0

    .line 801
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 802
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 807
    :goto_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto :goto_0

    .line 803
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 804
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 806
    :cond_7
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 811
    :cond_8
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mPreviewWidth:I

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 812
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 927
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSurfaceTextureAvailable..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 929
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Camera surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 930
    :cond_1
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 931
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 932
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 933
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v1

    .line 934
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 935
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    .line 948
    :cond_3
    :goto_0
    return-void

    .line 937
    :cond_4
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 938
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCameraPreviewVisibility(I)V

    goto :goto_0

    .line 940
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCameraPreviewVisibility(I)V

    goto :goto_0

    .line 943
    :cond_6
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 944
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Video surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 945
    :cond_7
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 946
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 952
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraPreview surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 955
    :cond_1
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isHDConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    .line 958
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 959
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 960
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;)V

    .line 967
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 961
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "FarEndView surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 963
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 964
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 965
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSurfaceTextureSizeChanged..."

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraPreview surface texture Updated"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->startRender(Z)V

    .line 980
    :cond_1
    :goto_0
    return-void

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "FarEndView surface texture Updated"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->startRender(Z)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 993
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 998
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1023
    :sswitch_0
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "VideoCallPanel View is VISIBLE"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1024
    :cond_2
    if-eq v0, v4, :cond_4

    .line 1025
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onVisibilityChanged : VISIBLE - CameraState.CAMERA_CLOSED"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1026
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    .line 1028
    :cond_4
    if-eq v0, v2, :cond_5

    if-ne v0, v4, :cond_6

    .line 1029
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    .line 1030
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 1002
    :sswitch_1
    sget-boolean v1, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "VideoCallPanel View is GONE or INVISIBLE"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1005
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    iput-boolean v3, v1, Lcom/android/phone/InVTCallState;->mIsFarFrameReady:Z

    .line 1006
    invoke-direct {p0, v3}, Lcom/android/phone/VideoCallPanel;->setCamera(Z)V

    .line 1007
    iput-boolean v3, p0, Lcom/android/phone/VideoCallPanel;->mIsPreparingDisplayAnim:Z

    .line 1008
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->hidePreparingDisplayAnim()V

    .line 1009
    const-string v1, "common_volte_vt_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1010
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_9

    :cond_8
    if-nez v0, :cond_0

    .line 1013
    :cond_9
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1015
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->destroyTextureViews()V

    goto/16 :goto_0

    .line 1018
    :cond_a
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 998
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected resumeVideo()V
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->resumeVideo()V

    .line 1678
    :cond_0
    return-void
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 1614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setShowMe(Z)V

    .line 1615
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1616
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1618
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1623
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inVTCallState:Lcom/android/phone/InVTCallState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/InVTCallState;->mCapturedLocalFile:Ljava/lang/String;

    .line 1624
    return-void

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendLiveVideo()V

    goto :goto_0
.end method

.method public sendStillImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1585
    invoke-virtual {p0, v3}, Lcom/android/phone/VideoCallPanel;->setShowMe(Z)V

    .line 1586
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->updateVtIncallButton()V

    .line 1587
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1589
    const-string v0, "setting hideme image to preset image"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preset_Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1592
    const-string v1, "photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preset_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preset_path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 1595
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->setIncomingHideMeImageLayout(ZLjava/lang/String;)V

    .line 1599
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1606
    :cond_0
    :goto_1
    return-void

    .line 1597
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/phone/VideoCallPanel;->setIncomingHideMeImageLayout(ZLjava/lang/String;)V

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendStillImage()V

    goto :goto_1
.end method

.method public sendStillImage(Z)V
    .locals 1
    .parameter "internalAnswerCall"

    .prologue
    .line 1609
    if-eqz p1, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->sendStillImage()V

    .line 1612
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/phone/VideoCallManager;->setCameraDisplayOrientation(I)V

    .line 921
    return-void
.end method

.method public setCameraPreviewVisibility(I)V
    .locals 3
    .parameter

    .prologue
    .line 2263
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraPreviewVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsIms;->englog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    :cond_0
    return-void
.end method

.method setFpsRange()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1206
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getNegotiatedFPS()I

    move-result v0

    mul-int/lit16 v5, v0, 0x3e8

    .line 1207
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 1212
    if-eqz v6, :cond_2

    move v1, v2

    move v3, v2

    .line 1213
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1214
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v4, 0x1

    aget v4, v0, v4

    .line 1215
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v2

    .line 1216
    sget-boolean v7, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v7, :cond_0

    .line 1217
    const-string v7, "VideoCallPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Supported FPS range = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_0
    if-ne v4, v0, :cond_1

    if-gt v4, v5, :cond_1

    if-gt v3, v4, :cond_1

    move v3, v4

    .line 1213
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1228
    :cond_3
    if-eqz v3, :cond_5

    .line 1229
    sget-boolean v0, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v0, :cond_4

    .line 1230
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_4
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1238
    :goto_1
    return-void

    .line 1235
    :cond_5
    const-string v0, "VideoCallPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInitialCameraOrientation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2341
    .line 2342
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2343
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2344
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2345
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    if-eqz v1, :cond_0

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialCameraOrientation  display rotation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mCurrentRotation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v2, v2, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 2347
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v1, v1, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    if-eq v1, v0, :cond_0

    .line 2348
    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCameraDisplayOrientation(I)V

    .line 2349
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput v0, v1, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    .line 2371
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    const/4 v0, 0x3

    .line 2355
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2359
    :cond_2
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2360
    const-string v0, "isQVGAVideoCall...Rotation 0"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2364
    :cond_3
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    if-eqz v1, :cond_0

    .line 2365
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v1, v1, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iget v1, v1, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    if-eq v1, v0, :cond_0

    .line 2366
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/phone/VideoCallPanel;->setCameraDisplayOrientation(I)V

    .line 2367
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput v0, v1, Lcom/android/phone/InIMSCallState;->mCurrentRotation:I

    goto :goto_0
.end method

.method protected setQcifDialerOpened(Z)V
    .locals 1
    .parameter "isOpened"

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-boolean p1, v0, Lcom/android/phone/InIMSCallState;->isQcifDialerOpened:Z

    .line 2413
    return-void
.end method

.method protected setShowMe(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-boolean p1, v0, Lcom/android/phone/InIMSCallState;->isShowMe:Z

    .line 2397
    return-void
.end method

.method protected setSurfaceViewSwipe(Z)V
    .locals 1
    .parameter "isSwiped"

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    iput-boolean p1, v0, Lcom/android/phone/InIMSCallState;->isSurfaceViewSwiped:Z

    .line 2405
    return-void
.end method

.method public showAlternativeImageDialog()V
    .locals 2

    .prologue
    const v1, 0x7f090418

    .line 1627
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1632
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    .line 1638
    :goto_1
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewAlternativeImageItems:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 1635
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraViewDefaultImageItem:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 1636
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/VideoCallPanel;->showMenuDialog(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected stopPreview()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->inIMSCallState:Lcom/android/phone/InIMSCallState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/InIMSCallState;->isRunningCamera:Z

    .line 916
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 917
    return-void
.end method

.method updateScreen(Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 538
    sget-boolean v2, Lcom/android/phone/VideoCallPanel;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - Videocall.state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 540
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mCurrentOrientation:I

    .line 542
    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isSurfaceViewSwiped()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->swipeVideoSurfaces()V

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->createTextureViews()V

    .line 548
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 549
    .local v1, surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v2, :cond_4

    .line 550
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mIncomingPreviewMarginTop:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 556
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mSurfaceLayoutParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->restartCameraPreview(Lcom/android/internal/telephony/Call$State;)V

    .line 561
    .end local v1           #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isShowMe()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->sendStillImage()V

    .line 565
    :cond_3
    sget-object v2, Lcom/android/phone/VideoCallPanel$10;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 608
    :goto_1
    :pswitch_0
    return-void

    .line 552
    .restart local v1       #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHideMeImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 569
    .end local v1           #surfaceLp:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 570
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 571
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mMwPreviewOutgoingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 573
    :cond_5
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewOutgoingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 576
    :cond_6
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mFarEndviewHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 579
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 580
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewQCIFIncomingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 582
    :cond_7
    iget v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingWidth:I

    iget v3, p0, Lcom/android/phone/VideoCallPanel;->mPreviewIncomingHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    goto :goto_1

    .line 585
    :pswitch_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 586
    invoke-direct {p0, v4, v4}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(II)V

    .line 589
    :cond_8
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate, misdisplaybitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->mIsDisplayBitrate:Z

    if-eqz v2, :cond_9

    .line 592
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 596
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .line 597
    .local v0, callType:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 598
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->showVS(I)V

    goto/16 :goto_1

    .line 600
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->showVT()V

    goto/16 :goto_1

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
