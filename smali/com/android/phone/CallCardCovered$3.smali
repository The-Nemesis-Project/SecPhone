.class Lcom/android/phone/CallCardCovered$3;
.super Ljava/lang/Object;
.source "CallCardCovered.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCardCovered;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCovered;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$1000(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f020213

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 555
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$1100(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 556
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 557
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$1100(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mRejectCallWithMessageTab:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/phone/CallCardCovered;->access$1100(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 559
    return-void
.end method
