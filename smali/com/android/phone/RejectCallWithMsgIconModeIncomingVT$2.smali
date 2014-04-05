.class Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconModeIncomingVT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$2;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 338
    .local v0, parentView:Landroid/widget/LinearLayout;
    const v2, 0x7f0a02dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 339
    .local v1, textView:Landroid/widget/TextView;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;

    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$2;->this$0:Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT$SendMsgRunnable;-><init>(Lcom/android/phone/RejectCallWithMsgIconModeIncomingVT;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void
.end method
