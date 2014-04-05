.class public Lcom/android/phone/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"


# instance fields
.field private mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private domesticCdmaDataRoamingGuardTreeClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "roam_guard_data_domestic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingGuardTreeClick()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "roam_guard_call_domestic"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "roam_guard_call_domestic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingGuardTreeClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "roam_guard_data_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaSmsRoamingGuardTreeClick()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "roam_guard_sms_international"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "roam_guard_sms_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingGuardTreeClick()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "roam_guard_call_international"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "roam_guard_call_international"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmDataRoamingGuardTreeClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "sprint_gsm_data_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalGsmSmsRoamingGuardTreeClick()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "sprint_gsm_sms_guard"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "sprint_gsm_sms_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingGuardTreeClick()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "sprint_gsm_voice_guard"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "sprint_gsm_voice_guard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 184
    const-string v4, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 186
    .local v0, enterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v2, 0x0

    .line 187
    .local v2, roamingPolicy:Landroid/app/enterprise/RoamingPolicy;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v2

    .line 190
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, settingsNetworkMode:I
    const/16 v4, 0xa

    if-ne v4, v3, :cond_3

    .line 196
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 200
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 202
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 224
    .end local v0           #enterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #roamingPolicy:Landroid/app/enterprise/RoamingPolicy;
    .end local v3           #settingsNetworkMode:I
    :cond_2
    :goto_0
    return-void

    .line 205
    .restart local v0       #enterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #roamingPolicy:Landroid/app/enterprise/RoamingPolicy;
    .restart local v3       #settingsNetworkMode:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 206
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 207
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 210
    :cond_4
    if-eq v1, v7, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    .line 213
    :cond_5
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    const-string v0, "RoamingGuard"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 330
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 331
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const-string v1, "RoamingGuard"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const v1, 0x7f060038

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 235
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "domestic_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v1, "domestic_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 237
    const-string v1, "international_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v1, "international_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 239
    const-string v1, "international_cdma_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v1, "international_gsm_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 241
    const-string v1, "international_gsm_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 242
    const-string v1, "international_gsm_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :goto_0
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_0
    return-void

    .line 250
    :cond_1
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09073a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 251
    const-string v1, "international_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f09073c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 83
    const-string v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaVoiceRoamingGuardTreeClick()V

    .line 102
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaVoiceRoamingGuardTreeClick()V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 94
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaSmsRoamingGuardTreeClick()V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 96
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmVoiceRoamingGuardTreeClick()V

    goto :goto_0

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 98
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmSmsRoamingGuardTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    const-string v0, "RoamingGuard"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 270
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 274
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 311
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 297
    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_call_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_call_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_guard_data_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_data_international_forced"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "roam_guard_sms_international"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_voice_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_data_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_sms_guard"

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 297
    goto :goto_1

    :cond_4
    move v0, v2

    .line 299
    goto :goto_2

    :cond_5
    move v0, v2

    .line 301
    goto :goto_3
.end method
