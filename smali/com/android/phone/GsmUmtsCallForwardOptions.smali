.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private bGsmRoamingNetwork:Z

.field private bSlot1RoamingNetwork:Z

.field private bSlot2RoamingNetwork:Z

.field private disableScreen:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsLaunchFromWidget:Z

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field mToast:Landroid/widget/Toast;

.field private prefVal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 94
    sput v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 80
    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 84
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bGsmRoamingNetwork:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 416
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 417
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 418
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 416
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 454
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 455
    .local v0, FILE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 456
    .local v3, in:Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 458
    .local v1, current_slot:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 464
    if-eqz v4, :cond_0

    .line 465
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 471
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 472
    const-string v1, "0"

    .line 475
    :cond_2
    return-object v1

    .line 466
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    const-string v5, "GsmUmtsCallForwardOptions"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 469
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 460
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 461
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    if-eqz v3, :cond_1

    .line 465
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 466
    :catch_2
    move-exception v2

    .line 467
    const-string v5, "GsmUmtsCallForwardOptions"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 464
    :goto_2
    if-eqz v3, :cond_3

    .line 465
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 468
    :cond_3
    :goto_3
    throw v5

    .line 466
    :catch_3
    move-exception v2

    .line 467
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "GsmUmtsCallForwardOptions"

    const-string v7, "File close error"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 463
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 460
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 370
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 372
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    :cond_2
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 383
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 399
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v9, "feature_chn_duos_gsm_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "feature_chn_duos_support_cgg"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 136
    :cond_0
    const-string v9, "gsm.sim.currentcardstatus"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, simState1:I
    const-string v9, "gsm.sim.currentcardstatus2"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 139
    .local v7, simState2:I
    const-string v9, "GsmUmtsCallForwardOptions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GsmUmts sim1= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sim2= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v9, 0x3

    if-ne v6, v9, :cond_6

    const/4 v9, 0x3

    if-ne v7, v9, :cond_6

    .line 142
    const-string v9, "GsmUmtsCallForwardOptions"

    const-string v10, "DUAL SIM"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 145
    const-string v9, "GsmUmtsCallForwardOptions"

    const-string v10, "Bundle is not null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v9, "CallSettingTab"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    .line 147
    const-string v9, "GsmUmtsCallForwardOptions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GsmUmts mSimId= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1           #arg:Landroid/os/Bundle;
    .end local v6           #simState1:I
    .end local v7           #simState2:I
    :cond_1
    :goto_0
    const-string v9, "GsmUmtsCallForwardOptions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const v9, 0x7f060010

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 206
    const-string v9, "true"

    const-string v10, "gsm.operator.isroaming"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    .line 207
    const-string v9, "true"

    const-string v10, "gsm.operator.isroaming2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    .line 208
    const-string v9, "GsmUmtsCallForwardOptions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Roaming Slot1= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Slot2= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 211
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v9, "button_cfu_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CallForwardEditPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 212
    const-string v9, "button_cfb_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CallForwardEditPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 213
    const-string v9, "button_cfnry_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CallForwardEditPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 214
    const-string v9, "button_cfnrc_key"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CallForwardEditPreference;

    iput-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 216
    const-string v9, "feature_chn_duos_support_cgg"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 217
    iget-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eqz v9, :cond_3

    :cond_2
    iget-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    if-eqz v9, :cond_4

    sget v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 218
    :cond_3
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_4
    :goto_1
    const-string v9, "default_vm_in_callforwarding"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 225
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 226
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 227
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 228
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 236
    :goto_2
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 246
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mCanShowDialog:Z

    .line 247
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 249
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "FROMWIDGET"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 252
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 254
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 257
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mToast:Landroid/widget/Toast;

    .line 258
    iget-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-nez v9, :cond_14

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    return-void

    .line 149
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v4           #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v6       #simState1:I
    .restart local v7       #simState2:I
    :cond_6
    const/4 v9, 0x3

    if-ne v7, v9, :cond_7

    .line 150
    const-string v9, "GsmUmtsCallForwardOptions"

    const-string v10, "SIM2 Only"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v9, 0x1

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 152
    :cond_7
    const/4 v9, 0x3

    if-ne v6, v9, :cond_8

    .line 153
    const-string v9, "GsmUmtsCallForwardOptions"

    const-string v10, "SIM1 Only"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v9, 0x0

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 156
    :cond_8
    const-string v9, "feature_chn_duos_support_cgg"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 157
    const/4 v9, 0x1

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 159
    :cond_9
    const/4 v9, 0x0

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 161
    .end local v6           #simState1:I
    .end local v7           #simState2:I
    :cond_a
    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 162
    const/4 v9, 0x1

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 163
    :cond_b
    const-string v9, "sec_product_feature_common_dsds_support"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 165
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v2

    .line 166
    .local v2, dualSimState:I
    const/4 v3, 0x0

    .line 168
    .local v3, mIsDualSimTurnedOn:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 171
    const/4 v3, 0x1

    .line 174
    :cond_d
    const/4 v9, 0x3

    if-eq v2, v9, :cond_e

    if-eqz v3, :cond_10

    .line 175
    :cond_e
    const-string v9, "GsmUmtsCallForwardOptions"

    const-string v10, "DUAL SIM"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-boolean v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    if-eqz v9, :cond_f

    .line 187
    sget v9, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 189
    :cond_f
    sget v9, Lcom/android/phone/NotificationMgr;->simIdForCfi:I

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 193
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneUtilsDsds;->getDefaultSimForVoiceCalls()I

    move-result v9

    sput v9, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    .line 197
    .end local v2           #dualSimState:I
    .end local v3           #mIsDualSimTurnedOn:Z
    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 198
    .local v8, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 199
    .local v5, simState:I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1

    .line 200
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    goto/16 :goto_0

    .line 219
    .end local v5           #simState:I
    .end local v8           #telMgr:Landroid/telephony/TelephonyManager;
    .restart local v4       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_12
    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-static {v9}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 220
    iget-boolean v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 221
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 230
    :cond_13
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 231
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 232
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;I)V

    .line 233
    iget-object v9, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v10, v10, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;I)V

    goto/16 :goto_2

    .line 258
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_0

    .line 347
    const-string v1, "GsmUmtsCallForwardOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 351
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 353
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    sget v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 365
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 354
    :cond_2
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    .line 359
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, changedIntent:Landroid/content/Intent;
    const-string v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 362
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4
    .parameter "preference"

    .prologue
    .line 102
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 104
    .local v0, Phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_chn_duos_support_cgg"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :cond_0
    sget v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 107
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    .line 118
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, vmDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    const/4 v2, 0x0

    .line 127
    :goto_1
    return-object v2

    .line 109
    .end local v1           #vmDisplay:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 111
    :cond_3
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 113
    :cond_4
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    aget-object v0, v2, v3

    goto :goto_0

    .line 126
    .restart local v1       #vmDisplay:Ljava/lang/String;
    :cond_6
    const-string v2, "GsmUmtsCallForwardOptions"

    const-string v3, "updating default for call forwarding dialogs"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09004c

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 432
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 441
    const/4 v2, 0x1

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 263
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 265
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-nez v10, :cond_a

    .line 266
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v10, :cond_3

    .line 267
    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v13, "start to init "

    invoke-static {v10, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v13, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    sget v13, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 269
    const-string v10, "sec_product_feature_common_dsds_support"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 272
    :cond_0
    sput-boolean v12, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    .line 292
    :cond_1
    const-string v10, "sec_product_feature_common_dsds_support"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 294
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 295
    .local v8, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 297
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 298
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 299
    .local v5, pref:Landroid/preference/Preference;
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAirplaneModeOn()Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    :goto_1
    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v8           #screen:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    .line 277
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    .line 278
    .local v5, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    const-string v10, "toggle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 280
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 281
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v10, "number"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 282
    const-string v10, "status"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 283
    invoke-virtual {v5, v1, v14}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    .line 285
    const-string v10, "keyEnable"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    .line 286
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v5, p0, v11, v10}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_2

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cf:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .local v5, pref:Landroid/preference/Preference;
    .restart local v8       #screen:Landroid/preference/PreferenceScreen;
    :cond_4
    move v10, v12

    .line 299
    goto :goto_1

    .line 302
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "dsa_main"

    invoke-virtual {v10, v13, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 303
    .local v6, pref_main:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "SelectSimStatus"

    invoke-virtual {v10, v13, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 305
    .local v7, pref_selectSim:Landroid/content/SharedPreferences;
    const-string v10, "SimStatus"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 306
    .local v9, simStatus:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "dsa_is_activate"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_9

    if-ne v9, v11, :cond_6

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eqz v10, :cond_8

    :cond_6
    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eq v10, v11, :cond_8

    :cond_7
    if-nez v9, :cond_9

    .line 310
    :cond_8
    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "DSA_IS_ACTIVATE"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 312
    .restart local v5       #pref:Landroid/preference/Preference;
    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 314
    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #pref_main:Landroid/content/SharedPreferences;
    .end local v7           #pref_selectSim:Landroid/content/SharedPreferences;
    .end local v8           #screen:Landroid/preference/PreferenceScreen;
    .end local v9           #simStatus:I
    :cond_9
    iput-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    .line 319
    iput-object v14, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    .line 321
    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 333
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 336
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    :cond_0
    const-string v3, "keyEnable"

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 342
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_1
    return-void
.end method
