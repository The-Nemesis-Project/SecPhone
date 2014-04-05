.class public Lcom/android/phone/common/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final SIMId:I

.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final dormantset:I

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final remindme:I

.field public serviceType:I

.field public final sharedFilePath:Ljava/lang/String;

.field public final simnum:I

.field public final timestamp:J

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "simnum"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 407
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 408
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 409
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 410
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 411
    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 412
    iput-wide p7, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 413
    const-wide/16 v0, 0x3e8

    div-long v0, p9, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 414
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 415
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 416
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 417
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 418
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;II)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "simnum"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 287
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 288
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 289
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 290
    iput-wide p7, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 291
    const-wide/16 v0, 0x3e8

    div-long v0, p9, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 292
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 295
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 296
    iput p13, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 297
    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 107
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 109
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 110
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 111
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 112
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 113
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 114
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 116
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 117
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 182
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 183
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 184
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 185
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 186
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 187
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 188
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 190
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 191
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 192
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 193
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 194
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 338
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 339
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 340
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 341
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 342
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 343
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 344
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 345
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 346
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 347
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMId"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 234
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 235
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 236
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 237
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 238
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 239
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 240
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 241
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 242
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 243
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 244
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 245
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;ILandroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "SIMId"
    .parameter "dbUri"

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 363
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 364
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 365
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 366
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 367
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 368
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 369
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 370
    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 371
    iput-object p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 377
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "dbUri"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 157
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 158
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 159
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 160
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 161
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 163
    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 164
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 166
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 167
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 168
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 131
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 132
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 133
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 134
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 135
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 136
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 137
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 138
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 139
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 140
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 141
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V
    .locals 0
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "serviceType"

    .prologue
    .line 431
    invoke-direct/range {p0 .. p10}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 432
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 259
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 260
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 261
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 262
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 263
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 264
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 265
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 266
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 267
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 268
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 269
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"
    .parameter "SIMId"

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 312
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 313
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 314
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 315
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 316
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 317
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 318
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 321
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 322
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 324
    iput p13, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "sharedFilePath"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 209
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 210
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 211
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 212
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 213
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 214
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 216
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 218
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 219
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 221
    return-void
.end method
