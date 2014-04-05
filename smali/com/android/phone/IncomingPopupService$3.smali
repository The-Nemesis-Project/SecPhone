.class Lcom/android/phone/IncomingPopupService$3;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPopupService;->makeRejectWithMsg()V
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
    .line 392
    iput-object p1, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 394
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-virtual {v0}, Lcom/android/phone/IncomingPopupService;->stopService()V

    .line 411
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->sendCreateMessage()V
    invoke-static {v0}, Lcom/android/phone/IncomingPopupService;->access$600(Lcom/android/phone/IncomingPopupService;)V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMwRejectMsg pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPopupService;->access$700(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    #getter for: Lcom/android/phone/IncomingPopupService;->mRejectCallWithMsgContent:Lcom/android/phone/RejectCallWithMsgContent;
    invoke-static {v0}, Lcom/android/phone/IncomingPopupService;->access$900(Lcom/android/phone/IncomingPopupService;)Lcom/android/phone/RejectCallWithMsgContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IncomingPopupService$3;->this$0:Lcom/android/phone/IncomingPopupService;

    #getter for: Lcom/android/phone/IncomingPopupService;->mRejectMessages:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/IncomingPopupService;->access$800(Lcom/android/phone/IncomingPopupService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->sendMwRejectMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
