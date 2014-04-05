.class Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMsgRunnable"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/String;

.field private mSimCardId:I

.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "msg"
    .parameter "mSimId"

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    .line 1139
    iput p3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mSimCardId:I

    .line 1140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1143
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1144
    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1146
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1151
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1153
    const-string v2, "SimId"

    iget v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mSimCardId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    :cond_0
    :goto_1
    const-string v2, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1164
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->addRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :goto_2
    const-string v2, "RejectCallWithMsgContent"

    const-string v3, "Message Sent."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1169
    const-string v2, "RejectCallWithMsgContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-void

    .line 1149
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1154
    :cond_3
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1155
    :cond_4
    const-string v2, "phonetype"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$200(Lcom/android/phone/RejectCallWithMsgContent;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1156
    :cond_5
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1157
    const-string v2, "simSlot"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$300(Lcom/android/phone/RejectCallWithMsgContent;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    const-string v2, "RejectCallWithMsgContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMsgRunnable: mSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSimId:I
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$300(Lcom/android/phone/RejectCallWithMsgContent;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1166
    :cond_6
    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2
.end method
