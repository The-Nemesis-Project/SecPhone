.class Lcom/android/phone/InCallScreen$58;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9862
    iput-object p1, p0, Lcom/android/phone/InCallScreen$58;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 9864
    iget-object v0, p0, Lcom/android/phone/InCallScreen$58;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$6302(Lcom/android/phone/InCallScreen;I)I

    .line 9865
    iget-object v0, p0, Lcom/android/phone/InCallScreen$58;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9866
    iget-object v0, p0, Lcom/android/phone/InCallScreen$58;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setAutoAnswered(Z)V

    .line 9868
    :cond_0
    return-void
.end method
