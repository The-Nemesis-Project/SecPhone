.class Lcom/android/phone/callsettings/CallBarring$15;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 870
    const/16 v1, 0x64

    .line 871
    .local v1, status:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 873
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCBHandler() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 876
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 877
    const-string v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 935
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 936
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto :goto_0

    .line 884
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v2, v0, v3}, Lcom/android/phone/callsettings/CallBarring;->access$1600(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 886
    if-ne v1, v9, :cond_4

    .line 888
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 890
    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    goto :goto_1

    .line 897
    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/CallBarring;->access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_1

    .line 903
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v2, v0}, Lcom/android/phone/callsettings/CallBarring;->access$1900(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I

    move-result v1

    .line 905
    if-eq v1, v9, :cond_6

    .line 906
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/callsettings/CallBarring;->access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    .line 909
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$2000(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ge v2, v7, :cond_5

    .line 910
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$308(Lcom/android/phone/callsettings/CallBarring;)I

    .line 911
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 912
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)V

    goto :goto_1

    .line 914
    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->access$2002(Lcom/android/phone/callsettings/CallBarring;Z)Z

    .line 915
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto :goto_1

    .line 919
    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    sget-object v3, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 922
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$2000(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    if-ge v2, v7, :cond_7

    .line 923
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$308(Lcom/android/phone/callsettings/CallBarring;)I

    .line 924
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$600(Lcom/android/phone/callsettings/CallBarring;)V

    goto/16 :goto_1

    .line 926
    :cond_7
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z
    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->access$2002(Lcom/android/phone/callsettings/CallBarring;Z)Z

    .line 927
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$15;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2, v5}, Lcom/android/phone/callsettings/CallBarring;->access$302(Lcom/android/phone/callsettings/CallBarring;I)I

    goto/16 :goto_1

    .line 882
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
