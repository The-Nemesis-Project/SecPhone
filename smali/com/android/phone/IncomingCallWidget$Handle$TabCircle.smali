.class public Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;
.super Landroid/view/View;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabCircle"
.end annotation


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRadius:F

.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method public constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;F)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "radius"

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    .line 1291
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1292
    invoke-direct {p0, p3}, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->init(F)V

    .line 1293
    return-void
.end method

.method private init(F)V
    .locals 7
    .parameter "radius"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x100

    const/high16 v4, 0x4130

    const/high16 v3, 0x40c0

    const/high16 v2, 0x3f80

    .line 1301
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    .line 1302
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1303
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mCircleColor:I
    invoke-static {v1}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1300(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1305
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1306
    const-string v0, "support_kk_vt_tablet_multiwindow"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1307
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1308
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1330
    :goto_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_9

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1337
    :goto_1
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v6, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1340
    :cond_1
    iput p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    .line 1341
    return-void

    .line 1310
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1312
    :cond_3
    const-string v0, "phone_kk_tablet_gui"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1314
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1318
    :cond_5
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 1321
    :cond_6
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    #getter for: Lcom/android/phone/IncomingCallWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget;->access$900(Lcom/android/phone/IncomingCallWidget;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    .line 1323
    :cond_7
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 1325
    :cond_8
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 1335
    :cond_9
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1379
    const-string v1, "IncomingCallWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchGenericMotionEvent : event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1381
    .local v0, action:I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1384
    :cond_0
    const/4 v1, 0x0

    .line 1386
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isInCircle(FF)Z
    .locals 18
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1347
    const-wide v1, 0x3ff4cccccccccccdL

    .line 1349
    .local v1, ACTIVE_RATIO:D
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 1350
    .local v13, tmpPos:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1352
    const/4 v14, 0x0

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v7, v14

    .line 1353
    .local v7, pivotX:F
    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #getter for: Lcom/android/phone/IncomingCallWidget$Handle;->mTopOffset:I
    invoke-static {v15}, Lcom/android/phone/IncomingCallWidget$Handle;->access$1400(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v8, v14

    .line 1355
    .local v8, pivotY:F
    sub-float v14, p1, v7

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 1356
    .local v3, dx:D
    sub-float v14, p2, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 1358
    .local v5, dy:D
    mul-double v14, v3, v3

    mul-double v16, v5, v5

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1360
    .local v9, posLength:D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    float-to-double v14, v14

    div-double v11, v9, v14

    .line 1362
    .local v11, ratio:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v14, v14, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isInCircle - x : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " y : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratio : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 1364
    const-wide v14, 0x3ff4cccccccccccdL

    cmpg-double v14, v11, v14

    if-gez v14, :cond_0

    .line 1365
    const/4 v14, 0x1

    .line 1367
    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1373
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mRadius:F

    iget-object v3, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1374
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$TabCircle;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1298
    :cond_0
    return-void
.end method
