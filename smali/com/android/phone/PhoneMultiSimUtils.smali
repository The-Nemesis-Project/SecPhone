.class public Lcom/android/phone/PhoneMultiSimUtils;
.super Ljava/lang/Object;
.source "PhoneMultiSimUtils.java"


# static fields
.field private static ONE_HAND_DIRECTION:Ljava/lang/String;

.field private static ONE_HAND_ENABLED:Ljava/lang/String;

.field private static mIsOnehandOn:Z

.field private static mSimMaster:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    .line 20
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 22
    const-string v0, "onehand_direction"

    sput-object v0, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_DIRECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallControllerSimIcon(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 119
    .local v1, simIcon:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 136
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 167
    const v1, 0x7f0202e4

    .line 172
    :goto_1
    return v1

    .line 122
    :cond_0
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 123
    sget-object v3, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f0202e4

    .line 140
    goto :goto_1

    .line 142
    :pswitch_1
    const v1, 0x7f0202e5

    .line 143
    goto :goto_1

    .line 145
    :pswitch_2
    const v1, 0x7f0202e6

    .line 146
    goto :goto_1

    .line 148
    :pswitch_3
    const v1, 0x7f0202ec

    .line 149
    goto :goto_1

    .line 151
    :pswitch_4
    const v1, 0x7f0202ea

    .line 152
    goto :goto_1

    .line 154
    :pswitch_5
    const v1, 0x7f0202e9

    .line 155
    goto :goto_1

    .line 157
    :pswitch_6
    const v1, 0x7f0202e8

    .line 158
    goto :goto_1

    .line 160
    :pswitch_7
    const v1, 0x7f0202eb

    .line 161
    goto :goto_1

    .line 163
    :pswitch_8
    const v1, 0x7f0202e7

    .line 164
    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getCallSimIcon(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 177
    move-object v1, p0

    .line 178
    .local v1, mContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 179
    .local v3, simIconIdx:I
    const/4 v2, 0x0

    .line 180
    .local v2, simIcon:I
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    :cond_0
    sput-boolean v4, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    .line 183
    if-ne p1, v5, :cond_2

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 199
    :goto_0
    const-string v4, "feature_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    if-eqz v4, :cond_4

    .line 201
    packed-switch v3, :pswitch_data_0

    .line 239
    const v2, 0x7f020041

    .line 287
    :cond_1
    :goto_1
    return v2

    .line 186
    :cond_2
    :try_start_1
    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 187
    sget-object v4, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f020068

    .line 204
    goto :goto_1

    .line 207
    :pswitch_1
    const v2, 0x7f02006a

    .line 208
    goto :goto_1

    .line 211
    :pswitch_2
    const v2, 0x7f02006c

    .line 212
    goto :goto_1

    .line 215
    :pswitch_3
    const v2, 0x7f020078

    .line 216
    goto :goto_1

    .line 219
    :pswitch_4
    const v2, 0x7f020074

    .line 220
    goto :goto_1

    .line 223
    :pswitch_5
    const v2, 0x7f020072

    .line 224
    goto :goto_1

    .line 227
    :pswitch_6
    const v2, 0x7f020070

    .line 228
    goto :goto_1

    .line 231
    :pswitch_7
    const v2, 0x7f020076

    .line 232
    goto :goto_1

    .line 235
    :pswitch_8
    const v2, 0x7f02006e

    .line 236
    goto :goto_1

    .line 243
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 281
    const v2, 0x7f020041

    goto :goto_1

    .line 245
    :pswitch_9
    const v2, 0x7f020041

    .line 246
    goto :goto_1

    .line 249
    :pswitch_a
    const v2, 0x7f020043

    .line 250
    goto :goto_1

    .line 253
    :pswitch_b
    const v2, 0x7f020047

    .line 254
    goto :goto_1

    .line 257
    :pswitch_c
    const v2, 0x7f020053

    .line 258
    goto :goto_1

    .line 261
    :pswitch_d
    const v2, 0x7f02004f

    .line 262
    goto :goto_1

    .line 265
    :pswitch_e
    const v2, 0x7f02004d

    .line 266
    goto :goto_1

    .line 269
    :pswitch_f
    const v2, 0x7f02004b

    .line 270
    goto :goto_1

    .line 273
    :pswitch_10
    const v2, 0x7f020051

    .line 274
    goto :goto_1

    .line 277
    :pswitch_11
    const v2, 0x7f020049

    .line 278
    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getCallSimIconDim(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 292
    move-object v1, p0

    .line 293
    .local v1, mContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 294
    .local v3, simIconIdx:I
    const/4 v2, 0x0

    .line 295
    .local v2, simIcon:I
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/PhoneMultiSimUtils;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    :cond_0
    sput-boolean v4, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    .line 298
    if-ne p1, v5, :cond_2

    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 314
    :goto_0
    const-string v4, "feature_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/phone/PhoneMultiSimUtils;->mIsOnehandOn:Z

    if-eqz v4, :cond_4

    .line 316
    packed-switch v3, :pswitch_data_0

    .line 354
    const v2, 0x7f020069

    .line 402
    :cond_1
    :goto_1
    return v2

    .line 301
    :cond_2
    :try_start_1
    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 302
    sget-object v4, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f020069

    .line 319
    goto :goto_1

    .line 322
    :pswitch_1
    const v2, 0x7f02006b

    .line 323
    goto :goto_1

    .line 326
    :pswitch_2
    const v2, 0x7f02006d

    .line 327
    goto :goto_1

    .line 330
    :pswitch_3
    const v2, 0x7f020079

    .line 331
    goto :goto_1

    .line 334
    :pswitch_4
    const v2, 0x7f020075

    .line 335
    goto :goto_1

    .line 338
    :pswitch_5
    const v2, 0x7f020073

    .line 339
    goto :goto_1

    .line 342
    :pswitch_6
    const v2, 0x7f020071

    .line 343
    goto :goto_1

    .line 346
    :pswitch_7
    const v2, 0x7f020077

    .line 347
    goto :goto_1

    .line 350
    :pswitch_8
    const v2, 0x7f02006f

    .line 351
    goto :goto_1

    .line 358
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 396
    const v2, 0x7f020042

    goto :goto_1

    .line 360
    :pswitch_9
    const v2, 0x7f020042

    .line 361
    goto :goto_1

    .line 364
    :pswitch_a
    const v2, 0x7f020044

    .line 365
    goto :goto_1

    .line 368
    :pswitch_b
    const v2, 0x7f020048

    .line 369
    goto :goto_1

    .line 372
    :pswitch_c
    const v2, 0x7f020054

    .line 373
    goto :goto_1

    .line 376
    :pswitch_d
    const v2, 0x7f020050

    .line 377
    goto :goto_1

    .line 380
    :pswitch_e
    const v2, 0x7f02004e

    .line 381
    goto :goto_1

    .line 384
    :pswitch_f
    const v2, 0x7f02004c

    .line 385
    goto :goto_1

    .line 388
    :pswitch_10
    const v2, 0x7f020052

    .line 389
    goto :goto_1

    .line 392
    :pswitch_11
    const v2, 0x7f02004a

    .line 393
    goto :goto_1

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 358
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, simName:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/android/phone/PhoneMultiSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 3

    .prologue
    .line 28
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, mSIMM:Ljava/lang/String;
    const/4 v1, 0x1

    .line 30
    .local v1, vReturn:Z
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
