.class Lcom/android/phone/RejectCallWithMsgContent$4;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;

.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 497
    const-string v0, "RejectCallWithMsgContent"

    const-string v1, "Answer MemoButton clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->val$app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answeringMode()V

    .line 501
    :cond_0
    return-void
.end method
