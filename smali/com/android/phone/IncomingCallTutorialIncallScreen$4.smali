.class Lcom/android/phone/IncomingCallTutorialIncallScreen$4;
.super Ljava/lang/Object;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$000(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingCallTutorialIncallScreen$4;->this$0:Lcom/android/phone/IncomingCallTutorialIncallScreen;

    #getter for: Lcom/android/phone/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/phone/IncomingCallTutorialIncallScreen;->access$300(Lcom/android/phone/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 186
    return-void
.end method