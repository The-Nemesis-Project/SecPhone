.class Lcom/android/phone/UsCdmaCallForwardingDialog$6;
.super Ljava/lang/Object;
.source "UsCdmaCallForwardingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsCdmaCallForwardingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 211
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->eNumberText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$600(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$202(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    const-string v1, "us_cdma_call_fowarding_setting"

    iget-object v2, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mFromWhere:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$700(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mPreNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$100(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mDialNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$200(Lcom/android/phone/UsCdmaCallForwardingDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 214
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mConvertCFCallToIMS:Z
    invoke-static {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$300(Lcom/android/phone/UsCdmaCallForwardingDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mExtraCallType:I
    invoke-static {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$400(Lcom/android/phone/UsCdmaCallForwardingDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->convertCallToIMS(Landroid/content/Intent;I)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    const-string v2, "convertCallToIMS..."

    #calls: Lcom/android/phone/UsCdmaCallForwardingDialog;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$500(Lcom/android/phone/UsCdmaCallForwardingDialog;Ljava/lang/String;Z)V

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 223
    .end local v0           #mIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UsCdmaCallForwardingDialog$6;->this$0:Lcom/android/phone/UsCdmaCallForwardingDialog;

    #getter for: Lcom/android/phone/UsCdmaCallForwardingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/UsCdmaCallForwardingDialog;->access$800(Lcom/android/phone/UsCdmaCallForwardingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
