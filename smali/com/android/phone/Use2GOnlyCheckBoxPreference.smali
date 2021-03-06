.class public Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;,
        Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mActivePhone:I

.field private mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

.field public mHaveMultiSIM:Z

.field private mIsOtherPhone3G:Z

.field public mNetworkvalue:I

.field public mNetworkvalue2:I

.field private mOtherHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mPhone_call:Z

.field private mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 47
    iput-boolean v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    .line 51
    iput v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue:I

    .line 54
    iput v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    .line 57
    iput-boolean v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone_call:Z

    .line 70
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn_duos_gsm_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    sget v0, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    :goto_0
    new-instance v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 84
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 86
    return-void

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getDefaultNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mActivePhone:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    return p1
.end method

.method private getDefaultNetworkMode()I
    .locals 4

    .prologue
    .line 115
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, mode:I
    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultNetworkMode: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0
.end method


# virtual methods
.method public checkNetworkValue2()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    .line 146
    const-string v0, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed mNetworkvalue2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public checkPreferredNetworkType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v2, "first  Activephone  mHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mActivePhone:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 130
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    .line 131
    iget-boolean v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mOtherHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v2, "first  Otherphone  mHandler"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 134
    iget v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mActivePhone:I

    if-eq v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mOtherHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0           #simSlotNum:I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 153
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 155
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 156
    .local v0, networkType:I
    :goto_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    iput v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue:I

    .line 160
    iput-boolean v6, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone_call:Z

    .line 162
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Other SIM] 3G="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    if-ne v3, v2, :cond_2

    .line 164
    iput v6, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    .line 168
    :goto_1
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetworkvalue2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNetworkvalue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    .local v1, simSlotNum:I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 174
    iput-boolean v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone_call:Z

    .line 175
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2G Checkbox click during calling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone_call:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 155
    .end local v0           #networkType:I
    .end local v1           #simSlotNum:I
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->getDefaultNetworkMode()I

    move-result v0

    goto/16 :goto_0

    .line 166
    .restart local v0       #networkType:I
    :cond_2
    iput v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkvalue2:I

    goto/16 :goto_1

    .line 178
    .restart local v1       #simSlotNum:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone_call:Z

    if-nez v3, :cond_4

    .line 179
    iget-boolean v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    if-ne v3, v2, :cond_5

    if-nez v0, :cond_5

    iget-boolean v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    if-ne v3, v2, :cond_5

    .line 180
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALL 3G="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1           #simSlotNum:I
    :cond_4
    :goto_3
    return-void

    .line 182
    .restart local v1       #simSlotNum:I
    :cond_5
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT ALL 3G="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsOtherPhone3G:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 193
    .end local v1           #simSlotNum:I
    :cond_6
    const-string v3, "Use2GOnlyCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    const-string v3, "kor_phone_via_chip"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_7
    iget-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3
.end method

.method public setUse2GOnlyCheckBoxPreference(I)V
    .locals 5
    .parameter "activePhone"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    .line 92
    iput p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mActivePhone:I

    .line 93
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 98
    iget-boolean v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 99
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mOtherHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

    .line 111
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->checkPreferredNetworkType()V

    .line 112
    return-void

    .line 102
    .end local v0           #simSlotNum:I
    :cond_2
    iput-boolean v4, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHaveMultiSIM:Z

    .line 103
    iput p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mActivePhone:I

    .line 104
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v4

    .line 105
    const/4 v0, 0x1

    .restart local v0       #simSlotNum:I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    aput-object v3, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_3
    new-instance v1, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    .line 109
    iput-object v3, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mOtherHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler2;

    goto :goto_1
.end method
