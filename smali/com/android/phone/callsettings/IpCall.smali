.class public Lcom/android/phone/callsettings/IpCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static IP_CALL_NUMBER:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private IPCALL_URI:Landroid/net/Uri;

.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipCallListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecreatedView:Z

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mCheckedCount:I

.field private mCurrentSelectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mEdited:I

.field private mInitCreateLayout:Z

.field private mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mSimId:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "IpCall"

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ipcall_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    .line 122
    const-string v0, "IP_CALL_NUMBER"

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    .line 155
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->istoastshowing:Z

    .line 171
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 175
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 177
    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    .line 648
    new-instance v0, Lcom/android/phone/callsettings/IpCall$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$11;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    .line 1237
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/IpCall;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/IpCall;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/IpCall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 855
    iput v3, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 856
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 857
    const-string v1, "ipcall_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "edit_checked"

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 861
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 832
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 833
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 837
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 848
    :goto_1
    return v1

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 840
    goto :goto_1

    .line 833
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 845
    goto :goto_1

    .line 843
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 848
    goto :goto_1
.end method

.method private deleteIpNumber()V
    .locals 4

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteIpNumber(I)V
    .locals 4
    .parameter

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_0

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1013
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1014
    return-void
.end method

.method private getDefaultIpNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_0

    .line 1383
    :goto_0
    return-object v0

    .line 1370
    :cond_0
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1371
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1372
    const-string v0, "17911"

    goto :goto_0

    .line 1374
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->isSlot1SwitchedInCGG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1375
    const-string v0, "17911"

    goto :goto_0

    .line 1377
    :cond_2
    const-string v0, "17901"

    goto :goto_0

    .line 1380
    :cond_3
    const-string v0, "ip_call_cmcc"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1381
    const-string v0, "17951"

    goto :goto_0

    .line 1383
    :cond_4
    const-string v0, "17911"

    goto :goto_0
.end method

.method private getIpNumberList()Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 902
    const-string v1, "ip_call_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private getSlotSelectionInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1393
    const-string v2, "/sys/class/sec/slot_switch/slot_sel"

    .line 1394
    const/4 v1, 0x0

    .line 1395
    const-string v0, "0"

    .line 1397
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1398
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1399
    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1405
    if-eqz v0, :cond_0

    .line 1406
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 1412
    :goto_0
    if-nez v0, :cond_1

    .line 1413
    const-string v0, "0"

    .line 1416
    :cond_1
    return-object v0

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v2, "File close error"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1410
    goto :goto_0

    .line 1400
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 1401
    :goto_1
    :try_start_3
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v2, "File open error"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1405
    if-eqz v0, :cond_2

    .line 1406
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-object v0, v1

    .line 1409
    goto :goto_0

    .line 1407
    :catch_2
    move-exception v0

    .line 1408
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v2, "File close error"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1410
    goto :goto_0

    .line 1404
    :catchall_0
    move-exception v0

    .line 1405
    :goto_2
    if-eqz v1, :cond_3

    .line 1406
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1409
    :cond_3
    :goto_3
    throw v0

    .line 1407
    :catch_3
    move-exception v1

    .line 1408
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v2, "File close error"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1404
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 1400
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6
    .parameter "layout"

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 378
    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    .line 379
    const v1, 0x7f0a0231

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    .line 381
    const v1, 0x7f0a024d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    .line 382
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    const v1, 0x7f0a024f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    .line 387
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 388
    .local v0, cursor:Landroid/database/Cursor;
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 389
    const-string v1, "in DELETE_SCREEN state,but no list could be to delete,need to change the state"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 395
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    .line 397
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 398
    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_3
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040078

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 411
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400dc

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 414
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 417
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$5;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const-string v1, "add_panel"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    const v1, 0x7f0a0250

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    .line 429
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$6;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 438
    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$7;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$7;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 467
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$8;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 493
    :cond_5
    return-void
.end method

.method private isSlot1SwitchedInCGG()Z
    .locals 2

    .prologue
    .line 1389
    const-string v0, "feature_chn_duos_support_cgg"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1201
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 605
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 608
    .local v0, isLand:Z
    :goto_0
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 609
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 610
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 611
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 613
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 633
    :goto_4
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_d

    .line 634
    :cond_0
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 638
    :goto_5
    return-void

    .end local v0           #isLand:Z
    :cond_1
    move v0, v2

    .line 605
    goto :goto_0

    .restart local v0       #isLand:Z
    :cond_2
    move v3, v2

    .line 609
    goto :goto_1

    :cond_3
    move v3, v2

    .line 610
    goto :goto_2

    :cond_4
    move v1, v2

    .line 611
    goto :goto_3

    .line 616
    :cond_5
    if-eqz v0, :cond_9

    .line 617
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_6

    move v3, v1

    :goto_6
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 618
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_7

    move v3, v1

    :goto_7
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 619
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_8

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 621
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 622
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v3, v2

    .line 617
    goto :goto_6

    :cond_7
    move v3, v2

    .line 618
    goto :goto_7

    :cond_8
    move v1, v2

    .line 619
    goto :goto_8

    .line 625
    :cond_9
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v5, :cond_a

    move v3, v1

    :goto_9
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v3, :cond_b

    move v3, v1

    :goto_a
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 627
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_c

    :goto_b
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 630
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_a
    move v3, v2

    .line 625
    goto :goto_9

    :cond_b
    move v3, v2

    .line 626
    goto :goto_a

    :cond_c
    move v1, v2

    .line 627
    goto :goto_b

    .line 636
    :cond_d
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method private saveIpNumber(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f090465

    const/16 v7, 0x8

    const/4 v1, 0x2

    const/4 v6, 0x0

    .line 772
    .line 775
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 778
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09035f

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    .line 829
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 775
    goto :goto_0

    .line 784
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 785
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 791
    :cond_2
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    goto :goto_1

    .line 796
    :cond_3
    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v0, :cond_6

    .line 797
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 798
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 800
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 801
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Ljava/lang/String;I)V

    .line 802
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 821
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 823
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 824
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_5
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 828
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    goto :goto_1

    .line 805
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_4

    .line 807
    const/4 v2, 0x6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v2, v3, :cond_7

    .line 808
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v2

    .line 810
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 811
    const-string v4, "IpCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 814
    :cond_7
    const-string v2, "IpCall"

    const-string v3, "max in saveIpNumber - no add"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setDefaultIpNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "ipnumber"

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1362
    return-void
.end method

.method private showIpNumberList(Landroid/database/Cursor;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 925
    .line 926
    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 927
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 928
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    if-eqz p1, :cond_1

    .line 931
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 933
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 934
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 935
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    if-ne v2, v4, :cond_3

    move v3, v4

    .line 938
    :goto_1
    if-eqz v3, :cond_4

    .line 939
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 940
    const-string v7, "Edited"

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 972
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v7

    .line 973
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default ip num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 975
    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    .line 976
    iget-object v7, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 979
    :cond_0
    sget-object v7, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IpCall idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IP number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isChanged "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 983
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 984
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_c

    move v1, v2

    .line 988
    :cond_1
    const/4 v0, 0x6

    if-le v1, v0, :cond_2

    .line 990
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber()V

    .line 992
    :cond_2
    return-void

    :cond_3
    move v3, v1

    .line 935
    goto/16 :goto_1

    .line 942
    :cond_4
    const-wide/16 v7, 0x1

    sub-long v7, v5, v7

    .line 943
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    if-ne v2, v4, :cond_8

    .line 944
    const-string v2, "ip_call_cmcc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 945
    sget-object v2, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberListCMCC:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    .line 969
    :goto_3
    sget-object v7, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 946
    :cond_5
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 947
    const-string v2, "feature_chn_duos_support_cgg"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 948
    sget-object v2, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 950
    :cond_6
    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 953
    :cond_7
    sget-object v2, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 955
    :cond_8
    const-string v2, "ip_call_cmcc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 956
    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCMCC:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 957
    :cond_9
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 958
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->isSlot1SwitchedInCGG()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 959
    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberListCTC:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 961
    :cond_a
    sget-object v2, Lcom/android/phone/callsettings/IpCallCdmaDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    .line 964
    :cond_b
    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v7, v7

    aget-object v2, v2, v7

    goto :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_0
.end method

.method private updateCount()V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    .line 1217
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1218
    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1205
    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 1206
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    .line 1206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1212
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1213
    return-void

    .line 1211
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateIpNumberList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1176
    const-string v1, "ip_call_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    goto :goto_0
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 893
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    .line 894
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 895
    const-string v1, "ipcall_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v1, "edit_checked"

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 898
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method private updateIpNumberList(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1184
    if-eqz p1, :cond_1

    const-string v1, "ip_call_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v1

    .line 1186
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 1187
    if-eqz v1, :cond_0

    .line 1188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1189
    :cond_0
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040078

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 1190
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400dc

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 1193
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1195
    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 1198
    return-void
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 1
    .parameter "current"

    .prologue
    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 186
    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->addDialog()V

    .line 188
    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1222
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1226
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090462

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    const-string v1, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1231
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090728

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 1235
    :goto_0
    return-void

    .line 1233
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addDialog()V
    .locals 6

    .prologue
    .line 190
    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v3, " addDialog() "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, edittext:Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 194
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 198
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/callsettings/IpCall$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/callsettings/IpCall$1;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, EditDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902b9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902ba

    new-instance v4, Lcom/android/phone/callsettings/IpCall$4;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/callsettings/IpCall$4;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902bb

    new-instance v4, Lcom/android/phone/callsettings/IpCall$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IpCall$3;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/IpCall$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IpCall$2;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    return-void
.end method

.method public deleteDialog()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1137
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ba

    new-instance v2, Lcom/android/phone/callsettings/IpCall$20;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$20;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902bb

    new-instance v2, Lcom/android/phone/callsettings/IpCall$19;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$19;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$18;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$18;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1173
    return-void
.end method

.method public editDialog()V
    .locals 5

    .prologue
    .line 1088
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v1, "editDialog() "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1090
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1092
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1093
    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1095
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 1096
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$14;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/callsettings/IpCall$14;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902bc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0902ba

    new-instance v3, Lcom/android/phone/callsettings/IpCall$17;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/callsettings/IpCall$17;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902bb

    new-instance v2, Lcom/android/phone/callsettings/IpCall$16;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$16;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$15;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$15;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1132
    return-void
.end method

.method public getIpNumberList(Z)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 912
    const-string v5, "_id desc"

    .line 913
    const-string v3, "ipcall_number != \'default_number\'"

    .line 914
    if-eqz p1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 917
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1018
    packed-switch p1, :pswitch_data_0

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1020
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1021
    const-string v0, "IP_NUMBER_RESULT_Intent"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 1023
    const-string v0, "EDITED_ITEM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 1025
    const-string v1, "UPDATED"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    .line 1026
    const-string v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1027
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    .line 1028
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040078

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 1031
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 641
    const-string v0, "Configuration"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 645
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 646
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 240
    .local v1, arg:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 241
    const-string v2, "CallSettingTab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 244
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 247
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 251
    :cond_1
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 253
    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 254
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1039
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1084
    :goto_0
    return-object v0

    .line 1041
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1042
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0902bc

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const v4, 0x7f0902be

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    new-instance v0, Lcom/android/phone/callsettings/IpCall$12;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$12;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1072
    new-instance v1, Lcom/android/phone/callsettings/IpCall$13;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$13;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1051
    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f020005

    const v5, 0x7f0902be

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 542
    const v0, 0x7f0902b9

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 544
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 547
    const/4 v0, 0x7

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    const v0, 0x7f0902bb

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    const/4 v0, 0x5

    const v1, 0x7f0902bb

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 555
    const/4 v0, 0x4

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 561
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 562
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreateView "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 265
    :cond_0
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCheckPhoneTypeCdma()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 268
    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    .line 273
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView() mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSelectedItem  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 275
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    if-ne v2, v5, :cond_6

    .line 276
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "feature_chn_duos_support_cgg"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 278
    const-string v2, "IpCall"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    .line 279
    const-string v2, "IP_CALL_NUMBER"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 280
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    .line 298
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP_CALL_NUMBER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPCALL_URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 301
    const v2, 0x7f040072

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, v:Landroid/view/View;
    if-eqz p3, :cond_2

    .line 304
    const-string v2, "selectedItem"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    .line 306
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V

    .line 307
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    if-eqz v2, :cond_8

    .line 308
    iput-boolean v4, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    .line 309
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 311
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 313
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 314
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 312
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 270
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :cond_4
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    goto/16 :goto_0

    .line 282
    :cond_5
    const-string v2, "IpCallSim2"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    .line 283
    const-string v2, "IP_CALL_NUMBER_SIM2"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 284
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_SIM2_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 287
    :cond_6
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->isSlot1SwitchedInCGG()Z

    move-result v2

    if-nez v2, :cond_7

    .line 288
    const-string v2, "IpCallCdma"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    .line 289
    const-string v2, "IP_CALL_NUMBER_CDMA"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 290
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 292
    :cond_7
    const-string v2, "IpCall"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    .line 293
    const-string v2, "IP_CALL_NUMBER"

    sput-object v2, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 294
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 317
    .restart local v1       #v:Landroid/view/View;
    :cond_8
    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 364
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroyView "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    .line 374
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    .line 375
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 724
    sparse-switch p1, :sswitch_data_0

    .line 767
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 726
    :sswitch_0
    iget v7, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 728
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v3

    .line 729
    .local v3, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 730
    if-eqz v3, :cond_1

    .line 731
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_1
    new-instance v7, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f040078

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 735
    iget-object v7, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 736
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    .line 737
    iget-object v7, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 738
    const/4 v7, 0x1

    goto :goto_1

    .line 741
    .end local v3           #cursor:Landroid/database/Cursor;
    :sswitch_1
    const/4 v2, 0x0

    .line 742
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 743
    .local v5, obj:Landroid/view/View;
    instance-of v7, v5, Landroid/widget/ListView;

    if-eqz v7, :cond_2

    move-object v2, v5

    .line 744
    check-cast v2, Landroid/widget/ListView;

    .line 746
    :cond_2
    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 748
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 749
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 751
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_0

    .line 752
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 753
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "childView view : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v6}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 751
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 671
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 674
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 718
    :goto_0
    return v1

    .line 678
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 718
    goto :goto_0

    .line 680
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->updateItem(Ljava/lang/String;)V

    move v1, v2

    .line 681
    goto :goto_0

    .line 685
    :pswitch_1
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v1, v7, :cond_3

    .line 686
    const-string v1, "ip_call_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    .line 688
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    .line 689
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_1
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040078

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 693
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400dc

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 696
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 700
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 701
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 703
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 704
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    :cond_3
    move v1, v2

    .line 706
    goto :goto_0

    .line 710
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V

    move v1, v2

    .line 711
    goto :goto_0

    .line 715
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->softkeyRightRun(Landroid/view/View;)V

    move v1, v2

    .line 716
    goto :goto_0

    .line 678
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
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 346
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 566
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 567
    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onPrepareOptionsMenu "

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, currentCnt:I
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 574
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-lez v0, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-lez v0, :cond_6

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 577
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_7

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_8

    move v2, v3

    :goto_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_9

    move v2, v3

    :goto_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 581
    const-string v2, "add_panel"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/IpCall;->mInitCreateLayout:Z

    if-eqz v2, :cond_1

    .line 582
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    if-ge v0, v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 583
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_b

    .line 584
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :goto_7
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 590
    :cond_1
    const-string v2, "ip_call_gsm"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 591
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v1

    .line 592
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 593
    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 594
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 595
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 600
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    .line 601
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    .line 602
    return-void

    :cond_4
    move v2, v4

    .line 573
    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 574
    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 575
    goto/16 :goto_2

    :cond_7
    move v2, v4

    .line 577
    goto :goto_3

    :cond_8
    move v2, v4

    .line 578
    goto :goto_4

    :cond_9
    move v2, v4

    .line 579
    goto :goto_5

    :cond_a
    move v2, v4

    .line 582
    goto :goto_6

    .line 586
    :cond_b
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    .line 326
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 337
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    .line 341
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    .line 342
    return-void

    .line 329
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->selectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 351
    const-string v0, "key_sim_id"

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$9;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$10;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    return-void
.end method
