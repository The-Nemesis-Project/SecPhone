.class Lcom/android/phone/PhoneInterfaceManagerExt$2;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManagerExt;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 113
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DOMESTIC PCSC HandleMessage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 305
    :pswitch_0
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v9, "Get Default"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    new-array v9, v11, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 309
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v9, -0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 312
    :goto_0
    return-void

    .line 118
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 120
    :try_start_0
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 121
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "90"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x2

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :goto_1
    :try_start_2
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Get CONNECT_DONE event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_1

    .line 149
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 138
    .end local v4           #i:I
    :cond_0
    :try_start_3
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "Exception in getting Logical Channel."

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_1

    .line 160
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 151
    .restart local v4       #i:I
    :cond_1
    :try_start_5
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect! Logical Ch is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v4           #i:I
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    monitor-exit v9

    goto/16 :goto_0

    .line 154
    :cond_2
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 155
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "SMARTCARD_IO_ERROR_CARD_NOT_EXIST"

    invoke-static {v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 164
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 166
    :try_start_6
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 167
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 171
    :try_start_7
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x0

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "90"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 183
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    :try_start_8
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 184
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USIM(TCash) : Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 175
    .end local v4           #i:I
    :cond_3
    :try_start_9
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .restart local v2       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_a
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "Exception in disconnecting."

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    goto :goto_4

    .line 195
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v8

    .line 186
    .restart local v4       #i:I
    :cond_4
    :try_start_b
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnect! res:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v4           #i:I
    :goto_6
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    monitor-exit v9

    goto/16 :goto_0

    .line 189
    :cond_5
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 190
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "SMARTCARD_IO_INVALID_CHANNEL"

    invoke-static {v8, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 199
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 201
    :try_start_c
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 202
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 203
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v10

    array-length v10, v10

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 206
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_6

    .line 207
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    aget-byte v11, v11, v4

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 209
    :cond_6
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get TRANSMIT_DONE event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v4           #i:I
    :goto_8
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v8

    .line 212
    :cond_7
    :try_start_d
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 213
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x4

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    .line 223
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 225
    :try_start_e
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_8

    .line 226
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 227
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 233
    :goto_9
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get POWERUP event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v8

    .line 229
    :cond_8
    :try_start_f
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    .line 242
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 244
    :try_start_10
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_c

    .line 245
    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v10, v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B

    .line 246
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I

    .line 248
    const/4 v6, 0x0

    .line 249
    .local v6, strAkaResult:Ljava/lang/String;
    const/4 v1, 0x0

    .line 254
    .local v1, dataArr:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 256
    .local v7, tempResult:Ljava/lang/String;
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS_AKA result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v11

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    if-nez v8, :cond_9

    .line 258
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "IMS_AKA result = is success appending DB "

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 270
    :goto_a
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.internal.ims.USIMAuthParams"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v5, newIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 273
    .local v3, eventType:Ljava/lang/String;
    const-string v3, "REGISTER"

    .line 274
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventType====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataArr====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v8, "REGISTER"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 277
    const-string v8, "eventType"

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    :goto_b
    const-string v8, "data"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 283
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    if-eqz v8, :cond_b

    .line 284
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "mApplication.mContext is not null====="

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    .end local v1           #dataArr:[B
    .end local v3           #eventType:Ljava/lang/String;
    .end local v5           #newIntent:Landroid/content/Intent;
    .end local v6           #strAkaResult:Ljava/lang/String;
    .end local v7           #tempResult:Ljava/lang/String;
    :goto_c
    const-string v8, "PhoneInterfaceManagerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get USIMAUTH event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v11}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAll:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$400(Lcom/android/phone/PhoneInterfaceManagerExt;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->mObjectNotiAllRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$300(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x32

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v8

    .line 263
    .restart local v1       #dataArr:[B
    .restart local v6       #strAkaResult:Ljava/lang/String;
    .restart local v7       #tempResult:Ljava/lang/String;
    :cond_9
    :try_start_11
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "IMS_AKA result = is failure appending DC "

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    #getter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B
    invoke-static {v8}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DC"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_a

    .line 279
    .restart local v3       #eventType:Ljava/lang/String;
    .restart local v5       #newIntent:Landroid/content/Intent;
    :cond_a
    const-string v8, "eventType"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_b

    .line 287
    :cond_b
    const-string v8, "PhoneInterfaceManagerExt"

    const-string v10, "mApplication.mContext is  null====="

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v9

    goto/16 :goto_0

    .line 291
    .end local v1           #dataArr:[B
    .end local v3           #eventType:Ljava/lang/String;
    .end local v5           #newIntent:Landroid/content/Intent;
    .end local v6           #strAkaResult:Ljava/lang/String;
    .end local v7           #tempResult:Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManagerExt$2;->this$0:Lcom/android/phone/PhoneInterfaceManagerExt;

    const/4 v10, -0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I
    invoke-static {v8, v10}, Lcom/android/phone/PhoneInterfaceManagerExt;->access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_c

    .line 116
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
