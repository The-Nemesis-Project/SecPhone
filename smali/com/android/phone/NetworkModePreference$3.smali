.class Lcom/android/phone/NetworkModePreference$3;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->onDialogClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)V

    .line 634
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 635
    return-void
.end method
