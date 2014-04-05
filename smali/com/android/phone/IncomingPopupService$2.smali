.class Lcom/android/phone/IncomingPopupService$2;
.super Landroid/os/Handler;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPopupService;->onCreate()V
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
    .line 174
    iput-object p1, p0, Lcom/android/phone/IncomingPopupService$2;->this$0:Lcom/android/phone/IncomingPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$2;->this$0:Lcom/android/phone/IncomingPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/phone/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/IncomingPopupService;->access$000(Lcom/android/phone/IncomingPopupService;Ljava/lang/String;Z)V

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingPopupService$2;->this$0:Lcom/android/phone/IncomingPopupService;

    #calls: Lcom/android/phone/IncomingPopupService;->setSmallCallCardAnimation()Z
    invoke-static {v0}, Lcom/android/phone/IncomingPopupService;->access$500(Lcom/android/phone/IncomingPopupService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/16 v0, 0x64

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
