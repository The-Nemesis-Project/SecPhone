.class Lcom/android/phone/NetworkNotificationUI$21;
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
    .line 2024
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$21;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2026
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$702(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2027
    return-void
.end method
