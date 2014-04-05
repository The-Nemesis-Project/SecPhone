.class public Lcom/android/phone/callsettings/CallSettingsTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsTabFragment.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mMenuId:I

.field private mSelectedTabPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    return-void
.end method

.method private checkOnlySim2Ready()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, onlySim2Ready:Z
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    .local v1, simState1:I
    const-string v3, "gsm.sim.currentcardstatus2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, simState2:I
    const-string v3, "1"

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 273
    :goto_0
    const-string v3, "feature_chn_duos_support_cgg"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->isSlot1Switched()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const-string v3, "CallSettingsTabFragment"

    const-string v4, "onlySim2Ready false"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    .line 278
    :cond_0
    return v0

    .line 267
    :cond_1
    if-eq v1, v5, :cond_2

    if-ne v2, v5, :cond_2

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 5
    .parameter "simId"

    .prologue
    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, simName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 211
    .local v0, defaultSlot1Name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 213
    .local v1, defaultSlot2Name:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtilsDsds;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 251
    :goto_0
    return-object v3

    .line 218
    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/android/phone/PhoneMultiSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_1
    if-nez p0, :cond_5

    .line 223
    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 224
    move-object v2, v0

    .line 234
    :goto_1
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 235
    if-eqz v2, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    :cond_2
    if-nez p0, :cond_7

    .line 237
    move-object v2, v0

    :cond_3
    :goto_2
    move-object v3, v2

    .line 251
    goto :goto_0

    .line 226
    :cond_4
    const-string v3, "gsm.sim.cardname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 228
    :cond_5
    const-string v3, "ril.ICC2_TYPE"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 229
    move-object v2, v1

    goto :goto_1

    .line 231
    :cond_6
    const-string v3, "gsm.sim.cardname2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 239
    :cond_7
    move-object v2, v1

    goto :goto_2

    .line 243
    :cond_8
    if-nez v2, :cond_3

    .line 244
    if-nez p0, :cond_9

    .line 245
    const-string v2, "WCDMA"

    goto :goto_2

    .line 247
    :cond_9
    const-string v2, "GSM"

    goto :goto_2
.end method

.method private getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 282
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 283
    .local v0, FILE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 284
    .local v3, in:Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 286
    .local v1, current_slot:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v5, "CallSettingsTabFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 294
    if-eqz v4, :cond_0

    .line 295
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 301
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 302
    const-string v1, "0"

    .line 305
    :cond_2
    return-object v1

    .line 296
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/io/IOException;
    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 299
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 289
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 290
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    if-eqz v3, :cond_1

    .line 295
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 296
    :catch_2
    move-exception v2

    .line 297
    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 294
    :goto_2
    if-eqz v3, :cond_3

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 298
    :cond_3
    :goto_3
    throw v5

    .line 296
    :catch_3
    move-exception v2

    .line 297
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "CallSettingsTabFragment"

    const-string v7, "File close error"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 293
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 289
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private isSlot1Switched()Z
    .locals 2

    .prologue
    .line 255
    const-string v0, "1"

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 145
    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    :cond_0
    :goto_0
    const-string v0, "CallSettingsTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 156
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 188
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 189
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 193
    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 194
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-ne v0, p2, :cond_a

    .line 195
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 200
    :goto_3
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->checkOnlySim2Ready()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 206
    :cond_1
    :goto_4
    return-void

    .line 150
    :cond_2
    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "CallSettingTab"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 159
    :cond_3
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 160
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 163
    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 164
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 167
    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 168
    const-string v0, "is_voicemail_duos"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 172
    :cond_6
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 173
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 176
    :cond_7
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 177
    const-string v0, "is_ringtone_duos"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 182
    :cond_8
    const-string v0, "CallSettingsTabFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTab : no menu  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 191
    :cond_9
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto/16 :goto_2

    .line 197
    :cond_a
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v2, "CallSettingsTabFragment"

    const-string v3, "oncreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    .line 101
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 103
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const-string v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    .line 112
    if-eqz p1, :cond_3

    .line 113
    const-string v2, "selected_tab_position"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    .line 118
    :goto_0
    invoke-static {v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    .line 119
    invoke-static {v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    .line 122
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 123
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    .line 124
    :cond_1
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 125
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    .line 127
    :cond_2
    return-void

    .line 115
    :cond_3
    iput v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 131
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 139
    const/4 v2, 0x1

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "selected_tab_position"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    :cond_0
    return-void
.end method
