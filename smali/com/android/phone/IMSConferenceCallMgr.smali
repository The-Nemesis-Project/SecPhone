.class public Lcom/android/phone/IMSConferenceCallMgr;
.super Ljava/lang/Object;
.source "IMSConferenceCallMgr.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallMgr$1;,
        Lcom/android/phone/IMSConferenceCallMgr$Participant;,
        Lcom/android/phone/IMSConferenceCallMgr$Status;,
        Lcom/android/phone/IMSConferenceCallMgr$State;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mDirectConfCall:Z

.field private static mToastObj:Landroid/widget/Toast;

.field private static mainActivity:Lcom/android/phone/IMSConferenceCallMain;

.field private static sInstance:Lcom/android/phone/IMSConferenceCallMgr;


# instance fields
.field public lastLogCount:I

.field public lastLogNumber:Ljava/lang/String;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private final mContext:Landroid/content/Context;

.field public mIsActiveGroupCall:Z

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/IMSConferenceCallMgr$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    .line 77
    sput-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    .line 922
    sput-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    .line 83
    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    .line 173
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private alreadyAddedUser(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 6
    .parameter "prefix"
    .parameter "number"

    .prologue
    .line 894
    const-string v4, "alreadyAddedUser enter"

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 896
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 897
    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 898
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez v1, :cond_1

    .line 896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alreadyAddedUser ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 919
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :goto_1
    return-object v1

    .line 906
    .restart local v1       #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    .line 907
    .local v2, modifiedNumber:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 908
    const-string v4, ""

    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 911
    :cond_3
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 913
    .local v3, prefixedNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alreadyAddedUser - Same participant - number from list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number from stack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_1

    .line 919
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .end local v2           #modifiedNumber:Ljava/lang/String;
    .end local v3           #prefixedNumber:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private broadcastUWAConfState(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uplus.agent.action.CHANGE_GROUPCALL_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1160
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    const-string v4, "com.uplus.agent.extra.GROUPCALL_RECIPIENTS"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1172
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$1;->$SwitchMap$com$android$phone$IMSConferenceCallMgr$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :goto_0
    const-string v2, "com.uplus.agent.extra.GROUPCALL_STATUS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cslee call state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1200
    :cond_0
    return-void

    .line 1176
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :pswitch_1
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1185
    :pswitch_2
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1188
    :pswitch_3
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1203
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1204
    :cond_0
    return-void
.end method

.method private getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "photoUri"

    .prologue
    const v6, 0x7f020203

    .line 1081
    const/4 v3, 0x0

    .line 1082
    .local v3, photoBm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1084
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] enter photoUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 1086
    if-eqz p1, :cond_1

    .line 1087
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1088
    if-eqz v3, :cond_0

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] bitmap size : width["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] height["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 1092
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .local v1, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 1102
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 1093
    :catch_0
    move-exception v2

    .line 1094
    .local v2, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Admin wallpaper EX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->init()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 4

    .prologue
    .line 156
    const-class v1, Lcom/android/phone/IMSConferenceCallMgr;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMgr;-><init>()V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    .line 162
    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    monitor-exit v1

    return-object v0

    .line 160
    :cond_0
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDirectConfCall()Z
    .locals 1

    .prologue
    .line 1032
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    return v0
.end method

.method private loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1106
    .line 1107
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1108
    const/high16 v2, 0x4238

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 1111
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 1114
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1115
    if-eqz v3, :cond_2

    .line 1116
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1120
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1123
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1130
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1131
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load photo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1134
    :goto_2
    if-eqz v0, :cond_0

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadPhoto] width["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] height["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1139
    :cond_0
    return-object v0

    .line 1123
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1125
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v1, v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 1126
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1130
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .line 1128
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load photo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1207
    const-string v0, "[IMSConferenceCallMgr]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return-void
.end method

.method private reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x42c8

    .line 1143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 1144
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1147
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 1149
    div-float v2, v0, v4

    .line 1150
    int-to-float v3, p2

    div-float v2, v3, v2

    .line 1151
    div-float v3, v2, v4

    mul-float/2addr v1, v3

    .line 1152
    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    .line 1155
    :cond_0
    float-to-int v1, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setDirectConfCall(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1036
    sput-boolean p0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    .line 1037
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 932
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 933
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 939
    return-void

    .line 935
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    goto :goto_0
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "number"
    .parameter "state"
    .parameter "conn"

    .prologue
    const/4 v1, 0x1

    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    const-string v1, "[addParticipant] fail  here!"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    .line 367
    .local v0, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v0, :cond_2

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addParticipant] already added number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 376
    :goto_1
    const-string v2, "addParticipant"

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .end local v0           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    invoke-direct {v0, p0, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;-><init>(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    .line 372
    .restart local v0       #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 373
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public cleanParticipantsList()V
    .locals 3

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 488
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_0

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 493
    goto :goto_0

    .line 494
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    return-void
.end method

.method public disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "info"
    .parameter "conn"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 448
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    .line 453
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    :cond_1
    const-string v1, "disconnectParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "conn"

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    .line 503
    .local v1, nCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    .line 511
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] after  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 580
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 584
    return v0
.end method

.method public getActiveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v2, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 664
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 665
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 666
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    return-object v2
.end method

.method public getAliveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v2, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 679
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 680
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 681
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    return-object v2
.end method

.method public getAliveStateCount()I
    .locals 5

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 641
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAliveStateCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 645
    return v0
.end method

.method public getDeletableCount()I
    .locals 5

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 609
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDELETABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDeletableCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 613
    return v0
.end method

.method public getDeletableList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 707
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 708
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDELETABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v0           #index:I
    :cond_1
    return-object v1
.end method

.method public getDialedParticipantNumberList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 694
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 695
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    .end local v0           #index:I
    :cond_1
    return-object v1
.end method

.method public getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 2
    .parameter "idx"

    .prologue
    .line 563
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 564
    :cond_0
    const-string v0, "[getParticipant] idx is not valid"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    .line 567
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getParticipant] number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    goto :goto_0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 549
    if-nez p1, :cond_0

    .line 550
    const-string v3, "[getParticipant] number == null"

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object v1, v2

    .line 560
    :goto_0
    return-object v1

    .line 553
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getParticipant] number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 556
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    move-object v1, v2

    .line 560
    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 3

    .prologue
    .line 573
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getParticipantsCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initParticipantsList()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParticipantsList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;
    .locals 3
    .parameter "notiState"

    .prologue
    .line 718
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->INVALID:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 720
    .local v0, State:Lcom/android/phone/IMSConferenceCallMgr$State;
    packed-switch p1, :pswitch_data_0

    .line 738
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mapConfState] ignored notiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 741
    :goto_0
    return-object v0

    .line 722
    :pswitch_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ACTIVE:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 723
    goto :goto_0

    .line 726
    :pswitch_2
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 727
    goto :goto_0

    .line 730
    :pswitch_3
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ALERTING:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 731
    goto :goto_0

    .line 734
    :pswitch_4
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ONHOLD:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 735
    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConferenceStateChanged()V
    .locals 1

    .prologue
    .line 852
    const-string v0, "onConferenceStateChanged  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 853
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-eqz v0, :cond_0

    .line 854
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMain;->onConferenceStateChanged()V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    const-string v0, "[onConferenceStateChanged] IMSConferenceCallMain activity is null"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] onTickForCallTimeElapsed timeElapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->updateElapsedTime(J)V

    .line 1042
    return-void
.end method

.method public prepareDial(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 341
    const-string v2, "[prepareDial] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 343
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$State;->DIALING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 345
    const-string v2, "prepareDial"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    return-void
.end method

.method public prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "number"
    .parameter "conn"

    .prologue
    .line 351
    const-string v2, "[prepareDialNumber] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 353
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$State;->DIALING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, p2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 355
    const-string v2, "prepareDial"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    return-void
.end method

.method public removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 465
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 469
    const-string v1, "removeParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeParticipant(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 461
    return-void
.end method

.method public resetLastLog()V
    .locals 1

    .prologue
    .line 870
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 872
    return-void
.end method

.method public saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "info"
    .parameter "conn"

    .prologue
    .line 515
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[saveParticipantLog] Number["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] CreateTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Duration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v2, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    iget-wide v5, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/CallNotifier;->saveParticipantLog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;JJ)V

    .line 519
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 179
    sput-object p1, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    .line 180
    return-void
.end method

.method public setLastLog()V
    .locals 2

    .prologue
    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, aliveParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 864
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 865
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 867
    :cond_0
    return-void
.end method

.method public showConnectedToast()V
    .locals 2

    .prologue
    .line 881
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090929

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public showDisconnectedToast(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, removedUserName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_0

    .line 889
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f090771

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method

.method public showUserMessage(ILjava/lang/String;)V
    .locals 16
    .parameter "msgType"
    .parameter "number"

    .prologue
    .line 946
    const/4 v13, -0x1

    .line 947
    .local v13, resid:I
    const-string v11, ""

    .line 948
    .local v11, error:Ljava/lang/String;
    const-string v12, ""

    .line 950
    .local v12, message:Ljava/lang/String;
    const/16 v3, 0x193

    .line 951
    .local v3, FORBIDDEN:I
    const/16 v5, 0x194

    .line 952
    .local v5, NOT_FOUND:I
    const/16 v7, 0x198

    .line 953
    .local v7, REQUEST_TIMEOUT:I
    const/16 v10, 0x1e0

    .line 954
    .local v10, TEMPORARILY_UNAVAILABLE:I
    const/16 v1, 0x1e6

    .line 955
    .local v1, BUSY_HERE:I
    const/16 v6, 0x1f3

    .line 956
    .local v6, NOT_REACHABLE:I
    const/16 v8, 0x1f4

    .line 957
    .local v8, SERVER_INTERNAL_ERROR:I
    const/16 v9, 0x1f7

    .line 958
    .local v9, SERVICE_UNAVAILABLE:I
    const/16 v2, 0x25b

    .line 959
    .local v2, DECLINE:I
    const/16 v4, 0x25e

    .line 961
    .local v4, NOT_ACCEPTABLE:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[showUserMessage] number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  msgType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 963
    sparse-switch p1, :sswitch_data_0

    .line 1018
    :goto_0
    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 1029
    :goto_1
    return-void

    .line 965
    :sswitch_0
    const-string v11, "(403)"

    .line 966
    const v13, 0x7f090878

    .line 967
    goto :goto_0

    .line 970
    :sswitch_1
    const-string v11, "(404)"

    .line 971
    const v13, 0x7f090889

    .line 972
    goto :goto_0

    .line 975
    :sswitch_2
    const-string v11, "(408)"

    .line 976
    const v13, 0x7f09089f

    .line 977
    goto :goto_0

    .line 980
    :sswitch_3
    const-string v11, "(480)"

    .line 981
    const v13, 0x7f09087d

    .line 982
    goto :goto_0

    .line 985
    :sswitch_4
    const-string v11, "(486)"

    .line 986
    const v13, 0x7f0908a1

    .line 987
    goto :goto_0

    .line 990
    :sswitch_5
    const-string v11, "(499)"

    .line 991
    const v13, 0x7f0908a2

    .line 992
    goto :goto_0

    .line 995
    :sswitch_6
    const-string v11, "(500)"

    .line 996
    const v13, 0x7f09089f

    .line 997
    goto :goto_0

    .line 1000
    :sswitch_7
    const-string v11, "(503)"

    .line 1001
    const v13, 0x7f0908a0

    .line 1002
    goto :goto_0

    .line 1005
    :sswitch_8
    const-string v11, "(603)"

    .line 1006
    const v13, 0x7f090886

    .line 1007
    goto :goto_0

    .line 1010
    :sswitch_9
    const-string v11, "(606)"

    .line 1011
    const v13, 0x7f090890

    .line 1012
    goto :goto_0

    .line 1022
    :cond_0
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1028
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/IMSConferenceCallMgr;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 1025
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 963
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x1e6 -> :sswitch_4
        0x1f3 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f7 -> :sswitch_7
        0x25b -> :sswitch_8
        0x25e -> :sswitch_9
    .end sparse-switch
.end method

.method startTimer(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] startTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 1069
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 2

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] stopTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 1078
    :cond_0
    return-void
.end method

.method public update(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .parameter "conn"

    .prologue
    .line 772
    if-nez p1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v15

    .line 776
    .local v15, selfNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    .line 777
    .local v3, callDetails:Lcom/android/internal/telephony/CallDetails;
    const-string v9, "participantlist"

    .line 778
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 779
    .local v13, participantlist:Ljava/lang/String;
    const-string v11, ""

    .line 780
    .local v11, newParticipants:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] participantlist "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 782
    if-eqz v13, :cond_a

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 783
    const-string v19, "\\,"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, dialStrings:[Ljava/lang/String;
    const-string v12, ""

    .line 785
    .local v12, number:Ljava/lang/String;
    array-length v10, v4

    .line 786
    .local v10, nCount:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v10, v0, :cond_0

    .line 789
    const/4 v6, -0x1

    .line 790
    .local v6, idx:I
    const/4 v5, 0x0

    .line 791
    .local v5, endIdx:I
    const/16 v18, 0x0

    .line 792
    .local v18, status:I
    const-string v16, ""

    .line 793
    .local v16, sip_error:Ljava/lang/String;
    const-string v14, ""

    .line 795
    .local v14, realNum:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    if-ge v7, v10, :cond_9

    .line 796
    aget-object v19, v4, v7

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 797
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    .line 800
    aget-object v19, v4, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    .line 801
    aget-object v19, v4, v7

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 802
    aget-object v19, v4, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 804
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] dialStrings[ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;

    move-result-object v17

    .line 807
    .local v17, state:Lcom/android/phone/IMSConferenceCallMgr$State;
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isINVALID()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 808
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] ignored INVALID  orginal status is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 795
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 812
    :cond_3
    const/4 v6, -0x1

    .line 813
    const-string v16, ""

    .line 814
    const-string v14, ""

    .line 816
    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 817
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_8

    .line 818
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 819
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 824
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 825
    if-nez v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 826
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v8

    .line 828
    .local v8, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v8, :cond_5

    .line 829
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-eqz v19, :cond_5

    iget-object v0, v8, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 830
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/IMSConferenceCallMgr;->showUserMessage(ILjava/lang/String;)V

    .line 836
    .end local v8           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 837
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 840
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-nez v19, :cond_2

    .line 841
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 842
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 843
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 821
    :cond_8
    move-object v14, v12

    goto :goto_3

    .line 846
    .end local v17           #state:Lcom/android/phone/IMSConferenceCallMgr$State;
    :cond_9
    invoke-virtual {v3, v9, v11}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    .end local v4           #dialStrings:[Ljava/lang/String;
    .end local v5           #endIdx:I
    .end local v6           #idx:I
    .end local v7           #index:I
    .end local v10           #nCount:I
    .end local v12           #number:Ljava/lang/String;
    .end local v14           #realNum:Ljava/lang/String;
    .end local v16           #sip_error:Ljava/lang/String;
    .end local v18           #status:I
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] Participant count is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateElapsedTime(J)V
    .locals 6
    .parameter "timeElapsed"

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-nez v2, :cond_2

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    .line 1058
    :cond_1
    return-void

    .line 1050
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 1051
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    :cond_4
    iget-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    .line 1053
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-eqz v2, :cond_3

    .line 1054
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    goto :goto_0
.end method

.method public updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "info"
    .parameter "state"
    .parameter "conn"

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v0, "[updateParticipant] fail  info is not valid "

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "number"
    .parameter "state"
    .parameter "conn"

    .prologue
    .line 390
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, selfNumber:Ljava/lang/String;
    const/4 v0, -0x1

    .line 393
    .local v0, idx:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 394
    :cond_0
    const-string v3, "[updateParticipant] fail  number is not valid "

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string v3, "service_mirrorcall"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->broadcastUWAConfState(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;)V

    .line 401
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateParticipant] number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 404
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez v1, :cond_5

    .line 405
    const-string v3, "*23#"

    invoke-direct {p0, v3, p1}, Lcom/android/phone/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 407
    if-nez v1, :cond_5

    .line 408
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateParticipant] already removed number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 418
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 420
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->showDisconnectedToast(Ljava/lang/String;)V

    .line 423
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 443
    :goto_1
    const-string v3, "updateParticipant"

    invoke-virtual {v1, v3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_7
    if-eqz p3, :cond_9

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 427
    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 428
    iget-wide v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    .line 429
    invoke-virtual {p0, v1, p3}, Lcom/android/phone/IMSConferenceCallMgr;->disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 431
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 434
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 437
    :cond_a
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 438
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 440
    :cond_b
    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method
