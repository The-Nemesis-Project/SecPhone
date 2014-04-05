.class Lcom/android/phone/NetworkQueryService2$2;
.super Lcom/android/phone/INetworkQueryService2$Stub;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService2;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService2;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 129
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService2;->access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mState:I
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService2;->access$300(Lcom/android/phone/NetworkQueryService2;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    monitor-exit v1

    .line 149
    :cond_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService2;->access$400(Lcom/android/phone/NetworkQueryService2;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService2;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 137
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    const/4 v2, -0x2

    #setter for: Lcom/android/phone/NetworkQueryService2;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/NetworkQueryService2;->access$302(Lcom/android/phone/NetworkQueryService2;I)I

    .line 138
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    const-string v2, "starting new query"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService2;->access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    const-string v2, "query already in progress"

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/NetworkQueryService2;->access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .locals 8
    .parameter "cb"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v4, v3, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregistering callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6}, Lcom/android/phone/NetworkQueryService2;->access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v3, v3, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 166
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mState:I
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService2;->access$300(Lcom/android/phone/NetworkQueryService2;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 171
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_1
    sget v3, Lcom/android/phone/NetworkQueryService2;->OEM_FUNCTION_ID_NETWORK:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 176
    sget v3, Lcom/android/phone/NetworkQueryService2;->OEM_NETWORK_SCAN_CANCEL:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 177
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    if-eqz v1, :cond_1

    .line 184
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :cond_1
    :goto_0
    const-string v3, "NetworkQuery2"

    const-string v4, "Canceling network scan"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v4, v3, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 195
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService2;->access$400(Lcom/android/phone/NetworkQueryService2;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v6, v6, Lcom/android/phone/NetworkQueryService2;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 197
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :cond_2
    return-void

    .line 166
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 185
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopNetworkQuery : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService2;->access$500(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 180
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_5
    const-string v3, "NetworkQuery2"

    const-string v4, "IOException in stopNetworkQuery()"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    if-eqz v1, :cond_1

    .line 184
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopNetworkQuery : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService2;->access$500(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    .line 184
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 188
    :cond_3
    :goto_1
    throw v3

    .line 185
    :catch_3
    move-exception v2

    .line 186
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkQuery : close fail - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/NetworkQueryService2;->access$500(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method
