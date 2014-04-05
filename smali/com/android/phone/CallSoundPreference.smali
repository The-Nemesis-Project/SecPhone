.class public Lcom/android/phone/CallSoundPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSoundPreference.java"


# instance fields
.field private mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

.field private mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

.field private mExtraVolPreference:Landroid/preference/CheckBoxPreference;

.field private mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

.field private mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mVoicemailNotificationSound:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 107
    new-instance v0, Lcom/android/phone/CallSoundPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallSoundPreference$1;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallSoundPreference;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallSoundPreference;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallSoundPreference;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 308
    return-void
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 315
    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    const-string v3, "button_voicemail_notification_vibrate_when_key"

    const-string v4, "never"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, vibrateWhen:Ljava/lang/String;
    const-string v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 321
    .local v2, voicemailVibrate:Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    const/4 v3, 0x1

    .line 326
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #vibrateWhen:Ljava/lang/String;
    .end local v2           #voicemailVibrate:Z
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeSoundEQMenu()V
    .locals 4

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 346
    .local v2, prefSet:Landroid/preference/PreferenceGroup;
    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 349
    .local v0, mSoundCategory:Landroid/preference/PreferenceGroup;
    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 350
    .local v1, options:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_0
    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_1
    return-void
.end method

.method private setNoiseReduction(Z)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 163
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 164
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 166
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    const-string v4, "ims_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "noise_reduction_value_for_volte"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :cond_0
    if-eqz p1, :cond_2

    move v2, v5

    .line 171
    .local v2, noiseReductionValue:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    .line 172
    return-void

    .end local v2           #noiseReductionValue:I
    :cond_1
    move v4, v6

    .line 167
    goto :goto_0

    :cond_2
    move v2, v6

    .line 170
    goto :goto_1
.end method

.method private setSystemSettingsForExtraRinger(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_ringer_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSystemSettingsForExtraVolume(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_volume_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEtcPreference()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 281
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_extra_volume"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, defaultVal:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_extra_vol"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 285
    .local v2, showExtraVolSetting:I
    iget-object v6, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    .end local v0           #defaultVal:I
    .end local v2           #showExtraVolSetting:I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/phone/CallSoundPreference;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v4, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->lookupRingtoneName()V

    .line 301
    return-void

    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .restart local v0       #defaultVal:I
    .restart local v2       #showExtraVolSetting:I
    :cond_2
    move v3, v5

    .line 285
    goto :goto_0

    .line 291
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateExtraRingerPreference()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, extraRingerChecked:I
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "extra_ringer"

    const-string v1, "extra_ringer_default_on"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 276
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 270
    goto :goto_0

    :cond_2
    move v2, v3

    .line 274
    goto :goto_1
.end method

.method private updateMyCallSoundPreference()V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v0

    .line 258
    .local v0, isExtraVolOn:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-virtual {v1}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    .line 260
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 262
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateNoiseReduction()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 234
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 237
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_noise_reduction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 240
    .local v1, noiseReductionValue:I
    if-lt v1, v4, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    .end local v1           #noiseReductionValue:I
    :cond_0
    :goto_1
    return-void

    .line 243
    .restart local v1       #noiseReductionValue:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v7, 0x0

    .line 183
    .local v7, defaultRingtone:Z
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 207
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_1
    const v0, 0x1040697

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_6

    .line 210
    const v0, 0x1040695

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09027d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    .end local v9           #summary:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 191
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, uriString:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    const/4 v1, 0x0

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_1

    .line 196
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    const/4 v7, 0x1

    .line 201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_1

    .line 203
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_5
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_1

    .line 214
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    .end local v10           #uriString:Ljava/lang/String;
    .restart local v9       #summary:Ljava/lang/CharSequence;
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 222
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected initSoundSetting(Z)V
    .locals 7
    .parameter "showSetting"

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 364
    .local v2, prefSet:Landroid/preference/PreferenceGroup;
    const-string v3, "button_soundsetting_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 366
    .local v0, mSoundCategory:Landroid/preference/PreferenceGroup;
    if-nez p1, :cond_1

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    move-object v2, v0

    .line 375
    const-string v3, "button_ringtone_keytone_key"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mButtonRingtoneKeytone:Landroid/preference/PreferenceScreen;

    .line 376
    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/InCallSoundEQListPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundListPreference:Lcom/android/phone/InCallSoundEQListPreference;

    .line 377
    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    .line 378
    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    .line 379
    const-string v3, "extra_ringtone_preference"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    .line 380
    const-string v3, "showing_extra_vol_preference"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    .line 384
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    const-string v3, "feature_dcm_u1"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->removeSoundEQMenu()V

    .line 389
    const-string v3, "button_ringtone_keytone_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 390
    .local v1, options:Landroid/preference/Preference;
    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_2
    const-string v3, "showing_extra_vol_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_3

    .line 394
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    :cond_3
    const-string v3, "button_noise_reduction_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_4

    .line 397
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    .end local v1           #options:Landroid/preference/Preference;
    :cond_4
    const-string v3, "extra_ringer"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 401
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 405
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->removeSoundEQMenu()V

    .line 408
    :cond_6
    const-string v3, "ims_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 410
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->removeSoundEQMenu()V

    .line 413
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 414
    const-string v3, "callsettings_incallsound_eq"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 415
    .restart local v1       #options:Landroid/preference/Preference;
    if-eqz v1, :cond_8

    .line 416
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 434
    const-string v3, "default_noise_reduction"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 435
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_noise_reduction"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 418
    .end local v1           #options:Landroid/preference/Preference;
    :cond_9
    const-string v3, "callsettings_incallsound_eqlist_pref"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 419
    .restart local v1       #options:Landroid/preference/Preference;
    if-eqz v1, :cond_a

    .line 420
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_a
    const-string v3, "ims_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 424
    :cond_b
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_8

    .line 425
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 426
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f090765

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 427
    :cond_c
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 428
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mMyCallSoundPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f090766

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 437
    :cond_d
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 439
    :cond_e
    iget-object v3, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected initVoicemailSetting(Z)V
    .locals 3
    .parameter "showSetting"

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 448
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    if-nez p1, :cond_1

    .line 449
    const-string v2, "button_voicemail_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 450
    .local v0, mVMCategory:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    .end local v0           #mVMCategory:Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v2, "button_voicemail_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 456
    .local v0, mVMCategory:Landroid/preference/PreferenceCategory;
    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationSound:Landroid/preference/Preference;

    .line 457
    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/CallSoundPreference;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 124
    .local v0, actionbar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallSoundPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->initSoundSetting(Z)V

    .line 133
    const-string v1, "remove_voicemail_category"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    .line 139
    :goto_0
    new-instance v1, Lcom/android/phone/CallSoundPreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallSoundPreference$2;-><init>(Lcom/android/phone/CallSoundPreference;)V

    iput-object v1, p0, Lcom/android/phone/CallSoundPreference;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 148
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/CallSoundPreference;->initVoicemailSetting(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 465
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_ringer"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :goto_0
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraRingerPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallSoundPreference;->setSystemSettingsForExtraRinger(Z)V

    .line 494
    :cond_0
    :goto_1
    return v0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "extra_ringer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 478
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_extra_vol"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    :goto_2
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mExtraVolPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallSoundPreference;->setSystemSettingsForExtraVolume(Z)V

    goto :goto_1

    .line 482
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_extra_vol"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 489
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 490
    iget-object v1, p0, Lcom/android/phone/CallSoundPreference;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallSoundPreference;->setNoiseReduction(Z)V

    goto :goto_1

    .line 494
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateNoiseReduction()V

    .line 155
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateMyCallSoundPreference()V

    .line 156
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateExtraRingerPreference()V

    .line 157
    invoke-direct {p0}, Lcom/android/phone/CallSoundPreference;->updateEtcPreference()V

    .line 158
    return-void
.end method
