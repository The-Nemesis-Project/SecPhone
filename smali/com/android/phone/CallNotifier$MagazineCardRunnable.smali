.class Lcom/android/phone/CallNotifier$MagazineCardRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagazineCardRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "date"

    .prologue
    .line 5927
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5928
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->c:Lcom/android/internal/telephony/Connection;

    .line 5929
    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->date:J

    .line 5930
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    const-string v19, "Add view button clicked. Adding card"

    const/16 v20, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v18 .. v20}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->c:Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->date:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 5940
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 5941
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "time_12_24"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 5942
    .local v17, time_format:Ljava/lang/String;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "HH:mm"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5943
    .local v16, sdf_24:Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v18, "hh:mm a"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5944
    .local v15, sdf_12:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->date:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5946
    .local v6, dd:Ljava/util/Date;
    const-string v18, "24"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 5947
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 5951
    .local v10, mCalledTime:Ljava/lang/String;
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 5952
    .local v11, name:Ljava/lang/String;
    iget-object v12, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 5954
    .local v12, number:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 5955
    move-object v11, v12

    .line 5957
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "magazinecardservice"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/magazinecard/MagazineCardManager;

    .line 5958
    .local v7, gcm:Lcom/samsung/android/magazinecard/MagazineCardManager;
    const/4 v4, 0x0

    .line 5960
    .local v4, card:Lcom/samsung/android/magazinecard/MagazineCardInfo;
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f040085

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5964
    .local v14, remoteViews:Landroid/widget/RemoteViews;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "com.android.phone.action.RECENT_CALLS"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5965
    .local v8, i:Landroid/content/Intent;
    const/high16 v18, 0x3000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5966
    const-string v18, "action"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Selected card ID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)I

    move-result v19

    const/high16 v20, 0x800

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 5970
    .local v13, pi:Landroid/app/PendingIntent;
    new-instance v3, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;-><init>(Landroid/content/Context;)V

    .line 5971
    .local v3, builder:Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->build()Lcom/samsung/android/magazinecard/MagazineCardInfo;

    move-result-object v4

    .line 5974
    const v18, 0x7f0a0259

    const v19, 0x7f020700

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 5975
    const v18, 0x7f0a0046

    move/from16 v0, v18

    invoke-virtual {v14, v0, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5977
    const v18, 0x7f0a025a

    move/from16 v0, v18

    invoke-virtual {v14, v0, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isCardExist(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 5981
    invoke-virtual {v7, v4}, Lcom/samsung/android/magazinecard/MagazineCardManager;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    .line 5985
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Card added. ID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$2500(Lcom/android/phone/CallNotifier;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v18 .. v20}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 5986
    return-void

    .line 5949
    .end local v3           #builder:Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .end local v4           #card:Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .end local v7           #gcm:Lcom/samsung/android/magazinecard/MagazineCardManager;
    .end local v8           #i:Landroid/content/Intent;
    .end local v10           #mCalledTime:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #pi:Landroid/app/PendingIntent;
    .end local v14           #remoteViews:Landroid/widget/RemoteViews;
    :cond_1
    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #mCalledTime:Ljava/lang/String;
    goto/16 :goto_0

    .line 5983
    .restart local v3       #builder:Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .restart local v4       #card:Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .restart local v7       #gcm:Lcom/samsung/android/magazinecard/MagazineCardManager;
    .restart local v8       #i:Landroid/content/Intent;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v13       #pi:Landroid/app/PendingIntent;
    .restart local v14       #remoteViews:Landroid/widget/RemoteViews;
    :cond_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/magazinecard/MagazineCardManager;->addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    goto :goto_1
.end method
