.class public Lcom/android/phone/BlockAPNChangeCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "BlockAPNChangeCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BlockAPNChangeCheckBoxPreference$1;,
        Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private bSetEnabled:Z

.field private context:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->setContext(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;Lcom/android/phone/BlockAPNChangeCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    .line 67
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->getBlockAPNChangeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/BlockAPNChangeCheckBoxPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getBlockAPNChangeEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "block_apn_change"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 141
    goto :goto_0

    .line 142
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "BlockAPNChangeCheckBoxPreference"

    const-string v5, "SettingNotFoundException : block_apn_change"

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move v2, v3

    .line 144
    goto :goto_0
.end method

.method private setBlockAPNChangeEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->getBlockAPNChangeEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "block_apn_change"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 130
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected onClick()V
    .locals 7

    .prologue
    const v6, 0x1080027

    const v5, 0x1040014

    const v4, 0x1040013

    const v3, 0x1040009

    .line 101
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mOkClicked:Z

    .line 104
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->bSetEnabled:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->bSetEnabled:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 151
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 152
    iput-boolean v3, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mOkClicked:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->bSetEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->setBlockAPNChangeEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    iget-object v1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->mHandler:Lcom/android/phone/BlockAPNChangeCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/BlockAPNChangeCheckBoxPreference;->context:Landroid/content/Context;

    .line 78
    return-void
.end method
