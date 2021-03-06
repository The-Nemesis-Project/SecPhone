.class public Lcom/android/phone/callsettings/PowerKeyEndPreference;
.super Landroid/preference/CheckBoxPreference;
.source "PowerKeyEndPreference.java"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setSumary()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/PowerKeyEndPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkProximitySeonsor(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 61
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 62
    .local v1, isChecked:Z
    iput-object p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    .line 64
    if-eqz v1, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "proximity_sensor"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, currntProximitySensor:I
    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 71
    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 72
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 74
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902ba

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$3;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902bb

    new-instance v4, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/PowerKeyEndPreference$1;-><init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    .end local v0           #currntProximitySensor:I
    :goto_0
    return-void

    .line 113
    .restart local v0       #currntProximitySensor:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    iput-boolean v5, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 119
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 122
    .end local v0           #currntProximitySensor:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "incall_power_button_behavior"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iput-boolean v4, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    .line 128
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z

    invoke-virtual {p0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSumary()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "powey_key_ends_call_during_screen_off"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f0902f4

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const v0, 0x7f0902f3

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
