.class Lcom/android/phone/OutgoingCallBroadcaster$1;
.super Landroid/os/Handler;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 239
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "OutgoingCallBroadcaster"

    const-string v2, "mHandler: mToneGenerator == null"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 247
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 248
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$302(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 253
    :pswitch_1
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Outgoing call takes too long. Showing the spinner."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
