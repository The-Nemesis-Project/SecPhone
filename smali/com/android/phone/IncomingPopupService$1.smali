.class Lcom/android/phone/IncomingPopupService$1;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPopupService;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 142
    .local v0, id:I
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/IncomingPopupService;->access$000(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;Z)V

    .line 143
    sparse-switch v0, :sswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 145
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->answerCall()V
    invoke-static {v1}, Lcom/android/phone/IncomingPopupService;->access$100(Lcom/android/phone/IncomingPopupService;)V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->answerViaSpeaker()V
    invoke-static {v1}, Lcom/android/phone/IncomingPopupService;->access$200(Lcom/android/phone/IncomingPopupService;)V

    goto :goto_0

    .line 151
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->rejectCall()V
    invoke-static {v1}, Lcom/android/phone/IncomingPopupService;->access$300(Lcom/android/phone/IncomingPopupService;)V

    goto :goto_0

    .line 154
    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-virtual {v1}, Lcom/android/phone/IncomingPopupService;->makeRejectWithMsg()V

    goto :goto_0

    .line 157
    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->showInCallUI()V
    invoke-static {v1}, Lcom/android/phone/IncomingPopupService;->access$400(Lcom/android/phone/IncomingPopupService;)V

    .line 158
    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$1;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-virtual {v1}, Lcom/android/phone/IncomingPopupService;->stopService()V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x7f0a0073 -> :sswitch_0
        0x7f0a0074 -> :sswitch_1
        0x7f0a0075 -> :sswitch_2
        0x7f0a0076 -> :sswitch_3
        0x7f0a0215 -> :sswitch_4
    .end sparse-switch
.end method
