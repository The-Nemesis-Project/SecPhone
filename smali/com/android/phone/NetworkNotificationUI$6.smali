.class Lcom/android/phone/NetworkNotificationUI$6;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #getter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$3000(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #calls: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$3100(Lcom/android/phone/NetworkNotificationUI;Z)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$6;->this$0:Lcom/android/phone/NetworkNotificationUI;

    #setter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$3002(Lcom/android/phone/NetworkNotificationUI;Z)Z

    .line 966
    return-void
.end method
