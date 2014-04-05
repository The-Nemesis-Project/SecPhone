.class final Lcom/android/phone/PhoneUtilsExt$4;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1779
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 1780
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1781
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1782
    return-void
.end method
