.class Lcom/android/phone/CancelRejectModeAlertDialog$4;
.super Ljava/lang/Object;
.source "CancelRejectModeAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CancelRejectModeAlertDialog;->showAutoRejectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CancelRejectModeAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$4;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$4;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method
