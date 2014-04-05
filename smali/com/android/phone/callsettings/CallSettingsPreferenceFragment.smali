.class public Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "CallSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/phone/callsettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    }
.end annotation


# static fields
.field protected static isSearching:Z

.field private static mArrayLinkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mCheckValue:Z

.field protected static mOpenDetailMenu:Z

.field protected static mOpenDetailMenuKey:Ljava/lang/String;

.field protected static mSettingValue:I


# instance fields
.field private isCreatedAndNotStopped:Z

.field private mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 74
    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    .line 76
    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    .line 77
    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 78
    sput-boolean v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 412
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;)Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    return-object p1
.end method

.method private isSIPmenu()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 224
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_account_settings_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_receive_calls_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v2, "sip_call_options_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectHeaderforTablet(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 217
    const-string v0, "general_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sound_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sip_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dismissDialog(I)V
    .locals 2
    .parameter "dialogId"

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "CallSettingsPreferenceFragment"

    const-string v1, "Fragment finished. We ignore dismissDialog."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 511
    :cond_0
    return-void
.end method

.method protected getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, extra_bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "args_from_search"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    :goto_0
    if-eqz v1, :cond_5

    .line 95
    const-string v3, "extra_from_search"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, extraFromSearch:Z
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tablet : isSearching = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 98
    sget-boolean v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    move v0, v4

    .line 100
    :cond_0
    :goto_1
    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extraFromSearch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 101
    if-eqz v0, :cond_9

    .line 102
    sput-boolean v0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 103
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    sput-boolean v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSearching:Z

    .line 106
    :cond_1
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    .line 107
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 108
    :cond_2
    const-string v3, "extra_link_key_array"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 111
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, targetKey:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->selectHeaderforTablet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select header - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - for tablet.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v3, v2}, Lcom/android/phone/callsettings/CallSettingsActivity;->setMetaData(Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 118
    const/4 v3, 0x0

    sput-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 125
    .end local v2           #targetKey:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v3, "extra_setting_value"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    .line 126
    sget v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    if-ne v3, v4, :cond_4

    move v5, v4

    :cond_4
    sput-boolean v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    .line 127
    sget v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 128
    const-string v3, "CallSettingsPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOpenDetailMenuKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCheckValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mCheckValue:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 138
    .end local v0           #extraFromSearch:Z
    :cond_5
    :goto_3
    return-void

    .line 92
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_0

    .restart local v0       #extraFromSearch:Z
    :cond_7
    move v0, v5

    .line 98
    goto/16 :goto_1

    .line 123
    :cond_8
    const-string v3, "CallSettingsPreferenceFragment"

    const-string v6, "mArrayLinkKey is not empty"

    invoke-static {v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 130
    :cond_9
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 131
    const-string v3, "CallSettingsPreferenceFragment"

    const-string v4, "mArrayLinkKey == null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sput-boolean v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 555
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 565
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 557
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 562
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareDialog(I)V
    .locals 0
    .parameter "dialogId"

    .prologue
    .line 347
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_split_settings"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/phone/callsettings/CallSettingsActivity;->setCurrentFragment(Landroid/app/Fragment;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 156
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    .line 246
    return-void
.end method

.method protected openSearchDetailMenu()V
    .locals 14

    .prologue
    .line 160
    sget-boolean v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v2, :cond_5

    .line 161
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 162
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 163
    .local v13, targetKey:Ljava/lang/String;
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=== mOpenDetailMenuKey:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentTargetKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 165
    .local v10, open_item:Landroid/preference/Preference;
    if-eqz v10, :cond_9

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 167
    .local v0, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 168
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 169
    .local v11, preferenceAdapter:Landroid/widget/ListAdapter;
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferenceCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , preferenceAdapter size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, position:I
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 172
    invoke-interface {v11, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    .line 173
    .local v7, check_item:Landroid/preference/Preference;
    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsSearch === position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 179
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const/4 v8, 0x1

    .line 181
    .local v8, isAirplaneModeOn:Z
    :goto_1
    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isSIPmenu()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v8, 0x0

    .line 183
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not matter to AirplaneMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    if-nez v8, :cond_7

    instance-of v2, v10, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_7

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 186
    const-string v2, "button_tty_mode_key"

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v4, "tty_mode, set proper value first"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 191
    .local v12, settingsTtyMode:I
    invoke-virtual {p0, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 192
    .local v9, mTTYButton:Landroid/preference/ListPreference;
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    .end local v9           #mTTYButton:Landroid/preference/ListPreference;
    .end local v12           #settingsTtyMode:I
    :cond_2
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 202
    .end local v7           #check_item:Landroid/preference/Preference;
    .end local v8           #isAirplaneModeOn:Z
    :cond_3
    :goto_2
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 203
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in this preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    .line 211
    .end local v0           #ps:Landroid/preference/PreferenceScreen;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v3           #position:I
    .end local v10           #open_item:Landroid/preference/Preference;
    .end local v11           #preferenceAdapter:Landroid/widget/ListAdapter;
    .end local v13           #targetKey:Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 212
    .local v6, activity:Landroid/app/Activity;
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v6           #activity:Landroid/app/Activity;
    :cond_5
    return-void

    .line 180
    .restart local v0       #ps:Landroid/preference/PreferenceScreen;
    .restart local v1       #list:Landroid/widget/ListView;
    .restart local v3       #position:I
    .restart local v7       #check_item:Landroid/preference/Preference;
    .restart local v10       #open_item:Landroid/preference/Preference;
    .restart local v11       #preferenceAdapter:Landroid/widget/ListAdapter;
    .restart local v13       #targetKey:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 196
    .restart local v8       #isAirplaneModeOn:Z
    :cond_7
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :: CheckBox = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v5, v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAirplaneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_2

    .line 171
    .end local v8           #isAirplaneModeOn:Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v0           #ps:Landroid/preference/PreferenceScreen;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v3           #position:I
    .end local v7           #check_item:Landroid/preference/Preference;
    .end local v11           #preferenceAdapter:Landroid/widget/ListAdapter;
    :cond_9
    const-string v2, "CallSettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no preference for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x0

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method protected removeDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 356
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .end local v1           #mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 359
    .restart local v1       #mDismissDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v1, v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 363
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 369
    :cond_2
    :goto_0
    return-void

    .line 365
    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->getDialogId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 366
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method protected setCancelable(Z)V
    .locals 1
    .parameter "canCancel"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 410
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$002(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 388
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    #setter for: Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->access$102(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 399
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 5
    .parameter "dialogId"

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Fragment finished. We ignore showDialog."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-eqz v2, :cond_2

    .line 322
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Old dialog fragment not null!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 326
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_1

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .end local v1           #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    check-cast v1, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 329
    .restart local v1       #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    if-ne v1, v2, :cond_2

    .line 330
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "But, same dialog. We ignore showDialog command."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #mCheckDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;
    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->isCreatedAndNotStopped:Z

    if-nez v2, :cond_3

    .line 335
    const-string v2, "CallSettingsPreferenceFragment"

    const-string v3, "Fragment is not visible. We ignore showDialog."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_3
    new-instance v2, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;-><init>(Lcom/android/phone/callsettings/DialogCreatable;I)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    .line 339
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment$CallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 515
    const v5, 0x7f09004e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "titleRes"

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 522
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 524
    const/4 v1, 0x1

    .line 529
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 526
    :cond_0
    const-string v1, "CallSettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x0

    goto :goto_0
.end method
