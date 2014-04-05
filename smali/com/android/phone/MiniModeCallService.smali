.class public Lcom/android/phone/MiniModeCallService;
.super Landroid/app/Service;
.source "MiniModeCallService.java"


# instance fields
.field private PREV_X:I

.field private PREV_Y:I

.field private START_X:F

.field private START_Y:F

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mButtonTouchListener:Landroid/view/View$OnTouchListener;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mLastDownEventTime:J

.field private mMiniModeView:Lcom/android/phone/MiniModeView;

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Lcom/android/phone/MiniModeCallService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiniModeCallService$1;-><init>(Lcom/android/phone/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 104
    new-instance v0, Lcom/android/phone/MiniModeCallService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiniModeCallService$2;-><init>(Lcom/android/phone/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 122
    new-instance v0, Lcom/android/phone/MiniModeCallService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MiniModeCallService$3;-><init>(Lcom/android/phone/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiniModeCallService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/phone/MiniModeCallService;->mLastDownEventTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/phone/MiniModeCallService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/phone/MiniModeCallService;->mLastDownEventTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/phone/MiniModeCallService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/MiniModeCallService;->START_X:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiniModeCallService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/MiniModeCallService;->START_X:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiniModeCallService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/MiniModeCallService;->START_Y:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/MiniModeCallService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/MiniModeCallService;->START_Y:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/MiniModeCallService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/MiniModeCallService;->PREV_X:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/MiniModeCallService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/MiniModeCallService;->PREV_X:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/MiniModeCallService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiniModeCallService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/MiniModeCallService;->PREV_Y:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/MiniModeCallService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/MiniModeCallService;->PREV_Y:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/MiniModeCallService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;->updateViewLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/android/phone/MiniModeView;

    invoke-direct {v0, p0}, Lcom/android/phone/MiniModeView;-><init>(Lcom/android/phone/MiniModeCallService;)V

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    .line 185
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 187
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->setDefaultPosition()V

    .line 189
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->show()V

    .line 190
    return-void
.end method

.method private showMiniMode()V
    .locals 3

    .prologue
    .line 249
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    .line 250
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    iget-object v2, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    iget-object v2, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_1
    return-void
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 265
    const/16 v2, 0x7d2

    .line 267
    .local v2, windowType:I
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->supportOverLockScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const/16 v2, 0x7da

    .line 273
    :cond_0
    const v0, 0x1040168

    .line 279
    .local v0, layoutFlag:I
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->supprotOutSideScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    or-int/lit16 v0, v0, 0x200

    .line 283
    :cond_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 285
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 288
    const/16 v3, 0x20

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 289
    const v3, 0x7f100086

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxY()I
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 301
    .local v0, matrix:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 302
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 194
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040089

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 195
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 173
    const-string v0, "MiniModeCallService"

    const-string v1, "onConfigurationChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 176
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiniModeCallService;->initCustomLayout(Landroid/view/ViewGroup;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->setDefaultPosition()V

    .line 178
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;->updateViewLayout()V

    .line 180
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    iput-object p0, p0, Lcom/android/phone/MiniModeCallService;->mContext:Landroid/content/Context;

    .line 134
    const-string v0, "MiniModeCallService"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;->initLayout()V

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "MiniModeCallService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iput-object v2, p0, Lcom/android/phone/MiniModeCallService;->mDialog:Landroid/app/Dialog;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 166
    :cond_2
    iput-object v2, p0, Lcom/android/phone/MiniModeCallService;->mMiniModeView:Lcom/android/phone/MiniModeView;

    .line 167
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    return-void
.end method

.method public onFocus(Z)V
    .locals 3
    .parameter "focus"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "MiniModeCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;->updateViewLayout()V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 140
    const/4 v0, 0x2

    return v0
.end method

.method protected onTouchEvent()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected setDefaultPosition()V
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 199
    .local v0, popupHeight:I
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MiniModeCallService;->getMaxY()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 201
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "MiniModeCallService"

    const-string v1, "show "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/phone/MiniModeCallService;->showMiniMode()V

    .line 219
    return-void
.end method

.method protected supportOverLockScreen()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected supprotOutSideScreen()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method
