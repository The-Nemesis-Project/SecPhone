.class Lcom/android/phone/callsettings/VideoCallBarring$2;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 323
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$000(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const v2, 0x7f090364

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$100(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #setter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    .line 327
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->access$400(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #getter for: Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$2;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    #calls: Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarring(I)V
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->access$500(Lcom/android/phone/callsettings/VideoCallBarring;I)V

    goto :goto_0
.end method
