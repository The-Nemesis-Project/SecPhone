.class Lcom/android/phone/PhoneGlobals$18;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 6828
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 6830
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6831
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/phone/PhoneGlobals;->mPartsList:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/android/phone/PhoneGlobals;->access$4002(Lcom/android/phone/PhoneGlobals;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6832
    const/4 v2, 0x0

    .line 6833
    .local v2, number:Ljava/lang/String;
    const-string v4, "com.uplus.agent.action.GROUPCALL_OUTGOING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6834
    const-string v4, "ims_conference_call"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6836
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v4, "com.uplus.agent.extra.GROUPCALL_MEMBER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    #setter for: Lcom/android/phone/PhoneGlobals;->mPartsList:Ljava/util/ArrayList;
    invoke-static {v5, v4}, Lcom/android/phone/PhoneGlobals;->access$4002(Lcom/android/phone/PhoneGlobals;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6837
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mPartsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$4000(Lcom/android/phone/PhoneGlobals;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 6839
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 6840
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$18;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtils;->addUserToConfCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I

    .line 6855
    :cond_0
    :goto_0
    return-void

    .line 6842
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6844
    .local v3, outgoingintent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    .line 6846
    .local v1, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6847
    const-string v4, "IS_CONF_CALL"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6848
    invoke-static {v7}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 6850
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6851
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
