.class public Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;
.super Landroid/app/Dialog;
.source "CallCardCoveredDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCardCoveredDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearCoverDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCoveredDialog;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    .line 272
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 273
    #setter for: Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/phone/CallCardCoveredDialog;->access$002(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)Landroid/content/Context;

    .line 274
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 275
    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/CallCardCoveredDialog;->access$000(Lcom/android/phone/CallCardCoveredDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCardCovered;

    #setter for: Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;
    invoke-static {p1, v1}, Lcom/android/phone/CallCardCoveredDialog;->access$102(Lcom/android/phone/CallCardCoveredDialog;Lcom/android/phone/CallCardCovered;)Lcom/android/phone/CallCardCovered;

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 277
    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;
    invoke-static {p1}, Lcom/android/phone/CallCardCoveredDialog;->access$100(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/CallCardCovered;

    move-result-object v0

    .line 278
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 279
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCardCoveredDialog;->access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->this$0:Lcom/android/phone/CallCardCoveredDialog;

    #getter for: Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCardCoveredDialog;->access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerAnyKeyModeCall()V

    .line 287
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
