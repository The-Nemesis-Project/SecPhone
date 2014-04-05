.class public Lcom/android/phone/callsettings/AnsweringCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private fromSettingSearch:Z

.field private mAccessibilityHeadTracking:Landroid/preference/CheckBoxPreference;

.field private mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mFolderKey:Landroid/preference/CheckBoxPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "string"
    .parameter "always"

    .prologue
    .line 398
    const-string v0, "AnsweringCall"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 399
    return-void
.end method


# virtual methods
.method public handleVoiceCmd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, voiceInputControl:I
    if-nez v4, :cond_0

    .line 260
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control_incomming_calls"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, incomingEnabled:I
    const/4 v3, 0x1

    .line 274
    .local v3, toggleIncomingEnabled:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 275
    const/4 v3, 0x0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control_incomming_calls"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 89
    const-string v4, "anykey_mode_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v4, "voice_cmd_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    .line 91
    const-string v4, "powerkey_end_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    .line 92
    const-string v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v4, "folder_mode_preference"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    .line 95
    const-string v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v4, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityHeadTracking:Landroid/preference/CheckBoxPreference;

    .line 98
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 100
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    const-string v4, "anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_0
    const-string v4, "answering_call_in_external_screen"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    const-string v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    :cond_1
    const-string v4, "barge_in"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    new-instance v2, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 111
    .local v2, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-boolean v4, v2, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v4, :cond_2

    .line 112
    const-string v4, "onCreate(): bargeIn disabled.."

    invoke-direct {p0, v4, v7}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    .line 113
    const-string v4, "barge_in"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->disableFeature(Ljava/lang/String;)V

    .line 114
    const-string v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    .end local v2           #mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_2
    :goto_0
    const-string v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    const-string v4, "folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "FROM_ACCESSIBILITY"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 126
    .local v1, extra:Z
    if-nez v1, :cond_4

    .line 127
    const-string v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_4
    const-string v4, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    :cond_5
    return-void

    .line 117
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #extra:Z
    :cond_6
    const-string v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 374
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 387
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 388
    const/4 v2, 0x1

    .line 390
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 302
    .local v1, tapping_mode:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_accessibility_tapping"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 307
    .end local v1           #tapping_mode:I
    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "answering_call_in_external_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    move v0, v2

    .line 310
    .local v0, isChecked:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 311
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0902fd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090022

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$2;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090025

    new-instance v5, Lcom/android/phone/callsettings/AnsweringCall$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AnsweringCall$1;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v0           #isChecked:Z
    :cond_4
    move v0, v1

    .line 308
    goto :goto_1

    .line 332
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 140
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 141
    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    .line 143
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "proximity_sensor"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, proximitySensor:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "incall_power_button_behavior"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 157
    .local v0, endcallbutton:I
    sget-boolean v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v5, :cond_6

    sget v5, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v5, v10, :cond_6

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "powerkey_end_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v5, :cond_6

    .line 159
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    sget-boolean v8, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    .line 171
    :cond_0
    :goto_0
    const-string v5, "hold_key_end_call"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v5, :cond_1

    .line 173
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const v8, 0x7f0907a4

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 174
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const v8, 0x7f0907a5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "answering_accessibility_tapping"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 181
    .local v4, tapping_mode:I
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 182
    iget-object v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-lez v4, :cond_8

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 185
    :cond_2
    sget-boolean v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v5, :cond_9

    sget v5, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v5, v10, :cond_9

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "anykey_mode_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 186
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v8, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    .line 193
    :goto_2
    const-string v5, "answering_call_in_external_screen"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "answering_call_in_external_screen"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_b

    move v2, v6

    .line 196
    .local v2, isChecked:Z
    :goto_3
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 197
    if-nez v2, :cond_c

    .line 198
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 199
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    .end local v2           #isChecked:Z
    :cond_3
    :goto_4
    sget-boolean v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    if-eqz v5, :cond_d

    sget v5, Lcom/android/phone/callsettings/AnsweringCall;->mSettingValue:I

    if-eq v5, v10, :cond_d

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "voice_cmd_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 206
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v8, Lcom/android/phone/callsettings/AnsweringCall;->mCheckValue:Z

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 207
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    .line 213
    :goto_5
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-boolean v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is called by SettingSearch"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    .line 217
    sput-boolean v7, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenu:Z

    .line 218
    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->fromSettingSearch:Z

    .line 219
    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "voice_cmd_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 220
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/callsettings/AnsweringCall;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 226
    :cond_4
    :goto_6
    const-string v5, "support_folder_hardkey"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "answeringmode_folder_open"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_10

    move v1, v6

    .line 228
    .local v1, folder_model:Z
    :goto_7
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 231
    .end local v1           #folder_model:Z
    :cond_5
    return-void

    .line 161
    .end local v4           #tapping_mode:I
    :cond_6
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v5, :cond_0

    .line 162
    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 163
    iput-boolean v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 164
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 166
    :cond_7
    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    .line 167
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .restart local v4       #tapping_mode:I
    :cond_8
    move v5, v7

    .line 182
    goto/16 :goto_1

    .line 189
    :cond_9
    iget-object v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "anykey_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_a

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_a
    move v5, v7

    goto :goto_8

    :cond_b
    move v2, v7

    .line 194
    goto/16 :goto_3

    .line 201
    .restart local v2       #isChecked:Z
    :cond_c
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 209
    .end local v2           #isChecked:Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    goto/16 :goto_5

    .line 221
    :cond_e
    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "anykey_mode_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    sget-object v5, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v8, "powerkey_end_preference"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    :cond_f
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v8, Lcom/android/phone/callsettings/AnsweringCall;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/callsettings/AnsweringCall;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    move v1, v7

    .line 227
    goto :goto_7
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 337
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "========== onSharedPreferenceChanged : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    const-string v6, "anykey_mode_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 341
    .local v1, anykey_mode:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "anykey_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    .end local v1           #anykey_mode:I
    :cond_0
    const-string v6, "answering_call_in_external_screen"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    const-string v6, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    .line 348
    .local v0, answeringExternalScreen:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answering_call_in_external_screen"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    if-lez v0, :cond_6

    move v3, v4

    .line 351
    .local v3, isChecked:Z
    :goto_2
    if-nez v3, :cond_7

    .line 352
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 353
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    .end local v0           #answeringExternalScreen:I
    .end local v3           #isChecked:Z
    :cond_1
    :goto_3
    const-string v6, "folder_mode_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v4

    .line 362
    .local v2, folder_mode:I
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "answeringmode_folder_open"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    .end local v2           #folder_mode:I
    :cond_2
    const-string v4, "powerkey_end_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    .line 370
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 340
    goto :goto_0

    :cond_5
    move v0, v5

    .line 347
    goto :goto_1

    .restart local v0       #answeringExternalScreen:I
    :cond_6
    move v3, v5

    .line 350
    goto :goto_2

    .line 355
    .restart local v3       #isChecked:Z
    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .end local v0           #answeringExternalScreen:I
    .end local v3           #isChecked:Z
    :cond_8
    move v2, v5

    .line 361
    goto :goto_4
.end method

.method public updateVoiceCmdChecked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_incomming_calls"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, incomingEnabled:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 246
    .local v2, voiceInputControl:I
    if-ne v2, v6, :cond_0

    if-ne v0, v6, :cond_0

    .line 247
    const/4 v1, 0x1

    .line 250
    :cond_0
    const-string v3, "barge_in"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    :cond_1
    return-void
.end method
