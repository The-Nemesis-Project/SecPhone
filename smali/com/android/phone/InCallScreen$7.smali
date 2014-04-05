.class Lcom/android/phone/InCallScreen$7;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1405
    packed-switch p2, :pswitch_data_0

    .line 1445
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1446
    return-void

    .line 1407
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_diagnosis"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0903a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1411
    const v1, 0x7f0903ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1412
    const v1, 0x7f090022

    new-instance v2, Lcom/android/phone/InCallScreen$7$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$7$1;-><init>(Lcom/android/phone/InCallScreen$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1418
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    .line 1419
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$4702(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1420
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$4700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1422
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$4700(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1425
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_revision"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1426
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_eq_list_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1428
    invoke-static {v3, v3}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 1429
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    goto :goto_0

    .line 1435
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_revision"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1436
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_eq_list_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1438
    invoke-static {v3, v3}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    .line 1439
    iget-object v1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 1405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
