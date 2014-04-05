.class public Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

.field private mParticipantUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 80
    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 85
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 87
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/phone/InPSVTCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1}, Lcom/android/phone/InPSVTCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    .line 89
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallMenu;->setMenuSelected(I)V

    .line 91
    :cond_0
    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 957
    .line 958
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 959
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v9

    .line 963
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    invoke-static {v9}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 965
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 966
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 968
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    if-nez v7, :cond_4

    move-object v0, v6

    .line 971
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    invoke-static {v3}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v8, v0

    .line 975
    :cond_1
    if-eqz v3, :cond_2

    .line 976
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 977
    :cond_2
    return v8

    :cond_3
    move v0, v8

    .line 972
    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_0
.end method

.method private getChatONIdFromContactId(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 924
    .line 925
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 926
    const-string v1, "limit"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 927
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 928
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "sync1"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.sec.chaton\' AND contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 935
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 938
    :cond_0
    if-eqz v0, :cond_1

    .line 939
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_1
    return-object v4
.end method

.method private handleOneHandMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 859
    :goto_0
    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    const-string v0, "ssuport_hand_adapt_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const-string v0, "onehand on"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->unregistCallHandGripChangeObserver()V

    .line 864
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 877
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 857
    goto :goto_0

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 869
    const-string v0, "ssuport_hand_adapt_operation"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getHandAdaptEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 870
    const-string v0, "one hand off"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->registCallHandGripChangeObserver()V

    .line 872
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setHandGripCondition(Z)V

    .line 874
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1
.end method

.method private launchChatON()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 945
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 946
    const-string v0, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 955
    :goto_0
    return-void

    .line 949
    :cond_0
    const-string v0, "launchChatON "

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 951
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const-string v2, "chaton://file"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 952
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 953
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchMemo()V
    .locals 2

    .prologue
    .line 908
    const-string v0, "service_memo_during_call"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.MEMO_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 921
    :goto_0
    return-void

    .line 912
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 913
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 914
    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 4

    .prologue
    .line 880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 883
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string v1, "mms_non_oma"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    const-string v1, "com.btb.intent.action.MESSAGE_START_MSGBOX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    :goto_0
    :try_start_0
    const-string v1, "phone_kk_tablet_gui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeFullScreenIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_1
    return-void

    .line 888
    :cond_1
    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.kddi.android.cmail"

    const-string v3, "com.kddi.android.cmail.ui.detail.NewMessageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 892
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private launchRcsFileTransfer()V
    .locals 4

    .prologue
    .line 982
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 983
    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const-string v1, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 988
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090620

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1053
    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1057
    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1058
    return-void
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const v13, 0x7f020674

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 104
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 105
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 106
    .local v7, itemId:I
    packed-switch v7, :pswitch_data_0

    .line 164
    :pswitch_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 165
    .local v5, etc:Landroid/view/MenuItem;
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    .end local v5           #etc:Landroid/view/MenuItem;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    :pswitch_1
    const v10, 0x7f0a0407

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 110
    .local v9, muteOn:Landroid/view/MenuItem;
    const v10, 0x7f0a0406

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 111
    .local v8, muteOff:Landroid/view/MenuItem;
    const v10, 0x7f020687

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    const v10, 0x7f020688

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    const-string v10, "mute_menu_in_easy_mode"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 114
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    .line 115
    .local v4, currentMuteState:Z
    if-nez v4, :cond_1

    move v10, v11

    :goto_2
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    move v10, v12

    .line 115
    goto :goto_2

    .line 118
    .end local v4           #currentMuteState:Z
    :cond_2
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 124
    .end local v8           #muteOff:Landroid/view/MenuItem;
    .end local v9           #muteOn:Landroid/view/MenuItem;
    :pswitch_2
    const v10, 0x7f0a0404

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 125
    .local v2, btHeadsetOnItem:Landroid/view/MenuItem;
    const v10, 0x7f0a0405

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 126
    .local v1, btHeadsetOffItem:Landroid/view/MenuItem;
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 127
    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 128
    const-string v10, "bt_menu_in_easy_mode"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 129
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 130
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    .line 131
    .local v3, currentBtState:Z
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    if-nez v3, :cond_3

    move v10, v11

    :goto_3
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v10, v12

    goto :goto_3

    .line 135
    .end local v3           #currentBtState:Z
    :cond_4
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 139
    :cond_5
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 145
    .end local v1           #btHeadsetOffItem:Landroid/view/MenuItem;
    .end local v2           #btHeadsetOnItem:Landroid/view/MenuItem;
    :pswitch_3
    const v10, 0x7f0a040c

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    .local v0, addUserVoice:Landroid/view/MenuItem;
    const-string v10, "ims_conference_voice"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 147
    const-string v10, "feature_lgt"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 148
    iget-object v10, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 149
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 153
    :cond_6
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 158
    :cond_7
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 170
    .end local v0           #addUserVoice:Landroid/view/MenuItem;
    .end local v7           #itemId:I
    :cond_8
    return v11

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0404
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 95
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InPSVTCallMenu;->clearVTCommonFunctionReference()V

    .line 100
    :cond_0
    return-void
.end method

.method public onPressNoiseReductionMenu()V
    .locals 6

    .prologue
    const v5, 0x7f09039a

    const v4, 0x7f090399

    const v3, 0x7f090397

    const v2, 0x7f090398

    .line 1011
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 1014
    invoke-virtual {p0}, Lcom/android/phone/InCallMenu;->shouldShowHeadsetToast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    .line 1048
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1021
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1024
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "noise_suppression_support_speaker"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1026
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1027
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 1029
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1032
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1033
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0

    .line 1035
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isHacEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1038
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 1042
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 1043
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->noiseReductionBroadcast(Landroid/content/Context;I)V

    .line 1044
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f09037e

    :goto_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 1042
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 1046
    :cond_a
    const v0, 0x7f09037d

    goto :goto_2
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- optionsItemSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  title: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v2, :cond_0

    .line 709
    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null mInCallScreen!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 852
    :goto_0
    return v0

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 713
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 715
    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 717
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    invoke-virtual {v3, p1}, Lcom/android/phone/InPSVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 718
    goto :goto_0

    .line 722
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 847
    const-string v1, "InCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (MenuItem = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 737
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    :goto_1
    move v0, v1

    .line 852
    goto :goto_0

    .line 741
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01c7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 745
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 749
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMessage()V

    .line 750
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->inCallmoveTaskToBack()V

    goto :goto_1

    .line 754
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMemo()V

    goto :goto_1

    .line 759
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01cb

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 763
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01d7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 766
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01d8

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 770
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01e2

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 773
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InCallMenu;->onPressNoiseReductionMenu()V

    goto :goto_1

    .line 777
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V

    goto :goto_1

    .line 781
    :sswitch_b
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchChatON()V

    goto :goto_1

    .line 784
    :sswitch_c
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    .line 787
    :sswitch_d
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 792
    :cond_4
    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 794
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getActiveSimId()I

    move-result v3

    if-nez v3, :cond_5

    .line 800
    :goto_2
    const-string v3, "simId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 798
    goto :goto_2

    .line 802
    :cond_6
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 803
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.start_main_activity"

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 805
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 810
    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 811
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.bst.uimdual"

    const-string v4, "com.samsung.bst.uimdual.RegisterCardInfo"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 812
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 816
    :sswitch_f
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 817
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 819
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1

    .line 824
    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01cf

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 828
    :sswitch_11
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a01c9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 832
    :sswitch_12
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->handleOneHandMode()V

    goto/16 :goto_1

    .line 837
    :sswitch_13
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 840
    :sswitch_14
    const-string v0, " Menu : Select camera on"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onModifyCallByCameraButton()V

    goto/16 :goto_1

    .line 844
    :sswitch_15
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0a040c

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 722
    :sswitch_data_0
    .sparse-switch
        0x7f0a00fc -> :sswitch_3
        0x7f0a038c -> :sswitch_9
        0x7f0a03f5 -> :sswitch_8
        0x7f0a03f6 -> :sswitch_8
        0x7f0a03f7 -> :sswitch_6
        0x7f0a03f8 -> :sswitch_7
        0x7f0a03f9 -> :sswitch_11
        0x7f0a03fa -> :sswitch_0
        0x7f0a03fb -> :sswitch_1
        0x7f0a03fc -> :sswitch_2
        0x7f0a03fd -> :sswitch_4
        0x7f0a03fe -> :sswitch_5
        0x7f0a03ff -> :sswitch_5
        0x7f0a0400 -> :sswitch_a
        0x7f0a0401 -> :sswitch_b
        0x7f0a0402 -> :sswitch_c
        0x7f0a0403 -> :sswitch_f
        0x7f0a0404 -> :sswitch_10
        0x7f0a0405 -> :sswitch_10
        0x7f0a0406 -> :sswitch_13
        0x7f0a0407 -> :sswitch_13
        0x7f0a0408 -> :sswitch_12
        0x7f0a0409 -> :sswitch_d
        0x7f0a040a -> :sswitch_e
        0x7f0a040b -> :sswitch_14
        0x7f0a040c -> :sswitch_15
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 52
    .parameter "menu"

    .prologue
    .line 174
    const-string v49, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v21

    .line 183
    .local v21, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v49, "feature_chn_duos"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 185
    .local v18, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 186
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v39

    .line 195
    .local v39, rCall:Lcom/android/internal/telephony/Call;
    :goto_0
    const-string v49, "tablet_device"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_3

    .line 196
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v49

    if-eqz v49, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v49

    if-eqz v49, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v49

    if-eqz v49, :cond_3

    .line 197
    :cond_0
    const/16 v40, 0x0

    .line 700
    :cond_1
    :goto_1
    return v40

    .line 188
    .end local v6           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v18           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v39           #rCall:Lcom/android/internal/telephony/Call;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 189
    .restart local v18       #fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 190
    .restart local v6       #bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v39

    .restart local v39       #rCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 201
    :cond_3
    const-string v49, "support_easy_mode"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_6

    .line 204
    const/16 v40, 0x0

    .line 205
    .local v40, result:Z
    const-string v49, "mute_menu_in_easy_mode"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_4

    const-string v49, "bt_menu_in_easy_mode"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_5

    .line 207
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v40

    .line 209
    :cond_5
    const-string v49, "common_volte_vt_kor"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 210
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 217
    .end local v40           #result:Z
    :cond_6
    const-string v49, "support_nsri_secure"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_7

    .line 218
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/PhoneGlobals;->isNSRISecureCall()Z

    move-result v49

    if-eqz v49, :cond_7

    const/16 v40, 0x0

    goto :goto_1

    .line 221
    :cond_7
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v49

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_52

    .line 222
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Landroid/view/MenuItem;->getItemId()I

    move-result v26

    .line 223
    .local v26, itemId:I
    sparse-switch v26, :sswitch_data_0

    .line 221
    :cond_8
    :goto_3
    :sswitch_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 226
    :sswitch_1
    const v49, 0x7f0a03f6

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 227
    .local v17, extraVolumeOn:Landroid/view/MenuItem;
    const v49, 0x7f0a03f5

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 228
    .local v16, extraVolumeOff:Landroid/view/MenuItem;
    const-string v49, "phone_kk_tablet_gui"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_a

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_9

    .line 230
    const/16 v49, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 233
    :cond_9
    const/16 v49, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    const/16 v49, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 237
    :cond_a
    const/16 v49, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 242
    .end local v16           #extraVolumeOff:Landroid/view/MenuItem;
    .end local v17           #extraVolumeOn:Landroid/view/MenuItem;
    :sswitch_2
    const v49, 0x7f0a03f7

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 243
    .local v19, holdItem:Landroid/view/MenuItem;
    const-string v49, "phone_kk_tablet_gui"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_c

    .line 244
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v49, v0

    if-eqz v49, :cond_b

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v49, v0

    if-nez v49, :cond_b

    .line 245
    const/16 v49, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 247
    :cond_b
    const/16 v49, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 249
    :cond_c
    const/16 v49, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 253
    .end local v19           #holdItem:Landroid/view/MenuItem;
    :sswitch_3
    const v49, 0x7f0a03f8

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v47

    .line 254
    .local v47, unholdItem:Landroid/view/MenuItem;
    const-string v49, "phone_kk_tablet_gui"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_e

    .line 255
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v49, v0

    if-eqz v49, :cond_d

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v49, v0

    if-eqz v49, :cond_d

    .line 256
    const/16 v49, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 258
    :cond_d
    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 260
    :cond_e
    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 265
    .end local v47           #unholdItem:Landroid/view/MenuItem;
    :sswitch_4
    const v49, 0x7f0a0407

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 266
    .local v33, muteOn:Landroid/view/MenuItem;
    const v49, 0x7f0a0406

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 267
    .local v32, muteOff:Landroid/view/MenuItem;
    const/16 v49, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    const/16 v49, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 273
    .end local v32           #muteOff:Landroid/view/MenuItem;
    .end local v33           #muteOn:Landroid/view/MenuItem;
    :sswitch_5
    const v49, 0x7f0a03fc

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 274
    .local v27, launchContact:Landroid/view/MenuItem;
    const v49, 0x7f020689

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    const-string v49, "no_receiver_in_call"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_f

    const-string v49, "phone_kk_tablet_gui"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_f

    .line 276
    const/16 v49, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 278
    :cond_f
    const/16 v49, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 284
    .end local v27           #launchContact:Landroid/view/MenuItem;
    :sswitch_6
    const v49, 0x7f0a03f9

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 285
    .local v30, mergeCalls:Landroid/view/MenuItem;
    const v49, 0x7f02069d

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 286
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v49, v0

    if-eqz v49, :cond_13

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v49

    sget-object v50, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_13

    const-string v49, "voice_call_recording"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_10

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v49, v0

    if-nez v49, :cond_10

    const-string v49, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_11

    :cond_10
    const-string v49, "support_merge_call"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_12

    :cond_11
    const-string v49, "ims_rcs"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_13

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v49

    if-eqz v49, :cond_13

    .line 292
    :cond_12
    const/16 v49, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 294
    :cond_13
    const/16 v49, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 299
    .end local v30           #mergeCalls:Landroid/view/MenuItem;
    :sswitch_7
    const v49, 0x7f0a03fa

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 300
    .local v28, manageCofCall:Landroid/view/MenuItem;
    const v49, 0x7f020685

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    if-eqz v18, :cond_19

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_19

    const-string v49, "manage_conference_call_menu_disable"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_14

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_19

    :cond_14
    const-string v49, "onscreen_manage_conference"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_19

    .line 317
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v49

    const-string v50, "com.android.internal.telephony.ims.ImsPhone"

    invoke-static/range {v50 .. v50}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_18

    .line 318
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_4
    const-string v49, "feature_ctc"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_15

    const-string v49, "feature_lgt"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_16

    .line 337
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v37

    .line 338
    .local v37, phoneType:I
    const/16 v49, 0x2

    move/from16 v0, v37

    move/from16 v1, v49

    if-ne v0, v1, :cond_16

    .line 339
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    .end local v37           #phoneType:I
    :cond_16
    const-string v49, "feature_kdi"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_17

    .line 344
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v49, v0

    sget-object v50, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_8

    .line 351
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 320
    :cond_18
    const/16 v49, 0x1

    :try_start_1
    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 322
    :catch_0
    move-exception v15

    .line 323
    .local v15, e:Ljava/lang/Exception;
    const-string v49, "IPPhone doesn\'t exist"

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    goto :goto_4

    .line 328
    .end local v15           #e:Ljava/lang/Exception;
    :cond_19
    if-eqz v18, :cond_1a

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_1a

    const-string v49, "global_network_cdma_gsm_enable"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_1a

    .line 331
    const/16 v49, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 333
    :cond_1a
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 355
    .end local v28           #manageCofCall:Landroid/view/MenuItem;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v25

    .line 356
    .local v25, isWebExEnabled:Z
    const v49, 0x7f0a03fb

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 357
    .local v4, addCall:Landroid/view/MenuItem;
    const v49, 0x7f02067a

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1e

    if-nez v25, :cond_1b

    const-string v49, "ims_rcs"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1e

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v49

    if-eqz v49, :cond_1e

    .line 362
    :cond_1b
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :goto_5
    const-string v49, "roaming_auto_dial"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1c

    .line 368
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v37

    .line 369
    .restart local v37       #phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    if-eqz v49, :cond_1c

    const/16 v49, 0x2

    move/from16 v0, v37

    move/from16 v1, v49

    if-ne v0, v1, :cond_1c

    .line 370
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    .end local v37           #phoneType:I
    :cond_1c
    const-string v49, "voice_call_recording"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1d

    const-string v49, "voice_call_recording_menu"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_1d

    .line 375
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    :cond_1d
    const-string v49, "common_volte"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isIMSVideoCallActive(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_8

    .line 379
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 364
    :cond_1e
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 385
    .end local v4           #addCall:Landroid/view/MenuItem;
    .end local v25           #isWebExEnabled:Z
    :sswitch_9
    const v49, 0x7f0a03fe

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v43

    .line 386
    .local v43, startRecord:Landroid/view/MenuItem;
    const v49, 0x7f0a03ff

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v44

    .line 387
    .local v44, stopRecord:Landroid/view/MenuItem;
    const v49, 0x7f020693

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    const v49, 0x7f020694

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 389
    const/16 v49, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 391
    const-string v49, "voice_call_recording"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_20

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v49

    if-nez v49, :cond_1f

    const-string v49, "voice_call_recording_menu"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_1f

    const-string v49, "ims_rcs"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_20

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v49

    if-eqz v49, :cond_20

    .line 394
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v24

    .line 395
    .local v24, isRecording:Z
    if-nez v24, :cond_22

    const/16 v49, 0x1

    :goto_6
    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    move-object/from16 v0, v44

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    if-eqz v24, :cond_23

    .line 399
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v49, v0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 405
    .end local v24           #isRecording:Z
    :cond_20
    :goto_7
    const-string v49, "automatic_answering_machine"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_8

    .line 406
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isPlayGuidance()Z

    move-result v49

    if-nez v49, :cond_21

    invoke-static {}, Lcom/android/phone/AnsweringMemoRecorder;->getInstance()Lcom/android/phone/AnsweringMemoRecorder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v49

    if-eqz v49, :cond_8

    .line 407
    :cond_21
    const/16 v49, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    const/16 v49, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 395
    .restart local v24       #isRecording:Z
    :cond_22
    const/16 v49, 0x0

    goto :goto_6

    .line 401
    :cond_23
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v49, v0

    move-object/from16 v0, v43

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 415
    .end local v24           #isRecording:Z
    .end local v43           #startRecord:Landroid/view/MenuItem;
    .end local v44           #stopRecord:Landroid/view/MenuItem;
    :sswitch_a
    const v49, 0x7f0a00fc

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 416
    .local v31, message:Landroid/view/MenuItem;
    const v49, 0x7f02067b

    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    const-string v49, "feature_kdi"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_27

    .line 418
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v37

    .line 419
    .restart local v37       #phoneType:I
    const/16 v49, 0x2

    move/from16 v0, v37

    move/from16 v1, v49

    if-ne v0, v1, :cond_24

    .line 420
    const/16 v49, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 422
    :cond_24
    const-string v49, "menu_message"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_25

    const-string v49, "in_call_menu_message_enable"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_26

    :cond_25
    const/16 v49, 0x1

    :goto_8
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_26
    const/16 v49, 0x0

    goto :goto_8

    .line 425
    .end local v37           #phoneType:I
    :cond_27
    const-string v49, "menu_message"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_28

    const-string v49, "in_call_menu_message_enable"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_29

    :cond_28
    const/16 v49, 0x1

    :goto_9
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_29
    const/16 v49, 0x0

    goto :goto_9

    .line 430
    .end local v31           #message:Landroid/view/MenuItem;
    :sswitch_b
    const v49, 0x7f0a03fd

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 431
    .local v29, memo:Landroid/view/MenuItem;
    const v49, 0x7f020686

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 432
    const-string v49, "use_action_memo_string"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2a

    .line 433
    const v49, 0x7f09037c

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 434
    :cond_2a
    const-string v49, "use_snote_string"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2b

    .line 435
    const v49, 0x7f09037b

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 438
    :cond_2b
    const-string v49, "in_call_menu_memo_enable"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 442
    .end local v29           #memo:Landroid/view/MenuItem;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 443
    .local v38, previousChatOnID:Ljava/lang/String;
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 445
    const-string v49, "feature_chn_duos"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2e

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v22

    .line 450
    .local v22, isMulticall:Z
    :goto_a
    if-nez v22, :cond_2d

    .line 451
    if-nez v18, :cond_2c

    .line 452
    move-object/from16 v18, v6

    .line 454
    :cond_2c
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-nez v49, :cond_2d

    .line 455
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    .line 456
    .local v14, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-static {v0, v14}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v12

    .line 457
    .local v12, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v12, :cond_30

    iget-boolean v0, v12, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v49, v0

    if-eqz v49, :cond_30

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v49, v0

    iget-wide v0, v12, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_2f

    .line 460
    iget-wide v0, v12, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v49, v0

    move-wide/from16 v0, v49

    long-to-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->getChatONIdFromContactId(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 471
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #conn:Lcom/android/internal/telephony/Connection;
    :cond_2d
    :goto_b
    const v49, 0x7f0a0401

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 472
    .local v11, chatOnItem:Landroid/view/MenuItem;
    const v49, 0x7f020690

    move/from16 v0, v49

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_31

    .line 474
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 448
    .end local v11           #chatOnItem:Landroid/view/MenuItem;
    .end local v22           #isMulticall:Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v22

    .restart local v22       #isMulticall:Z
    goto/16 :goto_a

    .line 463
    .restart local v12       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #conn:Lcom/android/internal/telephony/Connection;
    :cond_2f
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    goto :goto_b

    .line 466
    :cond_30
    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    goto :goto_b

    .line 476
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #conn:Lcom/android/internal/telephony/Connection;
    .restart local v11       #chatOnItem:Landroid/view/MenuItem;
    :cond_31
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 480
    .end local v11           #chatOnItem:Landroid/view/MenuItem;
    .end local v22           #isMulticall:Z
    .end local v38           #previousChatOnID:Ljava/lang/String;
    :sswitch_d
    const v49, 0x7f0a0402

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 481
    .local v3, RcsFileTransferItem:Landroid/view/MenuItem;
    const v49, 0x7f020683

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 482
    const-string v49, "ims_rcs"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_34

    .line 483
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v49

    if-eqz v49, :cond_33

    .line 484
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->IsActiveRcsFT()Z

    move-result v49

    if-eqz v49, :cond_32

    .line 486
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 488
    :cond_32
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 491
    :cond_33
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 494
    :cond_34
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 499
    .end local v3           #RcsFileTransferItem:Landroid/view/MenuItem;
    :sswitch_e
    const v49, 0x7f0a0400

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v48

    .line 500
    .local v48, voiceEQ:Landroid/view/MenuItem;
    const v49, 0x7f02067d

    invoke-interface/range {v48 .. v49}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_35

    .line 502
    const/16 v49, 0x1

    invoke-interface/range {v48 .. v49}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    :goto_c
    const/16 v49, 0x0

    invoke-interface/range {v48 .. v49}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 504
    :cond_35
    const/16 v49, 0x0

    invoke-interface/range {v48 .. v49}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 512
    .end local v48           #voiceEQ:Landroid/view/MenuItem;
    :sswitch_f
    const v49, 0x7f0a038c

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 513
    .local v34, noiseReductionItem:Landroid/view/MenuItem;
    const v49, 0x7f02068a

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 514
    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_37

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_36

    .line 517
    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 527
    :goto_d
    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 519
    :cond_36
    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 522
    :cond_37
    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 531
    .end local v34           #noiseReductionItem:Landroid/view/MenuItem;
    :sswitch_10
    const-string v49, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_3a

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneIndex()I

    move-result v49

    if-nez v49, :cond_39

    .line 533
    const-string v49, "gsm.STK_SETUP_MENU"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 546
    .local v41, simService:Ljava/lang/String;
    :goto_e
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "simService - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 547
    const v49, 0x7f0a0409

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v42

    .line 548
    .local v42, simServices:Landroid/view/MenuItem;
    const-string v49, "feature_ctc"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_38

    const-string v49, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_38

    const-string v49, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_38

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v37

    .line 552
    .restart local v37       #phoneType:I
    const/16 v49, 0x2

    move/from16 v0, v37

    move/from16 v1, v49

    if-ne v0, v1, :cond_38

    .line 553
    const v49, 0x7f09038e

    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 556
    .end local v37           #phoneType:I
    :cond_38
    const v49, 0x7f020692

    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 557
    if-eqz v41, :cond_3e

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_3e

    const/16 v49, 0x1

    :goto_f
    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 535
    .end local v41           #simService:Ljava/lang/String;
    .end local v42           #simServices:Landroid/view/MenuItem;
    :cond_39
    const-string v49, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41       #simService:Ljava/lang/String;
    goto/16 :goto_e

    .line 536
    .end local v41           #simService:Ljava/lang/String;
    :cond_3a
    const-string v49, "sec_product_feature_common_dsds_support"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_3c

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->getActiveSimId()I

    move-result v49

    if-nez v49, :cond_3b

    .line 538
    const-string v49, "gsm.STK_SETUP_MENU"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41       #simService:Ljava/lang/String;
    goto/16 :goto_e

    .line 540
    .end local v41           #simService:Ljava/lang/String;
    :cond_3b
    const-string v49, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41       #simService:Ljava/lang/String;
    goto/16 :goto_e

    .line 541
    .end local v41           #simService:Ljava/lang/String;
    :cond_3c
    const-string v49, "feature_multisim"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_3d

    .line 542
    const-string v49, "gsm.STK_SETUP_MENU"

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v50

    invoke-static/range {v49 .. v50}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41       #simService:Ljava/lang/String;
    goto/16 :goto_e

    .line 544
    .end local v41           #simService:Ljava/lang/String;
    :cond_3d
    const-string v49, "gsm.STK_SETUP_MENU"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .restart local v41       #simService:Ljava/lang/String;
    goto/16 :goto_e

    .line 557
    .restart local v42       #simServices:Landroid/view/MenuItem;
    :cond_3e
    const/16 v49, 0x0

    goto :goto_f

    .line 560
    .end local v41           #simService:Ljava/lang/String;
    .end local v42           #simServices:Landroid/view/MenuItem;
    :sswitch_11
    const v49, 0x7f0a040a

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v46

    .line 561
    .local v46, uimServices:Landroid/view/MenuItem;
    const v49, 0x7f020692

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 562
    const-string v49, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_3f

    const-string v49, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_42

    .line 564
    :cond_3f
    const-string v49, "gsm.UTK_SETUP_MENU"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 565
    .local v45, uimService:Ljava/lang/String;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "uimService - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 566
    if-eqz v45, :cond_40

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_40

    const/16 v49, 0x1

    :goto_10
    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 567
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, " UIM - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    if-eqz v45, :cond_41

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_41

    const/16 v49, 0x1

    :goto_11
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 566
    :cond_40
    const/16 v49, 0x0

    goto :goto_10

    .line 567
    :cond_41
    const/16 v49, 0x0

    goto :goto_11

    .line 569
    .end local v45           #uimService:Ljava/lang/String;
    :cond_42
    const/16 v49, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 574
    .end local v46           #uimServices:Landroid/view/MenuItem;
    :sswitch_12
    const v49, 0x7f0a0403

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 575
    .local v9, callTransfer:Landroid/view/MenuItem;
    const v49, 0x7f02067c

    move/from16 v0, v49

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 577
    const-string v49, "support_call_transfer"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_45

    if-eqz v18, :cond_45

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v49

    if-nez v49, :cond_45

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v49

    if-nez v49, :cond_45

    .line 579
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-nez v49, :cond_8

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-nez v49, :cond_8

    .line 581
    const-string v49, "feature_kor"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_44

    .line 582
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtilsExt;->isCSCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_43

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->isCSCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_43

    .line 583
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 585
    :cond_43
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 588
    :cond_44
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v49, v0

    move/from16 v0, v49

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 592
    :cond_45
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 598
    .end local v9           #callTransfer:Landroid/view/MenuItem;
    :sswitch_13
    const v49, 0x7f0a0404

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 599
    .local v8, btHeadsetOnItem:Landroid/view/MenuItem;
    const v49, 0x7f0a0405

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 601
    .local v7, btHeadsetOffItem:Landroid/view/MenuItem;
    const-string v49, "ims_rcs"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_49

    .line 602
    const v49, 0x7f020674

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 603
    const v49, 0x7f020674

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 605
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v49

    if-eqz v49, :cond_48

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    if-eqz v49, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v49

    if-eqz v49, :cond_47

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v49

    if-eqz v49, :cond_46

    .line 608
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 611
    :cond_46
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 612
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 615
    :cond_47
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 616
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 619
    :cond_48
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 620
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 623
    :cond_49
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 629
    .end local v7           #btHeadsetOffItem:Landroid/view/MenuItem;
    .end local v8           #btHeadsetOnItem:Landroid/view/MenuItem;
    :sswitch_14
    const v49, 0x7f0a0408

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    .line 630
    .local v35, onehandOperation:Landroid/view/MenuItem;
    const-string v49, "support_onehand_any_screen"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_4a

    .line 631
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isOnehandAnyScreen()Z

    move-result v49

    if-eqz v49, :cond_4a

    .line 632
    const/16 v49, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 636
    :cond_4a
    const-string v49, "support_onehand_operation"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_4e

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    sget-object v50, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_4b

    const/16 v23, 0x1

    .line 639
    .local v23, isOnehandOn:Z
    :goto_12
    if-eqz v23, :cond_4c

    .line 640
    const v49, 0x7f090386

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 641
    const v49, 0x7f02068b

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 647
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/phone/InCallScreen;->isPortraitMode()Z

    move-result v49

    if-eqz v49, :cond_4d

    sget-boolean v49, Lcom/android/phone/PhoneGlobals;->mIsDockConnected:Z

    if-nez v49, :cond_4d

    .line 648
    const/16 v49, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 637
    .end local v23           #isOnehandOn:Z
    :cond_4b
    const/16 v23, 0x0

    goto :goto_12

    .line 643
    .restart local v23       #isOnehandOn:Z
    :cond_4c
    const v49, 0x7f090385

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 644
    const v49, 0x7f02068d

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_13

    .line 650
    :cond_4d
    const/16 v49, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 653
    .end local v23           #isOnehandOn:Z
    :cond_4e
    const/16 v49, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 658
    .end local v35           #onehandOperation:Landroid/view/MenuItem;
    :sswitch_15
    const v49, 0x7f0a040b

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    .line 659
    .local v36, openCamera:Landroid/view/MenuItem;
    if-eqz v36, :cond_8

    .line 660
    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->getIMSCallType(Lcom/android/internal/telephony/Call;)I

    move-result v10

    .line 661
    .local v10, callType:I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    .line 662
    .local v13, cn:Lcom/android/internal/telephony/Connection;
    const-string v49, "vzw_volte_ui"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_4f

    const/16 v49, 0xa

    move/from16 v0, v49

    if-eq v10, v0, :cond_4f

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v49

    if-eqz v49, :cond_4f

    .line 665
    const/16 v49, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 667
    :cond_4f
    const/16 v49, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 672
    .end local v10           #callType:I
    .end local v13           #cn:Lcom/android/internal/telephony/Connection;
    .end local v36           #openCamera:Landroid/view/MenuItem;
    :sswitch_16
    const v49, 0x7f0a040c

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 673
    .local v5, addUserVoice:Landroid/view/MenuItem;
    const-string v49, "ims_conference_voice"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_51

    .line 674
    const-string v49, "feature_lgt"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_8

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneUtilsExt;->isAvailableAddUser(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_50

    .line 676
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 680
    :cond_50
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 685
    :cond_51
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 686
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 695
    .end local v5           #addUserVoice:Landroid/view/MenuItem;
    .end local v26           #itemId:I
    :cond_52
    const-string v49, "common_volte"

    invoke-static/range {v49 .. v49}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_54

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-nez v49, :cond_53

    invoke-static/range {v39 .. v39}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v49

    if-eqz v49, :cond_54

    .line 697
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInPSVTCallMenu:Lcom/android/phone/InPSVTCallMenu;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/InPSVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    .line 700
    :cond_54
    const/16 v40, 0x1

    goto/16 :goto_1

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00fc -> :sswitch_a
        0x7f0a038c -> :sswitch_f
        0x7f0a03f5 -> :sswitch_1
        0x7f0a03f6 -> :sswitch_1
        0x7f0a03f7 -> :sswitch_2
        0x7f0a03f8 -> :sswitch_3
        0x7f0a03f9 -> :sswitch_6
        0x7f0a03fa -> :sswitch_7
        0x7f0a03fb -> :sswitch_8
        0x7f0a03fc -> :sswitch_5
        0x7f0a03fd -> :sswitch_b
        0x7f0a03fe -> :sswitch_0
        0x7f0a03ff -> :sswitch_9
        0x7f0a0400 -> :sswitch_e
        0x7f0a0401 -> :sswitch_c
        0x7f0a0402 -> :sswitch_d
        0x7f0a0403 -> :sswitch_12
        0x7f0a0404 -> :sswitch_0
        0x7f0a0405 -> :sswitch_13
        0x7f0a0406 -> :sswitch_4
        0x7f0a0407 -> :sswitch_4
        0x7f0a0408 -> :sswitch_14
        0x7f0a0409 -> :sswitch_10
        0x7f0a040a -> :sswitch_11
        0x7f0a040b -> :sswitch_15
        0x7f0a040c -> :sswitch_16
    .end sparse-switch
.end method

.method shouldShowHeadsetToast()Z
    .locals 3

    .prologue
    .line 997
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    .line 998
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    .line 1003
    const-string v2, "noise_suppression_support_speaker"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1004
    const/4 v0, 0x0

    .line 1007
    :cond_0
    return v0
.end method
