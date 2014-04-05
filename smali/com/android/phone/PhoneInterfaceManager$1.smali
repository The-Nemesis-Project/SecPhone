.class Lcom/android/phone/PhoneInterfaceManager$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 2040
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 2202
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2043
    :sswitch_0
    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2049
    :goto_1
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phone Info got: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v10, v10, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2046
    :cond_1
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, v8, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 2056
    :sswitch_1
    const/4 v5, 0x0

    .line 2059
    .local v5, response:Landroid/os/Message;
    const-string v8, "ims_volte"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "common_ims"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2060
    :cond_2
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got EVENT_ISIM_AUTHENTICATION_DONE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_3

    .line 2064
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "msg.obj is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2067
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2069
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 2070
    .local v2, dataArr:[B
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_4

    .line 2072
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ar.result is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2077
    :cond_4
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v8, :cond_6

    .line 2079
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2080
    .local v6, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v2, v6, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .end local v2           #dataArr:[B
    check-cast v2, [B

    .line 2100
    .end local v6           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v2       #dataArr:[B
    :cond_5
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.internal.ims.ISIMAuthParams"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2101
    .local v4, newIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 2102
    .local v3, eventType:Ljava/lang/String;
    const-string v3, "REGISTER"

    .line 2103
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evenType====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataArr====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const-string v8, "REGISTER"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2106
    const-string v8, "eventType"

    invoke-virtual {v4, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2110
    :goto_3
    const-string v8, "data"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2111
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    if-eqz v8, :cond_9

    .line 2113
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "mApplication.mContext is not null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2122
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ISIM >>> [ICCFileHandler] Got the ICCIOResult"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ISIM >>> [ICCFileHandler] Sending to ICCRecords"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2082
    .end local v3           #eventType:Ljava/lang/String;
    .end local v4           #newIntent:Landroid/content/Intent;
    :cond_6
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 2084
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2085
    .local v6, result:Ljava/lang/String;
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS_AKA result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/4 v7, 0x0

    .line 2087
    .local v7, strAkaResult:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 2088
    const-string v8, "00"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2089
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "IMS_AKA result = is success appending DB "

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2091
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_2

    .line 2094
    :cond_7
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "IMS_AKA result = is failure appending DC "

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2096
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_2

    .line 2108
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #strAkaResult:Ljava/lang/String;
    .restart local v3       #eventType:Ljava/lang/String;
    .restart local v4       #newIntent:Landroid/content/Intent;
    :cond_8
    const-string v8, "eventType"

    invoke-virtual {v4, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2118
    :cond_9
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "mApplication.mContext is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2134
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #dataArr:[B
    .end local v3           #eventType:Ljava/lang/String;
    .end local v4           #newIntent:Landroid/content/Intent;
    .end local v5           #response:Landroid/os/Message;
    :sswitch_2
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got EVENT_ISIM_AUTHENTICATION_DONE_MEDIASHARE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_a

    .line 2138
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "msg.obj is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2141
    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2143
    .local v1, arResult:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 2144
    .restart local v2       #dataArr:[B
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_b

    .line 2146
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ar.result is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2151
    :cond_b
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    if-eqz v8, :cond_d

    .line 2153
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2154
    .local v6, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v2, v6, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .end local v2           #dataArr:[B
    check-cast v2, [B

    .line 2174
    .end local v6           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v2       #dataArr:[B
    :cond_c
    :goto_4
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.phone.ISIMAuthParams"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    .restart local v4       #newIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 2176
    .restart local v3       #eventType:Ljava/lang/String;
    const-string v3, "REGISTER"

    .line 2177
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evenType====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataArr====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const-string v8, "REGISTER"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2180
    const-string v8, "eventType"

    invoke-virtual {v4, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2184
    :goto_5
    const-string v8, "data"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2185
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    if-eqz v8, :cond_10

    .line 2187
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "mApplication.mContext is not null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$1;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v8, v8, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2196
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ISIM >>> [ICCFileHandler] Got the ICCIOResult"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "ISIM >>> [ICCFileHandler] Sending to ICCRecords"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2156
    .end local v3           #eventType:Ljava/lang/String;
    .end local v4           #newIntent:Landroid/content/Intent;
    :cond_d
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 2158
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2159
    .local v6, result:Ljava/lang/String;
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS_AKA result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/4 v7, 0x0

    .line 2161
    .restart local v7       #strAkaResult:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 2162
    const-string v8, "00"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2163
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "IMS_AKA result = is success appending DB "

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2165
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_4

    .line 2168
    :cond_e
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "IMS_AKA result = is failure appending DC "

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2170
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_4

    .line 2182
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #strAkaResult:Ljava/lang/String;
    .restart local v3       #eventType:Ljava/lang/String;
    .restart local v4       #newIntent:Landroid/content/Intent;
    :cond_f
    const-string v8, "eventType"

    invoke-virtual {v4, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5

    .line 2192
    :cond_10
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "mApplication.mContext is  null====="

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2040
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x16 -> :sswitch_0
        0x192 -> :sswitch_2
    .end sparse-switch
.end method
