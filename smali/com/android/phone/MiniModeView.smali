.class public Lcom/android/phone/MiniModeView;
.super Landroid/widget/RelativeLayout;
.source "MiniModeView.java"


# instance fields
.field mMiniModeCallService:Lcom/android/phone/MiniModeCallService;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiniModeCallService;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/android/phone/MiniModeView;->mMiniModeCallService:Lcom/android/phone/MiniModeCallService;

    .line 29
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/phone/MiniModeView;->mMiniModeCallService:Lcom/android/phone/MiniModeCallService;

    invoke-virtual {v0, v1}, Lcom/android/phone/MiniModeCallService;->onFocus(Z)V

    .line 39
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/phone/MiniModeView;->mMiniModeCallService:Lcom/android/phone/MiniModeCallService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MiniModeCallService;->onFocus(Z)V

    goto :goto_0
.end method
