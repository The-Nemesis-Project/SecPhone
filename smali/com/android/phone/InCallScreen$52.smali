.class Lcom/android/phone/InCallScreen$52;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8901
    iput-object p1, p0, Lcom/android/phone/InCallScreen$52;->this$0:Lcom/android/phone/InCallScreen;

    iput-boolean p2, p0, Lcom/android/phone/InCallScreen$52;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 8903
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$52;->val$start:Z

    if-eqz v0, :cond_0

    .line 8904
    iget-object v0, p0, Lcom/android/phone/InCallScreen$52;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$6000(Lcom/android/phone/InCallScreen;)V

    .line 8908
    :goto_0
    return-void

    .line 8906
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$52;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto :goto_0
.end method
