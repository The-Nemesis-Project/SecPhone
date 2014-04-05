.class final Lcom/android/phone/PhoneUtilsExt$3;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtilsExt;->showNetworkRoamMccChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/android/phone/PhoneUtilsExt$3;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1723
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1725
    packed-switch p2, :pswitch_data_0

    .line 1752
    const-string v5, "Unexpected resource: "

    #calls: Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->access$000(Ljava/lang/String;)V

    .line 1754
    :goto_0
    return-void

    .line 1727
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1729
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    const-string v0, "54F08054F050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    .line 1730
    .local v0, defaultFPLMN:Ljava/lang/String;
    const-string v2, "FFFFFFFFFFFFFFFFFFFF0000FF01"

    .line 1731
    .local v2, defaultPSLOCI:Ljava/lang/String;
    const-string v1, "FFFFFFFFFFFFFF0000FF01"

    .line 1733
    .local v1, defaultLOCI:Ljava/lang/String;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IccCard;->setFPLMN([B)V

    .line 1734
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IccCard;->setPSLOCI([B)V

    .line 1735
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IccCard;->setLOCI([B)V

    .line 1742
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->showNetworkAutoRebootIfManualSelected(Z)V

    goto :goto_0

    .line 1745
    .end local v0           #defaultFPLMN:Ljava/lang/String;
    .end local v1           #defaultLOCI:Ljava/lang/String;
    .end local v2           #defaultPSLOCI:Ljava/lang/String;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1746
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.samsung.android.phone"

    const-string v6, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1748
    iget-object v5, p0, Lcom/android/phone/PhoneUtilsExt$3;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1725
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
