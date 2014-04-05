.class public Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;,
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final DIALOG_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedCount:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mFirstVisibleItem:I

.field private mFromContextMenu:Z

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mListView:Landroid/widget/ListView;

.field private mScreenType:I

.field private mSelectedItem:I

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->SRC_TAGS:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "reject_number"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 128
    sget-object v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    .line 131
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->NORMAL_SCREEN:I

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DELETE_SCREEN:I

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->DIALOG_SCREEN:I

    .line 137
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 149
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    .line 153
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->QUERY_COMPLETE:I

    .line 155
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    .line 159
    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 161
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFromContextMenu:Z

    .line 163
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 165
    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    .line 167
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    .line 169
    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    .line 173
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    .line 953
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFromContextMenu:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private addUnknownItem()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_videocall_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 570
    .local v4, unknownMode:I
    const v6, 0x7f090007

    .line 571
    .local v6, resID:I
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const v6, 0x7f090744

    .line 574
    :cond_0
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const v6, 0x7f09032d

    .line 578
    :cond_1
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 1291
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1293
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1294
    const-string v1, "UPDATE_ID"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    const-string v1, "SELECT_NUMBER"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v1, "MATCH_MODE"

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1297
    const-string v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1298
    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1300
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090728

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 1304
    :goto_0
    return-void

    .line 1303
    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902c5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 4
    .parameter

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_0

    .line 1267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    const-string v1, "AutoRejectVideoCallList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1315
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1316
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1317
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1286
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private hasUnknownItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1380
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 368
    const v0, 0x7f0a003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    .line 370
    const v0, 0x7f0a024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    .line 374
    const v0, 0x7f0a024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/view/View;

    .line 375
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const-string v0, "add_panel"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const v0, 0x7f0a0250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    .line 388
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 433
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$6;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 459
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1334
    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "string"
    .parameter "always"

    .prologue
    .line 1338
    const-string v0, "AutoRejectVideoCallList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1339
    return-void
.end method

.method private makeScreen()V
    .locals 12

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V

    .line 511
    const/4 v10, 0x0

    .line 512
    .local v10, idx:I
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 513
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 514
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/CountryDetector;

    .line 517
    .local v7, detector:Landroid/location/CountryDetector;
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addUnknownItem()V

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    .line 523
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v6

    .line 524
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 527
    .local v8, id:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, num:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 529
    .local v4, checked:I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 530
    .local v5, matched:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 532
    const-string v0, "number_format_with_country_iso"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    :cond_2
    iget-object v11, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    .end local v2           #num:Ljava/lang/String;
    .end local v4           #checked:I
    .end local v5           #matched:I
    .end local v8           #id:J
    :cond_3
    if-eqz v6, :cond_4

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-nez v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    if-nez v0, :cond_5

    .line 559
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    .line 561
    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V

    .line 563
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    .line 564
    return-void

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 546
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 548
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addUnknownItem()V

    goto :goto_0

    .line 551
    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_2

    move v0, v1

    .line 855
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_6

    .line 856
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v3, v1, :cond_3

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 857
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    if-lez v3, :cond_4

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 858
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v4, v1, :cond_5

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 861
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 871
    :goto_4
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_a

    .line 872
    :cond_1
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 877
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 852
    goto :goto_0

    :cond_3
    move v3, v2

    .line 856
    goto :goto_1

    :cond_4
    move v3, v2

    .line 857
    goto :goto_2

    :cond_5
    move v1, v2

    .line 858
    goto :goto_3

    .line 863
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v3, v1, :cond_7

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 864
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    if-lez v3, :cond_8

    move v3, v1

    :goto_7
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 865
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v4, v1, :cond_9

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 867
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 868
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    move v3, v2

    .line 863
    goto :goto_6

    :cond_8
    move v3, v2

    .line 864
    goto :goto_7

    :cond_9
    move v1, v2

    .line 865
    goto :goto_8

    .line 874
    :cond_a
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method private startContactQuery()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    .line 257
    const-string v0, "AutoRejectVideoCallList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 258
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->contactQueryThread:Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;

    .line 267
    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    const-string v1, "reject_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v1, "reject_checked"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1280
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1281
    return-void
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    .line 1343
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1344
    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1320
    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 1322
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1323
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    .line 1322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1329
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->selectAllCheck:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1330
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1331
    return-void
.end method

.method private updateTitleBar()V
    .locals 6

    .prologue
    const v5, 0x7f090502

    const v4, 0x7f090728

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1347
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1349
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1350
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1352
    add-int/lit8 v0, v0, -0x1

    .line 1355
    :cond_0
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1356
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v0, v3, :cond_3

    .line 1358
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1376
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1377
    return-void

    .line 1360
    :cond_3
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1362
    :cond_4
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1363
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v0, v3, :cond_7

    .line 1365
    :cond_6
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1367
    :cond_7
    const v0, 0x7f090500

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1369
    :cond_8
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v1, v3, :cond_b

    .line 1371
    :cond_a
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1373
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902cb

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public addAutoRejectList()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 731
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 732
    const-string v0, "isOutgoing"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 734
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    const-string v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f090728

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 745
    :goto_0
    return-void

    .line 739
    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0902c5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 743
    :cond_1
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "Fragment is not added, ignore it!."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public deleteDialog(ZIZ)V
    .locals 8
    .parameter "isAllItem"
    .parameter "cnt"
    .parameter "fromContextMenu"

    .prologue
    const v7, 0x7f0902d3

    const/4 v6, 0x1

    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 628
    .local v2, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 630
    .local v1, msg:Ljava/lang/CharSequence;
    iput-boolean p3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFromContextMenu:Z

    .line 632
    if-ne p2, v6, :cond_1

    .line 633
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    const v4, 0x7f0902d5

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 645
    :goto_0
    const-string v4, "mics_kor_common"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 650
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902be

    new-instance v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$12;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0902bb

    new-instance v6, Lcom/android/phone/callsettings/AutoRejectVideoCallList$11;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$11;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 666
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 667
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$13;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 673
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 674
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    if-eqz p1, :cond_2

    .line 638
    const v4, 0x7f0902d7

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 640
    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 641
    .local v3, values:[Ljava/lang/String;
    const v4, 0x7f0902d6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteFromContextMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 705
    .local v0, del_id:I
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteAutoRejectNumber(I)V

    .line 706
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 707
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    .line 708
    const v1, 0x7f09035e

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 710
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 711
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateCount()V

    .line 712
    return-void
.end method

.method public deleteManyItems()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$14;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$14;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 1248
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1250
    packed-switch p1, :pswitch_data_0

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1252
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 715
    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 719
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 720
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 272
    const-string v2, "AutoRejectVideoCallList"

    const-string v3, "onCreate "

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 273
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_maxcount"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    .line 276
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->defaultName:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 279
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 280
    const-string v2, "isOutgoing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArgument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsOutgoing:Z

    if-eqz v2, :cond_2

    .line 285
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 294
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 298
    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 299
    return-void

    .line 287
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentURI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 582
    packed-switch p1, :pswitch_data_0

    .line 622
    :goto_0
    return-object v1

    .line 584
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0902bc

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0902be

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 590
    .local v2, items:[Ljava/lang/CharSequence;
    const-string v3, "AutoRejectVideoCallList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 594
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$9;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    const v3, 0x7f090025

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 610
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 612
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$10;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f020005

    const v7, 0x7f0902be

    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 789
    const-string v0, "order_neg_pos_buttons"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 790
    :goto_0
    const-string v3, "order_neg_pos_buttons"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    .line 793
    :goto_1
    const v4, 0x7f0902b9

    invoke-interface {p1, v1, v2, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f020004

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v4, "ctc_vip_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 796
    const/4 v4, 0x2

    invoke-interface {p1, v1, v4, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v4, "ctc_vip_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_3
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 799
    const/4 v4, 0x7

    invoke-interface {p1, v1, v4, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 803
    const v4, 0x7f0902bb

    invoke-interface {p1, v1, v5, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 805
    const/4 v4, 0x5

    const v6, 0x7f0902bb

    invoke-interface {p1, v1, v4, v0, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f020002

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 808
    const/4 v0, 0x4

    invoke-interface {p1, v1, v0, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 810
    const/4 v0, 0x3

    invoke-interface {p1, v1, v0, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020003

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 814
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 815
    return-void

    :cond_0
    move v0, v2

    .line 789
    goto/16 :goto_0

    :cond_1
    move v3, v1

    .line 790
    goto/16 :goto_1

    :cond_2
    move v4, v2

    .line 793
    goto :goto_2

    :cond_3
    move v4, v2

    .line 796
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 304
    const v1, 0x7f040010

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, v:Landroid/view/View;
    if-eqz p3, :cond_0

    .line 307
    const-string v1, "blacklist_id"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    .line 310
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V

    .line 311
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    .line 313
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 320
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    .line 882
    sparse-switch p1, :sswitch_data_0

    .line 923
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 884
    :sswitch_0
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-ne v1, v0, :cond_0

    .line 885
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 886
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    goto :goto_1

    .line 894
    :sswitch_1
    const/4 v1, 0x0

    .line 895
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 896
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 897
    check-cast v0, Landroid/widget/ListView;

    .line 900
    :goto_2
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 902
    if-eqz v0, :cond_0

    .line 904
    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 906
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 908
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 910
    :cond_1
    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 912
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 882
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 750
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 784
    :goto_0
    return v0

    .line 754
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 784
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 765
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->addAutoRejectList()V

    goto :goto_0

    .line 770
    :pswitch_1
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 771
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    goto :goto_0

    .line 776
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 781
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 361
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    .line 363
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    .line 364
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 819
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 824
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    add-int/lit8 v0, v0, -0x1

    .line 830
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 831
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 833
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 834
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_5

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 835
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_6

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 836
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_7

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 838
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->autoreject_maxcount:I

    if-ge v0, v1, :cond_8

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 840
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    if-eq v1, v2, :cond_9

    .line 841
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :goto_7
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 849
    return-void

    :cond_2
    move v1, v3

    .line 830
    goto :goto_0

    :cond_3
    move v1, v3

    .line 831
    goto :goto_1

    :cond_4
    move v1, v3

    .line 833
    goto :goto_2

    :cond_5
    move v1, v3

    .line 834
    goto :goto_3

    :cond_6
    move v1, v3

    .line 835
    goto :goto_4

    :cond_7
    move v1, v3

    .line 836
    goto :goto_5

    :cond_8
    move v1, v3

    .line 839
    goto :goto_6

    .line 843
    :cond_9
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->createLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 334
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onResume "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 335
    iput-boolean v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mIsForeground:Z

    .line 337
    iget-boolean v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mUpdateScreen:Z

    if-eqz v0, :cond_2

    .line 339
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    .line 340
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 341
    iput v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->stopContactQuery()V

    .line 351
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->makeScreen()V

    .line 352
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->updateTitleBar()V

    .line 355
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->startContactQuery()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    const-string v0, "AutoRejectVideoCallList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, isAllItem:Z
    const/4 v0, 0x0

    .line 484
    .local v0, cnt:I
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 485
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 484
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 490
    :cond_1
    if-lez v0, :cond_3

    .line 491
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 492
    const/4 v2, 0x1

    .line 494
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->deleteDialog(ZIZ)V

    .line 498
    :goto_1
    return-void

    .line 496
    :cond_3
    const-string v3, "No items selected"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$8;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    return-void
.end method
