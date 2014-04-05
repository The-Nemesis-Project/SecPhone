.class Lcom/android/phone/InCallScreen$13;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->makeRejectWithMsg()V
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
    .line 2036
    iput-object p1, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$5200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/RejectCallWithMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/RejectCallWithMsgContent;->sendCreateMessage()V

    .line 2040
    return-void
.end method
