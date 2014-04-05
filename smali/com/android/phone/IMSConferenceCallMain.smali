.class public Lcom/android/phone/IMSConferenceCallMain;
.super Landroid/app/ListActivity;
.source "IMSConferenceCallMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallMain$HolderCtl;,
        Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;,
        Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;
    }
.end annotation


# static fields
.field private static activity:Lcom/android/phone/IMSConferenceCallMain;

.field public static bIsSameUser:Z

.field private static mIsNotifyRcvd:Z

.field private static mNotifiedCallersCnt:I

.field private static mToastObj:Landroid/widget/Toast;


# instance fields
.field private final AUTO_TEST_FLAG:Ljava/lang/String;

.field private CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final ENABLE_TOAST:I

.field private final LOG_TAG:Ljava/lang/String;

.field private ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

.field private final PHONE_NUMBER:Ljava/lang/String;

.field private final REQUEST_CALLERS:I

.field private final REQUEST_PHONE_MULTI:I

.field private final SELECTED_USERS:Ljava/lang/String;

.field private final TOAST_SHORT_DELAY:J

.field private app:Lcom/android/phone/PhoneGlobals;

.field private bToastShowInProgress:Z

.field private conn:Lcom/android/internal/telephony/Connection;

.field private forcefinishing:Z

.field private icCM:Lcom/android/phone/IMSConferenceCallMgr;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private intent:Landroid/content/Intent;

.field private mAddUser:Z

.field private mBeforeText:Ljava/lang/String;

.field private mButton_Send:Landroid/widget/Button;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mContactButton:Landroid/widget/ImageButton;

.field private mDeleteOption:Landroid/view/MenuItem;

.field private mDisableCallers:Z

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

.field private mIsConfTypeVoice:Z

.field private mIsForegroundActivity:Z

.field private mIsMTDevice:Z

.field private mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlusButton:Landroid/widget/ImageButton;

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field private mlayoutCallerAdd:Landroid/view/ViewGroup;

.field private sTitleVal:Ljava/lang/String;

.field textwatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    sput-object v1, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 113
    sput-object v1, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 114
    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->mIsNotifyRcvd:Z

    .line 115
    sput v0, Lcom/android/phone/IMSConferenceCallMain;->mNotifiedCallersCnt:I

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 105
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMain;->ENABLE_TOAST:I

    .line 106
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMain;->TOAST_SHORT_DELAY:J

    .line 107
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    .line 117
    const-string v0, "[IMSConferenceCallMain]"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->LOG_TAG:Ljava/lang/String;

    .line 118
    iput v4, p0, Lcom/android/phone/IMSConferenceCallMain;->REQUEST_CALLERS:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMain;->REQUEST_PHONE_MULTI:I

    .line 120
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    .line 121
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    .line 127
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 128
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 129
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    .line 131
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 132
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 134
    const-string v0, "SELECTED_USERS"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->SELECTED_USERS:Ljava/lang/String;

    .line 135
    const-string v0, "PHONE_NUMBER_FROM_DIALER"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->PHONE_NUMBER:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 138
    const-string v0, ","

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    .line 139
    const-string v0, "$"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    .line 141
    const-string v0, "auto_test"

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->AUTO_TEST_FLAG:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 145
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 149
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    .line 151
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 153
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 154
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 156
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->conn:Lcom/android/internal/telephony/Connection;

    .line 157
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    .line 160
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallMain$1;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    .line 877
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IMSConferenceCallMain$3;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->textwatcher:Landroid/text/TextWatcher;

    .line 1069
    return-void
.end method

.method private InitiateConfCall()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCall(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private InitiateConfCall(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 577
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 580
    const-string v1, "[InitiateConfCall] enter"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 582
    if-nez p1, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 584
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    .line 589
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InitiateConfCall] number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 591
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v1, :cond_1

    .line 592
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->addUserToConfCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I

    .line 625
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 626
    return-void

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 594
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 596
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-nez v1, :cond_2

    .line 597
    const-string v1, "videocall"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    :cond_2
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getCallerListCount()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 601
    const-string v1, "IS_CONF_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    :cond_3
    :goto_2
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InitiateConfCall] phoneIsInUse :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->phoneIsInUse()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 612
    const-string v0, "Active Call running!! Do not allow conference Call as "

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 613
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_5

    .line 614
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09092a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 603
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_3

    .line 604
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f090930

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 616
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09076e

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 620
    :cond_6
    const-string v1, "No Active Call running!! Allow Conference Call"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-static {v4}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 622
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private InitiateConfCallUI()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 492
    const-string v0, "inside InitiateConfCallUI()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 494
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 496
    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mlayoutCallerAdd:Landroid/view/ViewGroup;

    .line 497
    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 498
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 500
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v0, 0x7f0a01c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    .line 502
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->show_SendButton()V

    .line 504
    const v0, 0x7f0a01bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    .line 505
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 509
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->textwatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 510
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 512
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 513
    .local v7, c:Landroid/database/Cursor;
    new-instance v6, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;

    invoke-direct {v6, p0, v7}, Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 514
    .local v6, adapter:Lcom/android/phone/RecipientsAutoCompleteCursorAdapter;
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    if-eqz v7, :cond_0

    .line 516
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_1

    .line 520
    const v0, 0x7f090926

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_1
    const v0, 0x7f0906dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/phone/IMSConferenceCallMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/IMSConferenceCallMain;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mBeforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/IMSConferenceCallMain;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/IMSConferenceCallMain;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMain$HolderCtl;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->setDeleteOption()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->show_SendButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/IMSConferenceCallMain;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMain;->onAdapterButtonClicked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/phone/IMSConferenceCallMain;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IMSConferenceCallMain;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/IMSConferenceCallMain;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/IMSConferenceCallMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IMSConferenceCallMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/IMSConferenceCallMain;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/IMSConferenceCallMain;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private addCallerList(Ljava/lang/String;)V
    .locals 1
    .parameter "newParticipant"

    .prologue
    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    .line 713
    return-void
.end method

.method private addCallerList(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 716
    const-string v0, "inside addCallerList()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 722
    if-eqz p1, :cond_6

    move v3, v4

    move v1, v4

    .line 723
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 724
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 725
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    const v0, 0x7f090773

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    move v0, v1

    .line 723
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->alreadyAddedUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 729
    goto :goto_1

    .line 731
    :cond_1
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v5}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 732
    iget-object v5, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v6, Lcom/android/phone/IMSConferenceCallMgr$State;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$State;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addCallerList]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 744
    :goto_2
    if-eqz v1, :cond_4

    .line 745
    const v0, 0x7f0906d9

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 750
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    .line 751
    return-void

    .line 746
    :cond_4
    if-eqz v0, :cond_3

    .line 747
    const v0, 0x7f0906d8

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v4

    move v1, v4

    goto :goto_2
.end method

.method private alreadyAddedUser(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    const-string v0, "alreadyAddedUser enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    move v0, v1

    .line 808
    :goto_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 809
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v3, v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v3

    .line 810
    if-nez v3, :cond_1

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_1
    iget-object v4, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alreadyAddedUser ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v1, v2

    .line 827
    :cond_2
    :goto_1
    return v1

    .line 818
    :cond_3
    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 821
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alreadyAddedUser ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    move v1, v2

    .line 823
    goto :goto_1
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1221
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    const-string v0, "[IMSConferenceCallMain]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    return-void
.end method

.method private getCallerListCount()I
    .locals 3

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    .line 705
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCallerListCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 706
    return v0
.end method

.method private getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 7
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 541
    const-string v5, "[getInitialListFromIntent] enter"

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-object v1

    .line 547
    :cond_1
    const-string v5, "DEL_USER_FRM_CONF"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    .local v0, isDelClicked:Z
    const-string v5, "ConferenceFromContacts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 549
    .local v4, startedFromContacts:Z
    const-string v5, "ConferenceFromCallLog"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 551
    .local v3, startedFromCallLog:Z
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 553
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 559
    const-string v5, "SELECTED_USERS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 562
    :cond_3
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    const-string v5, "PHONE_NUMBER_FROM_DIALER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, savedNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMaxUserCount()I
    .locals 3

    .prologue
    .line 950
    const/4 v0, 0x3

    .line 952
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_0

    .line 953
    const/16 v0, 0x9

    .line 955
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxUserCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 956
    return v0
.end method

.method private isDeviceOnLTE()Z
    .locals 4

    .prologue
    .line 372
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 373
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 374
    .local v1, networkType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Type returned for TelephonyManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 375
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 376
    const/4 v2, 0x1

    .line 378
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTabs()V
    .locals 3

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v1, "isGroupConference"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1217
    const-string v0, "[IMSConferenceCallMain]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method

.method private makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, -0x1

    .line 451
    move-object v0, p1

    .line 453
    .local v0, formattedString:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 454
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 457
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 459
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 460
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 462
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 463
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 465
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside makeNumber() : formattedString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 469
    return-object v0
.end method

.method private makeNumber(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 476
    .local v1, sCallerNos:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 477
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 478
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 479
    iget-boolean v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v2, :cond_1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain;->ORIGIN_CONF_NO_SPLITSTRING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 488
    .end local v0           #index:I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private onAdapterButtonClicked(Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1206
    :goto_0
    return-void

    .line 1197
    :pswitch_0
    const-string v0, "[IMSConferenceCallMain]"

    const-string v1, "btn_dial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, p2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    .line 1199
    const-string v1, "[IMSConferenceCallMain]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAdapterButtonClicked] btn_dial - position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02b4
        :pswitch_0
    .end packed-switch
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCSVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDeleteOption()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    const/4 v0, 0x0

    .line 852
    .local v0, optionEnable:Z
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    :goto_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 861
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 863
    :cond_2
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setElapsedTime(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 1209
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1210
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    :goto_0
    return-void

    .line 1212
    :cond_0
    invoke-static {p2, p3}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setLayoutForMT(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "conn"

    .prologue
    const/16 v1, 0x8

    .line 527
    if-nez p1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    const-string v0, "[setLayoutForMT] Device is not MT"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    .line 536
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mlayoutCallerAdd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showEmptyToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 803
    :goto_0
    return-void

    .line 797
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 798
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 802
    :goto_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 800
    :cond_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 780
    :goto_0
    return-void

    .line 775
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 776
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 778
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 779
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->bToastShowInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 791
    :goto_0
    return-void

    .line 786
    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 787
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 789
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 790
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private show_SendButton()V
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f090921

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 448
    :goto_1
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    const v1, 0x7f0906db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateUIForSelectedCallerCount()V
    .locals 3

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getCallerListCount()I

    move-result v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    return-void
.end method


# virtual methods
.method public deInitializeMgr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 967
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    .line 969
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 973
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->cleanParticipantsList()V

    .line 976
    :cond_1
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 978
    :cond_2
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 979
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 980
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent(event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 841
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 836
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 837
    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V
    .locals 2
    .parameter "ccm"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 961
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    sget-object v1, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->setActivity(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 962
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->resetLastLog()V

    .line 963
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;-><init>(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMgr;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    .line 964
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 965
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0906da

    const/16 v8, 0x3b

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult() : requestCode(REQUEST_CALLERS)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); resultCode(RESULT_OK)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 637
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    if-ne p1, v2, :cond_2

    if-ne p2, v6, :cond_2

    .line 642
    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 644
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    if-eqz v0, :cond_0

    .line 645
    sput-boolean v7, Lcom/android/phone/IMSConferenceCallMain;->bIsSameUser:Z

    .line 646
    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 649
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onActivityResult() : RESULT_OK ->USER_LIST = size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    if-ne p2, v6, :cond_6

    .line 659
    const-string v0, "[IMSConferenceCallMain]"

    const-string v2, "onActivityResult(REQUEST_PHONE_MULTI & RESULT_OK)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    if-eqz p3, :cond_1

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_5

    .line 664
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 666
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 669
    const-string v4, "P"

    const-string v5, ","

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "W"

    const-string v5, ";"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 672
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 678
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 679
    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    .line 683
    :cond_5
    iput-boolean v7, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 685
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 686
    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 690
    :cond_6
    const-string v0, "onActivityResult() : don\'t doing anything!!!"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f09092f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 384
    :pswitch_1
    const-string v2, "[IMSConferenceCallMain]"

    const-string v3, "add contact for VT-conference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1

    .line 386
    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->loadTabs()V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, inputNum:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    .line 395
    .local v1, isValidNumber:Z
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 396
    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_2
    if-eqz v1, :cond_3

    .line 400
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 401
    iput-boolean v4, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 402
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    :cond_3
    const v2, 0x7f0906de

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showToast(I)V

    goto :goto_0

    .line 411
    .end local v0           #inputNum:Ljava/lang/String;
    .end local v1           #isValidNumber:Z
    :pswitch_3
    const-string v2, "[IMSConferenceCallMain]"

    const-string v3, "btnSend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr;->getDeletableCount()I

    move-result v2

    if-ge v2, v5, :cond_4

    .line 413
    const v2, 0x7f0906e0

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMain;->showEmptyToast(I)V

    goto/16 :goto_0

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 418
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCall()V

    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01be
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConferenceStateChanged()V
    .locals 2

    .prologue
    .line 753
    const-string v0, "onConferenceStateChanged  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    .line 760
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0906d8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 206
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 208
    const-string v1, "ims_conference_voice"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "CONF_TYPE_VOICE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    .line 214
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    const-string v1, "inside onCreate() : cannot proceed group videocall. Here is Roaming Area"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 217
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_3

    .line 218
    const v1, 0x7f09092d

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 311
    :cond_2
    :goto_1
    return-void

    .line 220
    :cond_3
    const v1, 0x7f090542

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSimCardReady()Z

    move-result v1

    if-nez v1, :cond_6

    .line 227
    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 228
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_5

    .line 229
    const v1, 0x7f09092c

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 232
    :goto_2
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 231
    :cond_5
    const v1, 0x7f0906d5

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 237
    :cond_6
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->isDeviceOnLTE()Z

    move-result v1

    if-nez v1, :cond_8

    .line 238
    const-string v1, "Inside onCreate() : Not on LTE..returning"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 239
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsConfTypeVoice:Z

    if-eqz v1, :cond_7

    .line 240
    const v1, 0x7f09092e

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 243
    :goto_3
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 242
    :cond_7
    const v1, 0x7f0906e4

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 248
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 249
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 250
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 251
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    sput-object p0, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 253
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->init()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->initializeMgr(Lcom/android/phone/IMSConferenceCallMgr;)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 256
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    const-string v2, "ADD_USER_TO_CONF"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    .line 287
    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mDisableCallers:Z

    .line 289
    const-string v1, "inside onCreate()"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->InitiateConfCallUI()V

    .line 291
    const-string v1, "ims_conference_mt_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 292
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 293
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->setLayoutForMT(Lcom/android/internal/telephony/Connection;)V

    .line 296
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_a
    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-eqz v1, :cond_13

    .line 297
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 298
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    if-ge v1, v6, :cond_b

    .line 299
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 300
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 301
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 304
    :cond_b
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->startTimer(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 258
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_c
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 259
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_12

    .line 260
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 261
    :cond_d
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 262
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto/16 :goto_4

    .line 264
    :cond_e
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 269
    :cond_f
    const-string v1, "ims_conference_voice"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isAudioConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 271
    :cond_10
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 272
    iput-boolean v6, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto/16 :goto_4

    .line 274
    :cond_11
    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->getMaxUserCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showToast(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 282
    :cond_12
    iput-boolean v5, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    goto/16 :goto_4

    .line 307
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_13
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->icCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 308
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->getInitialListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMain;->addCallerList(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 917
    const v0, 0x7f0a0433

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mDeleteOption:Landroid/view/MenuItem;

    .line 918
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside ondestroy() mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->forcefinishing:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "onDestroy - activity was forcely finished"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 354
    :cond_1
    sput-object v2, Lcom/android/phone/IMSConferenceCallMain;->activity:Lcom/android/phone/IMSConferenceCallMain;

    .line 355
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->app:Lcom/android/phone/PhoneGlobals;

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->deInitializeMgr()V

    .line 359
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mButton_Send:Landroid/widget/Button;

    .line 361
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->sTitleVal:Ljava/lang/String;

    .line 362
    sput-object v2, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    .line 363
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->intent:Landroid/content/Intent;

    .line 365
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mContactButton:Landroid/widget/ImageButton;

    .line 366
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mPlusButton:Landroid/widget/ImageButton;

    .line 367
    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 932
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 946
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 934
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 938
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/IMSConferenceCallDelete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 932
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0433 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 334
    const-string v0, "inside onPause()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/android/phone/IMSConferenceCallMain;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 338
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 339
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 340
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 924
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 925
    const-string v0, "onPrepareOptionsMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 926
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->setDeleteOption()V

    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    const-string v0, "inside onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsForegroundActivity:Z

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/IMSConferenceCallMain$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IMSConferenceCallMain$2;-><init>(Lcom/android/phone/IMSConferenceCallMain;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    .line 329
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 869
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 870
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 872
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMain;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 874
    :cond_0
    return-void
.end method

.method public setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1098
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    .line 1099
    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mIsMTDevice:Z

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    .line 1101
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v2, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showButton:Z

    .line 1106
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    .line 1104
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iput-boolean v1, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showButton:Z

    goto :goto_0
.end method

.method public setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHolderData info.mNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0, p3}, Lcom/android/phone/IMSConferenceCallMain;->setHolderCtl(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1111
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    const v1, 0x7f090922

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    :cond_0
    return-void
.end method

.method public setParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1076
    const v0, 0x7f0a0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    .line 1077
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showContactImage:Z

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mContactView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    :cond_0
    const v0, 0x7f0a02b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    .line 1082
    const v0, 0x7f0a02af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    .line 1084
    const v0, 0x7f0a02b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    .line 1085
    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    .line 1086
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    .line 1087
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    :cond_1
    const v0, 0x7f0a02b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    .line 1092
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showButton:Z

    if-nez v0, :cond_2

    .line 1093
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    :cond_2
    return-void
.end method

.method public setStatusText(Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-nez v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    iget-wide v1, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/IMSConferenceCallMain;->setElapsedTime(Landroid/widget/TextView;J)V

    goto :goto_0

    .line 1183
    :cond_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090923

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1186
    :cond_3
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090924

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1189
    :cond_4
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isFAILED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    const v1, 0x7f090925

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public showParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 4
    .parameter "view"
    .parameter "holder"
    .parameter "info"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1123
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showButton:Z

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mAddUser:Z

    if-nez v0, :cond_4

    .line 1125
    :cond_0
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/IMSConferenceCallMain;->setStatusText(Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1132
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1133
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    :cond_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1137
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1138
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1139
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1174
    :cond_3
    :goto_1
    return-void

    .line 1127
    :cond_4
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1141
    :cond_5
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isWAITING()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1142
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1145
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1146
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1147
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 1149
    :cond_6
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isIDLE()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1150
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1153
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1154
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1155
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 1158
    :cond_7
    iget-object v0, p3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$Status;->isCONNECTING()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1159
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1160
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1161
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1162
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1170
    :goto_2
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    iget-boolean v0, v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;->showConnectionInfo:Z

    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1164
    :cond_8
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mButton_Dial:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1165
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1166
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1167
    iget-object v0, p2, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public updateScreen()V
    .locals 1

    .prologue
    .line 763
    const-string v0, "updateScreen  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMain;->log(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/android/phone/IMSConferenceCallMain;->updateUIForSelectedCallerCount()V

    .line 766
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain;->mParticipantsAdapter:Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->notifyDataSetChanged()V

    .line 769
    :cond_0
    return-void
.end method
