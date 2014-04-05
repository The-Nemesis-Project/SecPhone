.class public Lcom/android/phone/LGTUwaVideoCall;
.super Landroid/app/Activity;
.source "LGTUwaVideoCall.java"


# instance fields
.field private NumberListCount:I

.field private mApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/LGTUwaVideoCall;->NumberListCount:I

    return-void
.end method

.method private PlaceVideoCall(Ljava/lang/String;)V
    .locals 6
    .parameter "number"

    .prologue
    const/4 v5, 0x1

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 71
    .local v0, icCM:Lcom/android/phone/IMSConferenceCallMgr;
    const-string v2, "videocall"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget v2, p0, Lcom/android/phone/LGTUwaVideoCall;->NumberListCount:I

    if-le v2, v5, :cond_0

    .line 74
    const-string v2, "IS_CONF_CALL"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-static {v5}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    .line 78
    :cond_0
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    return-void
.end method


# virtual methods
.method public getNumberList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "NumberList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 58
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 59
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/LGTUwaVideoCall;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, nListFromUwa:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, FormatNumberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 39
    .local v3, sOutNumber:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "VT_PHONE_NUMBER_LIST"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 41
    array-length v4, v2

    iput v4, p0, Lcom/android/phone/LGTUwaVideoCall;->NumberListCount:I

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/phone/LGTUwaVideoCall;->getNumberList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-direct {p0, v3}, Lcom/android/phone/LGTUwaVideoCall;->PlaceVideoCall(Ljava/lang/String;)V

    .line 48
    return-void
.end method
